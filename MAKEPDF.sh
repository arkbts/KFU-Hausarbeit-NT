cd /Users/krause/OneDrive\ -\ Kibotos/Registratur/A/1\ Bildung/A12\ Studium_Formales/1\ Ev.Theologie/KFU/HA-NT-Synoptiker
latexmk -pdf -bibtex "arbeit"
open "arbeit.pdf"
latexmk -c
exit 0