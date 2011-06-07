;;Lucas Peng's .emacs
;;All the elisp I collect
;;auctex 
;;auto-complete 
;;cdlatex 
;;cedet 
;;ecb 
;;org-mode 
;;python-mode 
;;session 
;;autopair
;;template
;;window-number
;;maxframe

;;(server-start) ;; able to use emacsclient to start emacs fast.
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/ecb-snap")
(add-to-list 'load-path "~/.emacs.d/org-mode")
(add-to-list 'load-path "~/.emacs.d/custom")
;(add-to-list 'load-path "~/.emacs.d/w3m")
;; (load "~/.emacs.d/ess-5.12/lisp/ess-site")
(load "emacs_cedet")
(load "emacs_ecb")
;;(if (and (fboundp 'daemonp) (daemonp))
;;    (add-hook 'after-make-frame-functions
;;	      (lambda (frame)
;;		(with-selected-frame frame
;; no need to use maxframe if -mm is add to emacs command.
;;		  (load "emacs_max")
		  (load "emacs_look")
;;		  )))
;;	      (load "emacs_max")
;;		  (load "emacs_look")

;;)

(load "emacs_misc")
(load "emacs_org")
(load "emacs_snippet")
(load "emacs_latex")
(load "emacs_autocomplete")
;;(load "emacs_verilog")
(load "emacs_python")
;(require 'w3m-load)
;(setq w3m-default-display-inline-images t)
;(setq w3m-use-cookies t)

(require 'undo-tree)
;;Session and desktop  need to put at last
;;使用了这个扩展之后，你上次离开 Emacs 时的全局变量 (kill-ring，命令记录……)，局部变量，寄存器，打开的文件，修改过的文件和最后修改的位置，…… 全部都会被记录下来。 
; (require 'session)
 ;(add-hook 'after-init-hook 'session-initialize)
;;(load "desktop") 
;;(desktop-load-default) 
;;(desktop-read)

;; If not on AC power line, then display battery status on the mode line
;;(and (require 'battery nil t)
;;     (functionp battery-status-function)
;;     (or (equal (cdr (assoc ?L (funcall battery-status-function))) "on-line")
;;         (display-battery-mode)))

;; enable narrow
(put 'narrow-to-region 'disabled nil)

