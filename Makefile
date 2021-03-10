.PHONY: usage abgabe abgabe-signiert abgabe-drucken pdf pdf-signiert default

usage:
	@echo ""
	@echo "Bitte gib eine Funktion an:"
	@echo ""
	@echo " make abgabe		--- Abgabefassung erstellen (Regelfall)"
	@echo ""
	@echo " make abgabe-drucken	--- Abgabefassung drucken"
	@echo " make abgabe-signiert	--- Abgabefassung erstellen, signieren, komprimieren"
	@echo ""
	@echo " make pdf		--- PDF erstellen"
	@echo " make pdf-signiert	--- PDF erstellen, signieren, signieren, komprimieren"
	@echo ""

run: abgabe

abgabe-signiert: pdf-signiert

abgabe-drucken: pdf
	lp arbeit.pdf

abgabe: pdf

pdf-signiert: pdf
	gpg --clearsign arbeit.pdf > arbeit.sig
	zip arbeit *.pdf *.bib *.sig

pdf:
	latexmk -pdf -bibtex "arbeit"
	latexmk -c

default: usage
