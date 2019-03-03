
;;Org mode
(require 'org)
;;(require 'ox-bibtex)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)
;; (setq org-agenda-files (list "~/GTD-org/work.org"
;;                              "~/GTD-org/study.org"
;;                              "~/GTD-org/entertainment.org"
;;                              "~/GTD-org/home.org"))
;; (define-key global-map "\C-cc" 'org-capture)
;; (setq org-default-notes-file "~/GTD-org/inbox.org")
;; (setq org-refile-targets
;;       '((nil :maxlevel . 2)
;;         (org-agenda-files :maxlevel . 2)))
;; (add-to-list 'org-drawers "NOTES")
;;(setq org-latex-pdf-process '("texi2dvi -p -b -V %f"))
;; (setq org-latex-pdf-process (list "latexmk -pdf -f %f"))
(setq org-latex-pdf-process (quote ("pdflatex -interaction nonstopmode %f" "bibtex %b" "pdflatex -interaction nonstopmode %f" "pdflatex -interaction nonstopmode %f")))
;;(add-to-list 'load-path "/home/lucaspeng/.emacs.d/remember-2.0")
;;   (require 'remember-autoloads)
;;   (setq org-remember-templates
;;      '(("Tasks" ?t "* TODO %?\n  %i\n  %a" "/home/lucaspeng/homework/todo/todo.org")
;;        ))
;;   (setq remember-annotation-functions '(org-remember-annotation))
;;   (setq remember-handler-functions '(org-remember-handler))
;;   (eval-after-load 'remember
;;     '(add-hook 'remember-mode-hook 'org-remember-apply-template))
;;;; (org-remember-insinuate)
;;;;     (setq org-directory "~/homework/todo")
;;;;     (setq org-default-notes-file (concat org-directory "/todo.org"))

;;   (global-set-key (kbd "C-c r") 'remember)

;;(add-to-list 'load-path "~/.emacs.d/elpa/org-20140217")
;;(setq load-path (cons "~/.emacs.d/elpa/org-20140217" load-path))
;;(require 'org-publish)
;;(setq org-export-with-LaTeX-fragments t)
;; (setq org-publish-project-alist
;;       '(
;;         ("wikinotes"
;;          :base-directory "~/WikiNotes/org/" ;Wikinote part
;;          :base-extension "org"
;;          :publishing-directory "~/WikiNotes/publish/"
;;          :recursive t
;;          :publishing-function org-html-publish-to-html
;;          :section-numbers nil
;;          :auto-preamble t
;;          :table-of-contents nil
;;          :style "<link rel='stylesheet' type='text/css' href='css/style.css' /><script type='text/javascript' src='js/jquery.js'></script><script type='text/javascript' src='js/toggle.js'></script>"
;;          :style-include-default t
;;          :author-info t
;;          :email-info nil
;;          :creator-info t
;;          )
;;         ("org-static"
;;          :base-directory "~/WikiNotes/org"
;;          :base-extension "css\\|js\\|png\\|jpg\\|jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|img"
;;          :publishing-directory "~/WikiNotes/publish"
;;          :recursive t
;;          :publishing-function org-publish-attachment
;;          )
;;         ("lucas" :components ("wikinotes" "org-static"))
;;         ))

;; (setq org-export-html-mathjax-options '(
;;                                         (path "MathJax/MathJax.js")
;;                                         (align "left")
;;                                         (indent "2em")
;;                                         (scale 100)
;;                                         ))

;;(global-set-key (kbd "C-c a") 'org-agenda)                                       ;; (5)
;;   (setq org-todo-keywords '("TODO" "STARTED" "DONE"))                    ;; (6)
;;;;   (setq org-agenda-include-diary t)                                                ;; (7)
;;   (setq org-agenda-include-all-todo t)
;;(setq org-agenda-files (file-expand-wildcards "~/Dropbox/todo/*.org"))
;;
;;(setq org-agenda-custom-commands
;;'(("h" "HomeWorks"
;;((agenda "")
;;(tags "HOMEWORK")
;;(tags "STUDY")))))
