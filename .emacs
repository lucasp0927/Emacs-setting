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
(when (eq system-type 'darwin) ;; mac specific settings
 (setq mac-option-modifier 'alt)
 (setq mac-command-modifier 'meta)
 (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
; sane path
 (setq path "/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin")
(setenv "PATH" path)
 )
;;(server-start) ;; able to use emacsclient to start emacs fast.
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/ecb-snap")
(add-to-list 'load-path "~/.emacs.d/org-mode")
(add-to-list 'load-path "~/.emacs.d/custom")
(add-to-list 'load-path "~/.emacs.d/go-mode")
(require 'go-mode-load)
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
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes (quote ("1b4607068361e46f5d673e33e4e731277d8687ddf33d65185ee42a093fa8cb11" "d6a00ef5e53adf9b6fe417d2b4404895f26210c52bb8716971be106550cea257" default)))
 '(custom-theme-load-path (quote ("~/.emacs.d/theme" t)))
 '(ecb-layout-window-sizes nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


