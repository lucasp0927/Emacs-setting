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
;; key bindings
(require 'package) (package-initialize)
(when (eq system-type 'darwin) ;; mac specific settings
 (setq mac-option-modifier 'alt)
 (setq mac-command-modifier 'meta)
 (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
; sane path
 (setq path "/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin")
(setenv "PATH" path)
 )
;;(server-start) ;; able to use emacsclient to start emacs fast.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/ecb-snap"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/org-mode"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/custom"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/go-mode"))
(require 'julia-mode)
(require 'go-mode-load)
;;(load "pandoc-mode")
;(add-to-list 'load-path "~/.emacs.d/w3m")
;; (load "~/.emacs.d/ess-5.12/lisp/ess-site")
;;(load "emacs_cedet")
;;(load "emacs_ecb")
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
;;(load "emacs_autocomplete")
;;(load "emacs_verilog")
;;(when (eq system-type 'gnu/linux) ;; linux specific settings
  (load "emacs_python")
;;)
;(require 'w3m-load)
;(setq w3m-default-display-inline-images t)
;(setq w3m-use-cookies t)

(require 'undo-tree)
;;(require 'typing-speed)
;;Session and desktop  need to put at last
;;使用了这个扩展之后，你上次离开 Emacs 时的全局变量 (kill-ring，命令记录……)，局部变量，寄存器，打开的文件，修改过的文件和最后修改的位置，…… 全部都会被记录下来。 
; (require 'session)
 ;(add-hook 'after-init-hook 'session-initialize)
;;(load "desktop") 
;;(desktop-load-default) 
;;(desktop-read)
(setq-default indent-tabs-mode nil)
;; enable narrow
(put 'narrow-to-region 'disabled nil)

(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(custom-theme-load-path (quote ("~/.emacs.d/theme" t)))
 '(ecb-layout-window-sizes nil)
 '(frame-background-mode (quote dark)))

(load-theme 'solarized t)

;;MATLAB
;;(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
;;  (load-library "matlab-load")
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

(global-linum-mode 1)
