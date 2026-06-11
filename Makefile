.PHONY: pdf clean

pdf:
	./scripts/build_pdf.sh

clean:
	rm -f .build_tmp.md
	rm -rf .build_diagrams
