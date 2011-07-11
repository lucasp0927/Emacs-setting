
;;latex
;; 當游標移到畫面下面的時候，讓 emacs 一次只往下移一行，而不是一次移半個畫面
(setq scroll-step 1)
;(load "auctex.el" nil t t)
;(load "preview-latex.el" nil t t)
(load "~/.emacs.d/auctex.el" nil t t)
(load "~/.emacs.d/preview-latex.el" nil t t)
;;(load "~/.emacs.d/auctex-11.86/auctex.el" nil t t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)

;;template
(require 'template)
(template-initialize)

(autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
(autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(add-hook 'LaTeX-mode-hook (lambda ()
(TeX-fold-mode 1)))

;;table
;;(autoload 'table-insert "table" "WYGIWYS table editor")

;;xelatex
   (add-hook 'LaTeX-mode-hook (lambda()
   (add-to-list 'TeX-command-list '("XeLaTeX" "xelatex %(mode) %t" TeX-run-TeX nil  (latex-mode) ))
    (setq TeX-command-default "XeLaTeX")
    (setq TeX-save-query  nil )
    (setq TeX-show-compilation t)
    (setq TeX-PDF-mode t)
             ))
;; Viewer
;; (setq TeX-view-program-list
;;       '(("Okular" "okular --unique %o")))
(setq TeX-view-program-list
      '(("Evince" "evince %o")))
(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (setq TeX-view-program-selection '((output-pdf "Evince")
					       (output-dvi "Evince")))))

(require 'tex-site)
(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase Mode" t)
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
;; (add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
 
(setq LaTeX-eqnarray-label "eq"
LaTeX-equation-label "eq"
LaTeX-figure-label "fig"
LaTeX-table-label "tab"
LaTeX-myChapter-label "chap"
TeX-auto-save t
TeX-newline-function 'reindent-then-newline-and-indent
TeX-parse-self t
TeX-style-path
'("style/" "auto/"
"/usr/share/emacs21/site-lisp/auctex/style/"
"/var/lib/auctex/emacs21/"
"/usr/local/share/emacs/site-lisp/auctex/style/")
LaTeX-section-hook
'(LaTeX-section-heading
LaTeX-section-title
LaTeX-section-toc
LaTeX-section-section
LaTeX-section-label))
