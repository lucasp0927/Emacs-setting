(TeX-add-style-hook "article_code.tex"
 (lambda ()
    (TeX-run-style-hooks
     "listings"
     "xeCJK"
     "geometry"
     "float"
     "graphicx"
     "graphics"
     "bm"
     "amssymb"
     "amsmath"
     "fontspec"
     "latex2e"
     "art11"
     "article"
     "11pt"
     "a4paper")))

