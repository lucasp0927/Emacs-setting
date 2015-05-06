;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。 
(setq frame-title-format "emacs@%b")
;;(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;;gnu 不知道作什麼的
;;(setq gnus-registry-install t)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。 
(mouse-avoidance-mode 'animate)

;;highlight tail
;;(require 'highlight-tail)
;;(setq highlight-tail-colors
;;    '(("black" . 0)
;;    ("#bc2525" . 25)
;;    ("black" . 66)))
;;(highlight-tail-mode)

;;Fonts
;;(set-default-font "FreeMono-10")
;;(add-to-list 'default-frame-alist '(font . "Consolas-13"))
(when (eq system-type 'darwin)
  (add-to-list 'default-frame-alist '(font . "Monaco-14"))
)
(when (eq system-type 'gnu/linux)
  (add-to-list 'default-frame-alist '(font . "Monospace-12"))
)
;;(setq font-use-system-font t)

(tool-bar-mode -1)
;;(menu-bar-mode -1)
;;(set-scroll-bar-mode nil)
(global-set-key [f2] 'menu-bar-mode)
(setq column-number-mode t) 
;;syntax highlight
(global-font-lock-mode t)

;; ;;theme
;; (add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
;; (require 'color-theme)
;; ;;(eval-after-load "color-theme"
;; ;;  '(progn
;; ;;     (color-theme-initialize)))
;; ;;     (color-theme-blackboard)))
;; (add-to-list 'load-path "~/.emacs.d")
;; ;; (require 'zenburn)
;; ;; (zenburn)
;; (load "~/.emacs.d/color-theme-molokai.el")
;; (require 'color-theme-molokai)
;; (color-theme-molokai)

;;transparent
 ;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
;;(set-frame-parameter (selected-frame) 'alpha '(95 95))
;; (add-to-list 'default-frame-alist '(alpha 95 95))

;;(load-theme 'solarized t)
