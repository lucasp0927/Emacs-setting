;;Org mode

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

(add-to-list 'load-path "~/.emacs.d/elpa/org-20120610")
(setq load-path (cons "~/.emacs.d/elpa/org-20120610" load-path))
(require 'org-publish)
 (setq org-export-with-LaTeX-fragments t)
;;    (require 'org-publish)
(setq org-publish-project-alist
'(("wiki"
:base-directory "~/WikiNotes/org/"
:base-extension "org"
:publishing-directory "~/WikiNotes/publish/"
:recursive t
:publishing-function org-publish-org-to-html
:section-numbers nil
:auto-preamble t
:table-of-contents nil
:style "<link rel='stylesheet' type='text/css' href='css/style.css' /><script type='text/javascript' src='js/jquery.js'></script><script type='text/javascript' src='js/toggle.js'></script>"
:style-include-default t
:author-info nil
:email-info nil
:creator-info nil
)
("wiki2"
:base-directory "~/WikiNotes/org/"
:base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
:publishing-directory "~/WikiNotes/publish/"
:recursive t
:publishing-function org-publish-attachment)
("website" :components ("wiki" "wiki2"))
))
;;(setq org-export-with-LaTeX-fragments 'dvipng)

(setq org-export-html-mathjax-options '(
(path "MathJax/MathJax.js")
(align "left")
(indent "2em")
(scale 100)
))

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









