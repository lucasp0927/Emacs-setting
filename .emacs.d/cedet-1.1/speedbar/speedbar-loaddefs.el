;;; speedbar-loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (rpm) "rpm" "../../../../.emacs.d/cedet-1.1/speedbar/rpm.el"
;;;;;;  "7d1468f1f5326b45309bfe62707f671e")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/speedbar/rpm.el

(autoload 'rpm "rpm" "\
Red Hat Package Management in Emacs.

\(fn)" t nil)

;;;***

;;;### (autoloads (gud-speedbar-buttons) "sb-gud" "../../../../.emacs.d/cedet-1.1/speedbar/sb-gud.el"
;;;;;;  "a14d61173ccd14b5c2b054da66800e1a")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/speedbar/sb-gud.el

(autoload 'gud-speedbar-buttons "sb-gud" "\
Create a speedbar display based on the current state of GUD.
If the GUD BUFFER is not running a supported debugger, then turn
off the specialized speedbar mode.

\(fn BUFFER)" nil nil)

;;;***

;;;### (autoloads (Info-speedbar-buttons Info-speedbar-browser) "sb-info"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/sb-info.el" "775ad191db0541d5ee33f884e9dd344e")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/speedbar/sb-info.el

(autoload 'Info-speedbar-browser "sb-info" "\
Initialize speedbar to display an info node browser.
This will add a speedbar major display mode.

\(fn)" t nil)

(autoload 'Info-speedbar-buttons "sb-info" "\
Create a speedbar display to help navigation in an Info file.
BUFFER is the buffer speedbar is requesting buttons for.

\(fn BUFFER)" nil nil)

(eval-after-load "info" '(require 'sb-info))

;;;***

;;;### (autoloads (rmail-speedbar-buttons) "sb-rmail" "../../../../.emacs.d/cedet-1.1/speedbar/sb-rmail.el"
;;;;;;  "2c5208171c1e4de1e1ac8f7542ecc9f0")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/speedbar/sb-rmail.el

(autoload 'rmail-speedbar-buttons "sb-rmail" "\
Create buttons for BUFFER containing rmail messages.
Click on the address under Reply to: to reply to this person.
Under Folders: Click a name to read it, or on the <M> to move the
current message into that RMAIL folder.

\(fn BUFFER)" nil nil)

;;;***

;;;### (autoloads (w3-speedbar-buttons) "sb-w3" "../../../../.emacs.d/cedet-1.1/speedbar/sb-w3.el"
;;;;;;  "21fd4148c6a4913c64c9b70bee1b359e")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/speedbar/sb-w3.el

(autoload 'w3-speedbar-buttons "sb-w3" "\
Create speedbar buttons for the current web BUFFER displayed in w3 mode.

\(fn BUFFER)" nil nil)

;;;***

;;;### (autoloads (speedbar-get-focus speedbar-frame-mode) "speedbar"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/speedbar.el" "5e3724e8536eddc8903d3c9988216b65")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/speedbar/speedbar.el

(defalias 'speedbar 'speedbar-frame-mode)

(autoload 'speedbar-frame-mode "speedbar" "\
Enable or disable speedbar.  Positive ARG means turn on, negative turn off.
A nil ARG means toggle.  Once the speedbar frame is activated, a buffer in
`speedbar-mode' will be displayed.  Currently, only one speedbar is
supported at a time.
`speedbar-before-popup-hook' is called before popping up the speedbar frame.
`speedbar-before-delete-hook' is called before the frame is deleted.

\(fn &optional ARG)" t nil)

(autoload 'speedbar-get-focus "speedbar" "\
Change frame focus to or from the speedbar frame.
If the selected frame is not speedbar, then speedbar frame is
selected.  If the speedbar frame is active, then select the attached frame.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/cedet-1.1/speedbar/bigclock.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/dframe.el" "../../../../.emacs.d/cedet-1.1/speedbar/rpm.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/sb-ant.el" "../../../../.emacs.d/cedet-1.1/speedbar/sb-gud.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/sb-html.el" "../../../../.emacs.d/cedet-1.1/speedbar/sb-image.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/sb-info.el" "../../../../.emacs.d/cedet-1.1/speedbar/sb-rmail.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/sb-texinfo.el" "../../../../.emacs.d/cedet-1.1/speedbar/sb-w3.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/speedbar-load.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/speedbar/speedbar.el") (20620
;;;;;;  56602 967700))

;;;***

(provide 'speedbar-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; speedbar-loaddefs.el ends here
