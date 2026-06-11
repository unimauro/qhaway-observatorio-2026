#!/usr/bin/env python3
"""
Preprocesa un Markdown para compilarlo a PDF con pandoc+xelatex:
  1. Renderiza cada bloque ```mermaid ... ``` a PNG via Kroki y lo reemplaza por una imagen.
  2. Sustituye glifos Unicode (emojis, flechas, simbolos) que las fuentes LaTeX base no tienen.

Uso: preprocess.py <src.md> <dst.md> <img_dir> [ancho_pct]
Requiere red (kroki.io). Si un diagrama falla, se conserva como bloque de codigo.
"""
import sys, os, re, zlib, base64, urllib.request

KROKI = os.environ.get("KROKI_URL", "https://kroki.io")

UNICODE = {
    "⚠️": "(!) ", "⚠": "(!) ",
    "✅": "[SI] ", "❌": "[NO] ", "⭐": "* ", "★": "* ", "☆": "* ",
    "🔵": "* ", "🟢": "* ", "🟡": "* ", "🔴": "* ", "🟠": "* ",
    "\U0001F4C1": "", "\U0001F680": "", "\U0001F4CA": "", "\U0001F9F8": "",
    "\U0001F52C": "", "\U0001F4CC": "", "\U0001F916": "", "\U0001F4E6": "",
    "\U0001F9E0": "", "\U0001F9F8": "", "\U0001F9EA": "", "\U0001F31F": "",
    "→": " -> ", "←": " <- ", "↔": " <-> ", "⇒": " => ",
    "≈": "~", "×": "x", "≥": ">=", "≤": "<=", "–": "-", "—": "--",
    "€": "EUR ", "“": '"', "”": '"', "‘": "'", "’": "'", "…": "...",
}


def render_mermaid(code: str, out_png: str) -> bool:
    enc = base64.urlsafe_b64encode(zlib.compress(code.encode("utf-8"), 9)).decode()
    url = f"{KROKI}/mermaid/png/{enc}"
    try:
        req = urllib.request.Request(url, headers={"User-Agent": "toki-build/1.0"})
        with urllib.request.urlopen(req, timeout=60) as r:
            data = r.read()
        if data and len(data) > 200:
            with open(out_png, "wb") as f:
                f.write(data)
            return True
    except Exception as e:
        print(f"  WARN kroki GET: {e}", file=sys.stderr)
    try:
        req = urllib.request.Request(
            f"{KROKI}/mermaid/png", data=code.encode("utf-8"),
            headers={"Content-Type": "text/plain", "User-Agent": "toki-build/1.0"},
            method="POST")
        with urllib.request.urlopen(req, timeout=60) as r:
            data = r.read()
        if data and len(data) > 200:
            with open(out_png, "wb") as f:
                f.write(data)
            return True
    except Exception as e:
        print(f"  WARN kroki POST: {e}", file=sys.stderr)
    return False


def main():
    src, dst, img_dir = sys.argv[1], sys.argv[2], sys.argv[3]
    width = sys.argv[4] if len(sys.argv) > 4 else "88"
    os.makedirs(img_dir, exist_ok=True)
    text = open(src, encoding="utf-8").read()

    fence = re.compile(r"```mermaid\s*\n(.*?)\n```", re.DOTALL)
    counter = {"i": 0, "ok": 0}

    def repl(m):
        counter["i"] += 1
        i = counter["i"]
        code = m.group(1)
        png = os.path.join(img_dir, f"diagram_{i:02d}.png")
        if render_mermaid(code, png):
            counter["ok"] += 1
            ap = os.path.abspath(png)
            return f"\n\n![]({ap}){{width={width}%}}\n\n"
        return m.group(0)

    text = fence.sub(repl, text)
    for k, v in UNICODE.items():
        text = text.replace(k, v)

    open(dst, "w", encoding="utf-8").write(text)
    print(f"  diagramas: {counter['ok']}/{counter['i']} renderizados -> {img_dir}")


if __name__ == "__main__":
    main()
