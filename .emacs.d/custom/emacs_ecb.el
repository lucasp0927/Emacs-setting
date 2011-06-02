;;ecb
(require 'ecb)
(require 'ecb-autoloads)
(setq ecb-auto-activate nil;自动启动ecb
;;ecb-layout-name "left-analyse"
ecb-tip-of-the-day nil;不显示每日提醒
ecb-auto-compatibility-check nil;
ecb-version-check nil;
ecb-windows-width 0.2
)
(global-set-key [f8] 'ecb-activate) ;;定义F8键为激活ecb
(global-set-key [f7] 'ecb-deactivate) ;;定义F7为停止ecb
;;;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)
;;;; 使某一ecb窗口最大化
(define-key global-map "\C-c1" 'ecb-maximize-window-directories)
(define-key global-map "\C-c2" 'ecb-maximize-window-sources)
(define-key global-map "\C-c3" 'ecb-maximize-window-methods)
(define-key global-map "\C-c4" 'ecb-maximize-window-analyse)
;;;; 恢复原始窗口布局
(define-key global-map "\C-cq" 'ecb-restore-default-window-sizes)


(custom-set-variables
 '(ecb-layout-window-sizes nil)
;; '(ecb-source-path (quote ("/home/lucaspeng/Dropbox")))
)
;;(custom-set-faces
;; )
;;(ecb-activate)
