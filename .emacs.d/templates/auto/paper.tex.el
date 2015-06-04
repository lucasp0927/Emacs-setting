(TeX-add-style-hook "paper.tex"
 (lambda ()
    (LaTeX-add-bibliographies
     "reference")
    (TeX-run-style-hooks
     "SIunits"
     "hyperref"
     "subfigure"
     "color"
     "verbatim"
     "subfig"
     "float"
     "graphicx"
     "graphics"
     "amsmath"
     "latex2e"
     "revtex4-110"
     "revtex4-1"
     "aps"
     "pra"
     "10pt"
     "twocolumn")))

