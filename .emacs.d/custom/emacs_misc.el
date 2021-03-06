;(setq warning-suppress-types nil) ;;annoying compile error
(setq inhibit-startup-message t) ;; disable the 'welcome' message

(setq default-directory "~/")

;(setq-default kill-whole-line t);if C-k at first kill th whole line

;;big kill ring!
(setq kill-ring-max 200)
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;Emacs is a text editor, make sure your text files end in a newline
(setq require-final-newline 't)

;; map C-h to backspace
(define-key key-translation-map [?\C-h] [?\C-?])
;(global-set-key (kbd "s-h") 'help-command)

;; 王垠主页上给出的一个命令，类似于 vim 的 f，可以跳到指定的字母。(用C-ca)
;;M-g跳到指定行
(global-set-key [(meta g)] 'goto-line)
;;(defun wy-go-to-char (n char)
;;  "Move forward to Nth occurence of CHAR.
;;Typing `wy-go-to-char-key' again will move forwad to the next Nth
;;occurence of CHAR."
;;  (interactive "p\ncGo to char: ")
;;  (search-forward (string char) nil nil n)
;;  (while (char-equal (read-char)
;;       char)
;;    (search-forward (string char) nil nil n))
;;  (setq unread-command-events (list last-input-event)))
;;(define-key global-map (kbd "C-c a") 'wy-go-to-char)


;;让 Emacs 可以直接打开和显示图片。
;;(auto-image-file-mode)

;;getting rid of the “yes or no” prompt and replace it with “y or n”:
(fset 'yes-or-no-p 'y-or-n-p)

;;the annoying confirmation if a file or buffer does not exist when you use C-x C-f or C-x b.
(setq confirm-nonexistent-file-or-buffer nil)

;; prompt in Emacs 23.2 that asks you if you want to kill a buffer with a live process attached to it:
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
         kill-buffer-query-functions))

;;设置有用的个人信息。这在很多地方有用。
(setq user-full-name "Lucas Peng")
(setq user-mail-address "lucasp0927@gmail.com")

;; make emacs use the system clipboard, so that text copy in emacs can paste to other place.
(setq select-enable-clipboard t)
;; this line causes cut/paste errors under windows (emacs 24)
(if (eq system-type 'gnu/linux) (setq interprogram-paste-function 'x-cut-buffer-or-selection-value) )
;; (setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; this alternative causes errors under linux (emacs 24)
(if (eq system-type 'windows-nt) (setq interprogram-paste-function 'x-selection-value) )
;;(setq interprogram-paste-function 'x-selection-value)
;;(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;;set f6 to shortcut of outlinemode
(setq outline-minor-mode-prefix [(control o)])
(global-set-key [f6] 'outline-minor-mode)

;;ispell
(setq ispell-dictionary "en")

;; 没有提示音,也不闪屏
(setq ring-bell-function 'ignore)

;顯示時間
;;(setq display-time-24hr-format t)
;;(setq display-time-interval 10)
;;(display-time)

;;对付重名 buffer
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;;window-number(C-x C-j number)---number is shown in the minibar.
;;(require 'window-number)
;;(window-number-mode)

;;wind move(use shift+arror to move window)
(when (fboundp 'windmove-default-keybindings)
(windmove-default-keybindings))

;;这是一个很小的函数。你是不是觉得 Emacs 在匹配的括号之间来回跳转的时候按 C-M-f 和 C-M-b 太麻烦了？vi的 % 就很方便，我们可以把 % 设置为匹配括号。可是你想输入 % 怎么办呢？
;;一个很巧妙的解决方案就是，当 % 在括号上按下时，那么匹配括号，否则输入一个 %。你只需要在 .emacs 文件里加入这些东西就可以达到目的：
(global-set-key "%" 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

;;send mail by gmail.com (need to install curl starttls )
;; write mail by M-x mail and C-c C-c send the mail.
;;(setq user-full-name "Lucas Peng")
;;(setq user-mail-address "lucasp0927@gmail.com")

;; Configure outbound mail (SMTP)
;;(setq smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;; smtpmail-smtp-server "smtp.gmail.com"
;; smtpmail-default-smtp-server "smtp.gmail.com"
;; send-mail-function 'smtpmail-send-it
;; message-send-mail-function 'smtpmail-send-it
;; smtpmail-smtp-service 587
;; smtpmail-auth-credentials '(("smtp.gmail.com"
;;	      587
;;	      "lucasp0927@gmail.com"
;;	      nil)))
;;
;;show key stroke fast
(setq echo-keystrokes 0.1)

;;Fastnav
(require 'fastnav)
    (global-set-key "\M-z" 'zap-up-to-char-forward)
    (global-set-key "\M-Z" 'zap-up-to-char-backward)
    (global-set-key "\M-s" 'jump-to-char-forward)
    (global-set-key "\M-S" 'jump-to-char-backward)
    (global-set-key "\M-r" 'replace-char-forward)
    (global-set-key "\M-R" 'replace-char-backward)
    (global-set-key "\M-i" 'insert-at-char-forward)
    (global-set-key "\M-I" 'insert-at-char-backward)
    (global-set-key "\M-p" 'sprint-forward)
    (global-set-key "\M-P" 'sprint-backward)
;;mew
;;(autoload 'mew "mew" nil t)
;;(autoload 'mew-send "mew" nil t)
;;
;;;; Optional setup (Read Mail menu for Emacs 21):
;;(if (boundp 'read-mail-command)
;;    (setq read-mail-command 'mew))
;;
;;;; Optional setup (e.g. C-xm for sending a message):
;;(autoload 'mew-user-agent-compose "mew" nil t)
;;(if (boundp 'mail-user-agent)
;;    (setq mail-user-agent 'mew-user-agent))
;;(if (fboundp 'define-mail-user-agent)
;;    (define-mail-user-agent
;;      'mew-user-agent
;;      'mew-user-agent-compose
;;      'mew-draft-send-message
;;      'mew-draft-kill
;;      'mew-send-hook))
;;(standard-display-european 1)
;;(setq user-full-name "Lucas Peng ")
;;(setq user-mail-address "lucasp0927@gmail.com")



;; wanderlust
;;(autoload 'wl "wl" "Wanderlust" t)
;;(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
;;(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

;; IMAP
;;(setq elmo-imap4-default-server "imap.gmail.com")
;;(setq elmo-imap4-default-user "lucasp0927@gmail.com")
;;(setq elmo-imap4-default-authenticate-type 'clear)
;;(setq elmo-imap4-default-port '993)
;;(setq elmo-imap4-default-stream-type 'ssl)

;;(setq elmo-imap4-use-modified-utf7 t)

;; SMTP
;;(setq wl-smtp-connection-type 'starttls)
;;(setq wl-smtp-posting-port 587)
;;(setq wl-smtp-authenticate-type "plain")
;;(setq wl-smtp-posting-user "lucasp0927")
;;(setq wl-smtp-posting-server "smtp.gmail.com")
;;(setq wl-local-domain "gmail.com")
;;
;;(setq wl-default-folder "%inbox")
;;(setq wl-default-spec "%")
;;
;;(setq wl-draft-folder "%[Gmail]Drafts") ; Gmail IMAP
;;(setq wl-trash-folder "%[Gmail]Trash") ; Gmail IMAP
;;
;;(setq wl-folder-check-async t)

;;(setq wl-dispose-folder-alist
;;     (cons '("^%inbox" . remove) wl-dispose-folder-alist))

;;(setq elmo-imap4-use-modified-utf7 t)

;;(autoload 'wl-user-agent-compose "wl-draft" nil t)
;;(if (boundp 'mail-user-agent)
;;    (setq mail-user-agent 'wl-user-agent))
;;(if (fboundp 'define-mail-user-agent)
;;    (define-mail-user-agent
;;      'wl-user-agent
;;      'wl-user-agent-compose
;;      'wl-draft-send
;;      'wl-draft-kill
;;      'mail-send-hook))

;; 3ペイン
;;(setq wl-stay-folder-window t)
;;(setq wl-folder-window-width 35)

;;放大縮小字體，像firefox一樣。
(define-key global-map [?\C-=] 'text-scale-increase)
(define-key global-map [?\C--] 'text-scale-decrease)

;;recent file
;;recentf
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-saved-items 500)
(setq recentf-max-menu-items 60)
(global-set-key [(meta f12)] 'recentf-open-files)

;; set scratch buffer message
(setq initial-scratch-message ";M-f12 for recent files.\n;M-f6 count word\n;S-f5 autocomplete mode/\n;S-f6 autopair mode.\n\n;C-x r <SPC> r \n;Record the position of point and the current buffer in register r \n;C-x r j r \n;Jump to the position and buffer saved in register r\n\n;C-x r m mark bookmark.\n;C-x r b goto bookmark.\n;C-x r l list bookmarks.")

;;alias list buffer i buffer
(defalias 'list-buffers 'ibuffer)

;;show ascii
;;(require 'ascii)

;count word
(defun count-word (beginning end)
  "Print number of words and chars in region."
  (interactive "r")
  (message "Counting ...")
  (save-excursion
    (let (wCnt charCnt)
      (setq wCnt 0)
      (setq charCnt (- end beginning))
      (goto-char beginning)
      (while (and (< (point) end)
		  (re-search-forward "\\w+\\W*" end t))
	(setq wCnt (1+ wCnt)))

      (message "Words: %d. Chars: %d." wCnt charCnt)
      )))
(global-set-key [(meta f6)] 'count-word)

;;backup
(setq backup-directory-alist
      `((".*" . "~/emacs_backups")))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;rainbow
(require 'rainbow-mode)
;;(setq-default frame-background-mode 'dark)

;;autopair
(add-to-list 'load-path "~/.emacs.d/autopair")
(require 'autopair)
(global-set-key [(S-f6)] 'autopair-mode)
;;(autopair-global-mode 1)
(setq autopair-autowrap t)

;;Add this to your .emacs and Emacs will then make the file executable if it is a script.
(add-hook 'after-save-hook
  'executable-make-buffer-file-executable-if-script-p)
;; timestamp
(add-hook 'write-file-hooks 'time-stamp)
(add-hook 'before-save-hook
  'time-stamp)

;;ido mode
(setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)
(setq ido-create-new-buffer 'always)
;; fix conflict with template.el
;;(setq ido-last-directory-list nil)

(setq dired-dwim-target t)
;; Now, when you have dired of different dir in 2 panes,
;; and when you press C to copy, the other dir in the split pane will be default destination.

;; allow dired to be able to delete or copy a whole dir.
;; “always” means no asking. “top” means ask once. Any other symbol means ask each and every time for a dir and subdir.
(setq dired-recursive-copies (quote always))
(setq dired-recursive-deletes (quote top))

;; In dired, you can press a instead of Enter to open the dir. This way, the previous dir will be automatically closed.

;; If you want Enter and ^ (parent dir) to use the same buffer, put the following in your emacs init file:

(add-hook 'dired-mode-hook
 (lambda ()
  (define-key dired-mode-map (kbd "<return>")
    'dired-find-alternate-file) ; was dired-advertised-find-file
  (define-key dired-mode-map (kbd "^")
    (lambda () (interactive) (find-alternate-file "..")))
  ; was dired-up-directory
 ))

(setq-default indent-tabs-mode nil) ; always replace tabs with spaces
(setq-default tab-width 4) ; set tab width to 4 for all buffers
;;The variable redisplay-dont-pause, when set to t, will cause Emacs to fully redraw the display before it processes queued input events.
;;(setq redisplay-dont-pause t)
;; folding
          ;; (autoload 'folding-mode          "folding" "Folding mode" t)
          ;; (autoload 'turn-off-folding-mode "folding" "Folding mode" t)
          ;; (autoload 'turn-on-folding-mode  "folding" "Folding mode" t)
          (load "folding" 'nomessage 'noerror)
          (folding-mode-add-find-file-hook)
          (folding-add-to-marks-list
           'c-mode "// {{{" "// }}}"nil t)
          (folding-add-to-marks-list
           'c++-mode "// {{{" "// }}}"nil t)
