;;cedet
(load-file "~/.emacs.d/cedet-1.0/common/cedet.elc")
;;(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-gaudy-code-helpers)   ; Enable prototype help and smart completion 
(semantic-load-enable-semantic-debugging-helpers)

(require 'semantic-ia)
(require 'semantic-gcc)

;;(eval-after-load "semantic-c" 
;;'(dolist (d (list "/usr/include/c++/4.4"
;;"/usr/include/c++/4.4/i486-linux-gnu"
;;"/usr/include/c++/4.4/backward"
;;"/usr/local/include"
;;"/usr/lib/gcc/i486-linux-gnu/4.4.1/include"
;;"/usr/lib/gcc/i486-linux-gnu/4.4.1/include-fixed"
;;"/usr/include"
;;))

;;(semantic-add-system-include d))) 
;;(setq-mode-local c-mode semanticdb-find-default-throttle'(project unloaded system recursive))

(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public" "../lib" "./lib"))

;;(defconst cedet-include-dirs
;;  (list "/usr/include/c++/4.4"
;;	"/usr/include/c++/4.4/i486-linux-gnu"
;;	"/usr/include/c++/4.4/backward"
;;	"/usr/local/include"
;;	"/usr/lib/gcc/i486-linux-gnu/4.4.1/include"
;;	"/usr/lib/gcc/i486-linux-gnu/4.4.1/include-fixed"
;;	"/usr/include"))
;;(semantic-add-system-include cedet-include-dirs 'c++-mode)        
(require 'semantic-c nil 'noerror)
(let ((include-dirs cedet-user-include-dirs))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))
;;用f12 跳到特定函數 用shift f 12 跳回來

(global-set-key [f12] 'semantic-ia-fast-jump)
(global-set-key [S-f12]
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))))
(define-key c-mode-base-map [M-S-f12] 'semantic-analyze-proto-impl-toggle)


;;folded
(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1)
(define-key semantic-tag-folding-mode-map (kbd "C-c , _") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-c , +") 'semantic-tag-folding-show-block)
(define-key semantic-tag-folding-mode-map (kbd "C-_") 'semantic-tag-folding-fold-all)
(define-key semantic-tag-folding-mode-map (kbd "C-+") 'semantic-tag-folding-show-all)
;;(defun my-semantic-hook ()
;;  (imenu-add-to-menubar "TAGS"))
;;(add-hook 'semantic-init-hooks 'my-semantic-hook)

;;(eval-after-load "semantic-complete"
;;'(setq semantic-complete-inline-analyzer-displayor-class
;;semantic-displayor-ghost)) 
;;
;;(defun my-cedet-hook ()
;;  (local-set-key [(control return)] 'semantic-ia-complete-symbol)
;;  (local-set-key "\C-c?" 'semantic-ia-complete-symbol-menu)
;;  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
;;  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle))
;;(add-hook 'c-mode-common-hook 'my-cedet-hook)
;;
;;
;;(defun my-c-mode-cedet-hook ()
;; (local-set-key "." 'semantic-complete-self-insert)
;; (local-set-key ">" 'semantic-complete-self-insert))
;;(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)
;;


;;;; CC-mode配置  http://cc-mode.sourceforge.net/
(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

;;;;我的C/C++语言编辑策略

(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  ;;; hungry-delete and auto-newline
  (c-toggle-auto-hungry-state 1)
  ;;按键定义
  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  (define-key c-mode-base-map [(f7)] 'compile)
  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
;;  (define-key c-mode-base-map [(tab)] 'hippie-expand)
;;  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  (define-key c-mode-base-map [(meta ?/)] 'semantic-ia-complete-symbol-menu)

  ;;预处理设置
  ;;(setq c-macro-shrink-window-flag t)
;;  (setq c-macro-preprocessor "cpp")
;;  (setq c-macro-cppflags " ")
;;  (setq c-macro-prompt-flag t)
  (setq hs-minor-mode t)
  (setq abbrev-mode t)
)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

;;;;我的C++语言编辑策略
(defun my-c++-mode-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (c-set-style "stroustrup")
;;  (define-key c++-mode-map [f3k] 'replace-regexp)
)


'(compile-command "make")
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
