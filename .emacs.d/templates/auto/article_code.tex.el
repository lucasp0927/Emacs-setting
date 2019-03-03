(TeX-add-style-hook
 "article_code.tex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=2cm")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "fontspec"
    "amsmath"
    "amssymb"
    "bm"
    "graphics"
    "graphicx"
    "float"
    "geometry"
    "xeCJK"
    "listings"))
 :latex)

