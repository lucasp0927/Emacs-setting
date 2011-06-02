;;latex
;; 當游標移到畫面下面的時候，讓 emacs 一次只往下移一行，而不是一次移半個畫面
(setq scroll-step 1)
;(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)
(load "~/.emacs.d/auctex.el" nil t t)
(load "~/.emacs.d/preview-latex.el" nil t t)

;;template
(require 'template)
(template-initialize)
