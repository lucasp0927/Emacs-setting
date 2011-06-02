;;autocomplete
(global-set-key [S-f5] 'auto-complete-mode)
(add-to-list 'load-path "~/.emacs.d/autocomplete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/autocomplete/dict/")
(ac-config-default)
(define-key ac-mode-map (kbd "M-/") 'auto-complete)
(ac-ropemacs-initialize)
(add-hook 'python-mode-hook
      (lambda ()
    (add-to-list 'ac-sources 'ac-source-ropemacs)))
;;hippie-expand 这个是 Emacs 自带的功能 (M-/)
;;(setq hippie-expand-try-functions-list 
;;      '(try-expand-dabbrev
;;	try-expand-dabbrev-visible
;;	try-expand-dabbrev-all-buffers
;;	try-expand-dabbrev-from-kill
;;	try-complete-file-name-partially
;;	try-complete-file-name
;;	try-expand-all-abbrevs
;;	try-expand-list
;;	try-expand-line
;;	try-complete-lisp-symbol-partially
;;	try-complete-lisp-symbol))
