;;; ede-loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (autoconf-parameters-for-macro) "autoconf-edit"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/autoconf-edit.el" "39fbc7110cba6a50ad6ba6d667d6d793")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/autoconf-edit.el

(autoload 'autoconf-parameters-for-macro "autoconf-edit" "\
Retrieve the parameters to MACRO.
Returns a list of the arguments passed into MACRO as strings.

\(fn MACRO &optional IGNORE-BOL IGNORE-CASE)" nil nil)

;;;***

;;;### (autoloads (ede-target-parent ede-parent-project ede-load-project-file
;;;;;;  project-make-dist project-compile-target project-compile-project
;;;;;;  project-edit-file-target ede-compile-target ede-remove-file
;;;;;;  global-ede-mode) "ede" "../../../../.emacs.d/cedet-1.1/ede/ede.el"
;;;;;;  "147eda01ddaa0e38126c01ab2bedd786")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede.el

(defvar ede-projects nil "\
A list of all active projects currently loaded in Emacs.")

(defvar ede-minor-mode nil "\
Non-nil in EDE controlled buffers.")

(autoload 'global-ede-mode "ede" "\
Turn on variable `ede-minor-mode' mode when ARG is positive.
If ARG is negative, disable.  Toggle otherwise.

\(fn ARG)" t nil)

(autoload 'ede-remove-file "ede" "\
Remove the current file from targets.
Optional argument FORCE forces the file to be removed without asking.

\(fn &optional FORCE)" t nil)

(autoload 'ede-compile-target "ede" "\
Compile the current buffer's associated target.

\(fn)" t nil)

(autoload 'project-edit-file-target "ede" "\
Edit the target OT associated w/ this file.

\(fn (ot ede-target))" nil nil)

(autoload 'project-compile-project "ede" "\
Compile the entire current project OBJ.
Argument COMMAND is the command to use when compiling.

\(fn (obj ede-project) &optional COMMAND)" nil nil)

(autoload 'project-compile-target "ede" "\
Compile the current target OBJ.
Argument COMMAND is the command to use for compiling the target.

\(fn (obj ede-target) &optional COMMAND)" nil nil)

(autoload 'project-make-dist "ede" "\
Build a distribution for the project based on THIS project.

\(fn (this ede-project))" nil nil)

(autoload 'ede-load-project-file "ede" "\
Project file independent way to read a project in from DIR.
Optional ROOTRETURN will return the root project for DIR.

\(fn DIR &optional ROOTRETURN)" nil nil)

(autoload 'ede-parent-project "ede" "\
Return the project belonging to the parent directory.
Return nil if there is no previous directory.
Optional argument OBJ is an object to find the parent of.

\(fn &optional OBJ)" nil nil)

(autoload 'ede-target-parent "ede" "\
Return the project which is the parent of TARGET.
It is recommended you track the project a different way as this function
could become slow in time.

\(fn TARGET)" nil nil)

;;;***

;;;### (autoloads (ede-android-load) "ede-android" "../../../../.emacs.d/cedet-1.1/ede/ede-android.el"
;;;;;;  "698b0dc2eb691dce3d6d3811a75cb5ca")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-android.el

(autoload 'ede-android-load "ede-android" "\
Return an Android Project object if there is a match.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, since there is only one project.

\(fn DIR &optional ROOTPROJ)" nil nil)

(ede-add-project-autoload (ede-project-autoload "android" :name "ANDROID ROOT" :file 'ede-android :proj-file "AndroidManifest.xml" :load-type 'ede-android-load :class-sym 'ede-android-project :new-p t :safe-p t))

(eieio-defclass-autoload 'ede-android-project '(ede-project eieio-instance-tracker) "ede-android" "Project for Android applications.")

;;;***

;;;### (autoloads (ede-arduino-load ede-arduino-file ede-arduino-root)
;;;;;;  "ede-arduino" "../../../../.emacs.d/cedet-1.1/ede/ede-arduino.el"
;;;;;;  "e864f2e3d282d7c78a38ebc607b89319")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-arduino.el

(autoload 'ede-arduino-root "ede-arduino" "\
Get the root project directory for DIR.
The only arduino sketches allowed are those configured by the arduino IDE
in their sketch directory.

If BASEFILE is non-nil, then convert root to the project basename also.

Consider expanding this at some later date.

\(fn &optional DIR BASEFILE)" nil nil)

(autoload 'ede-arduino-file "ede-arduino" "\
Get a file representing the root of this arduino project.
It is a file ending in .pde or .ino that has the same basename as
the directory it is in.  Optional argument DIR is the directory
to check.

\(fn &optional DIR)" nil nil)

(autoload 'ede-arduino-load "ede-arduino" "\
Return an Arduino project object if there is one.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, sinc there is only one project for a directory tree.

\(fn DIR &optional ROOTPROJ)" nil nil)

(add-to-list 'ede-project-class-files (ede-project-autoload "arduino" :name "ARDUINO SKETCH" :file 'ede-arduino :proj-root-dirmatch (ede-project-autoload-dirmatch "arduino" :fromconfig "~/.arduino/preferences.txt" :configregex "^sketchbook.path=\\([^\n]+\\)$" :configregexidx 1) :proj-file 'ede-arduino-file :proj-root 'ede-arduino-root :load-type 'ede-arduino-load :class-sym 'ede-arduino-project :safe-p t :new-p t) t)

;;;***

;;;### (autoloads nil "ede-auto" "../../../../.emacs.d/cedet-1.1/ede/ede-auto.el"
;;;;;;  "4c0ab17e68ac2c5b4634febc2bbbcc05")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-auto.el

(eieio-defclass-autoload 'ede-project-autoload 'nil "ede-auto" "Class representing minimal knowledge set to run preliminary EDE functions.\nWhen more advanced functionality is needed from a project type, that projects\ntype is required and the load function used.")

;;;***

;;;### (autoloads (ede-adebug-project-root ede-adebug-project-parent
;;;;;;  ede-adebug-project ede-documentation-files ede-description
;;;;;;  ede-name) "ede-base" "../../../../.emacs.d/cedet-1.1/ede/ede-base.el"
;;;;;;  "665a7546f689df928c27b13fe3924dec")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-base.el

(eieio-defclass-autoload 'ede-target '(eieio-speedbar-directory-button) "ede-base" "A target is a structure that describes a file set that produces something.\nTargets, as with 'Make', is an entity that will manage a file set \nand knows how to compile or otherwise transform those files into some\nother desired outcome.")

(eieio-defclass-autoload 'ede-project '(ede-project-placeholder) "ede-base" "Top level EDE project specification.\nAll specific project types must derive from this project.")

(autoload 'ede-name "ede-base" "\
Return the name of THIS target.

\(fn (this ede-target))" nil nil)

(autoload 'ede-description "ede-base" "\
Return a description suitable for the minibuffer about THIS.

\(fn (this ede-project))" nil nil)

(autoload 'ede-documentation-files "ede-base" "\
Return the documentation files for the current buffer.
Not all buffers need documentations, so return nil if no applicable.
Some projects may have multiple documentation files, so return a list.

\(fn)" nil nil)

(autoload 'ede-adebug-project "ede-base" "\
Run adebug against the current EDE project.
Display the results as a debug list.

\(fn)" t nil)

(autoload 'ede-adebug-project-parent "ede-base" "\
Run adebug against the current EDE parent project.
Display the results as a debug list.

\(fn)" t nil)

(autoload 'ede-adebug-project-root "ede-base" "\
Run adebug against the current EDE parent project.
Display the results as a debug list.

\(fn)" t nil)

;;;***

;;;### (autoloads (ede-cpp-root-load ede-cpp-root-project-root ede-cpp-root-project-file-for-dir)
;;;;;;  "ede-cpp-root" "../../../../.emacs.d/cedet-1.1/ede/ede-cpp-root.el"
;;;;;;  "cc4c35c9fe6f638d68accdff154db851")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-cpp-root.el

(autoload 'ede-cpp-root-project-file-for-dir "ede-cpp-root" "\
Return a full file name to the project file stored in DIR.

\(fn &optional DIR)" nil nil)

(autoload 'ede-cpp-root-project-root "ede-cpp-root" "\
Get the root directory for DIR.

\(fn &optional DIR)" nil nil)

(autoload 'ede-cpp-root-load "ede-cpp-root" "\
Return a CPP root object if you created one.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, since there is only one project.

\(fn DIR &optional ROOTPROJ)" nil nil)

(eieio-defclass-autoload 'ede-cpp-root-project '(ede-project eieio-instance-tracker) "ede-cpp-root" "EDE cpp-root project class.\nEach directory needs a project file to control it.")

;;;***

;;;### (autoloads (ede-project-sort-targets ede-customize-target
;;;;;;  ede-customize-current-target ede-customize-project) "ede-custom"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-custom.el" "b42e1cd329e957b4465cf302f90f89d4")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-custom.el

(autoload 'ede-customize-project "ede-custom" "\
Edit fields of the current project through EIEIO & Custom.

\(fn)" t nil)

(defalias 'customize-project 'ede-customize-project)

(autoload 'ede-customize-current-target "ede-custom" "\
Edit fields of the current target through EIEIO & Custom.
Optional argument OBJ is the target object to customize.

\(fn)" t nil)

(defalias 'customize-target 'ede-customize-current-target)

(autoload 'ede-customize-target "ede-custom" "\
Edit fields of the current target through EIEIO & Custom.
Optional argument OBJ is the target object to customize.

\(fn OBJ)" nil nil)

(autoload 'ede-project-sort-targets "ede-custom" "\
Create a custom-like buffer for sorting targets of current project.

\(fn)" t nil)

;;;***

;;;### (autoloads (ede-emacs-load ede-emacs-project-root) "ede-emacs"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-emacs.el" "53db04c318af4c654688681ca7ce298e")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-emacs.el

(autoload 'ede-emacs-project-root "ede-emacs" "\
Get the root directory for DIR.

\(fn &optional DIR)" nil nil)

(eieio-defclass-autoload 'ede-emacs-project '(ede-project eieio-instance-tracker) "ede-emacs" "Project Type for the Emacs source code.")

(autoload 'ede-emacs-load "ede-emacs" "\
Return an Emacs Project object if there is a match.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, since there is only one project.

\(fn DIR &optional ROOTPROJ)" nil nil)

(ede-add-project-autoload (ede-project-autoload "emacs" :name "EMACS ROOT" :file 'ede-emacs :proj-file "src/emacs.c" :proj-root-dirmatch "emacs[^/]*" :proj-root 'ede-emacs-project-root :load-type 'ede-emacs-load :class-sym 'ede-emacs-project :new-p nil :safe-p t) 'unique)

;;;***

;;;### (autoloads (ede-find-file) "ede-files" "../../../../.emacs.d/cedet-1.1/ede/ede-files.el"
;;;;;;  "6f5ffbcb7718d2018e0de127f3c1e38f")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-files.el

(autoload 'ede-find-file "ede-files" "\
Find FILE in project.  FILE can be specified without a directory.
There is no completion at the prompt.  FILE is searched for within
the current EDE project.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (ede-enable-generic-projects ede-generic-load)
;;;;;;  "ede-generic" "../../../../.emacs.d/cedet-1.1/ede/ede-generic.el"
;;;;;;  "45810a927914a26d772b5bb0b4d0c9b3")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-generic.el

(autoload 'ede-generic-load "ede-generic" "\
Return a Generic Project object if there is a match.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, since there is only one project.

\(fn DIR &optional ROOTPROJ)" nil nil)

(autoload 'ede-enable-generic-projects "ede-generic" "\
Enable generic project loaders.

\(fn)" t nil)

;;;***

;;;### (autoloads (ede-linux-load ede-linux-project-root) "ede-linux"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-linux.el" "bbe9ab034d6f52c8f43a41eeba5095c4")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-linux.el

(autoload 'ede-linux-project-root "ede-linux" "\
Get the root directory for DIR.

\(fn &optional DIR)" nil nil)

(eieio-defclass-autoload 'ede-linux-project '(ede-project eieio-instance-tracker) "ede-linux" "Project Type for the Linux source code.")

(autoload 'ede-linux-load "ede-linux" "\
Return an Linux Project object if there is a match.
Return nil if there isn't one.
Argument DIR is the directory it is created for.
ROOTPROJ is nil, since there is only one project.

\(fn DIR &optional ROOTPROJ)" nil nil)

(ede-add-project-autoload (ede-project-autoload "linux" :name "LINUX ROOT" :file 'ede-linux :proj-file "scripts/ver_linux" :proj-root-dirmatch "linux[^/]*" :proj-root 'ede-linux-project-root :load-type 'ede-linux-load :class-sym 'ede-linux-project :new-p nil :safe-p t) 'unique)

;;;***

;;;### (autoloads (ede-enable-locate-on-project) "ede-locate" "../../../../.emacs.d/cedet-1.1/ede/ede-locate.el"
;;;;;;  "ac29c91ec6b0acc6b4c14716686572f7")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-locate.el

(autoload 'ede-enable-locate-on-project "ede-locate" "\
Enable an EDE locate feature on PROJECT.
Attempt to guess which project locate style to use
based on `ede-locate-setup-options'.

\(fn &optional PROJECT)" t nil)

;;;***

;;;### (autoloads (ede-m3-ede-items) "ede-m3" "../../../../.emacs.d/cedet-1.1/ede/ede-m3.el"
;;;;;;  "1c16a635e20b1f4fc1b243b31847e764")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-m3.el

(autoload 'ede-m3-ede-items "ede-m3" "\
Return a list of menu items based on EDE project stats.

\(fn)" nil nil)

;;;***

;;;### (autoloads (ede-make-check-version) "ede-make" "../../../../.emacs.d/cedet-1.1/ede/ede-make.el"
;;;;;;  "e20bbda0d8351d244662ad971eb430ec")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-make.el

(autoload 'ede-make-check-version "ede-make" "\
Check the version of GNU Make installed.
The check passes if the MAKE version is no high enough, or if it
is not GNU make.
If NOERROR is non-nil, return t for success, nil for failure.
If NOERROR is nil, then throw an error on failure.  Return t otherwise.

\(fn &optional NOERROR)" t nil)

;;;***

;;;### (autoloads (ede-pmake-varname) "ede-pmake" "../../../../.emacs.d/cedet-1.1/ede/ede-pmake.el"
;;;;;;  "f9ddcf890bbd60dae13700ea066ceea6")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-pmake.el

(autoload 'ede-pmake-varname "ede-pmake" "\
Convert OBJ into a variable name name.
Change .  to _ in the variable name.

\(fn OBJ)" nil nil)

;;;***

;;;### (autoloads nil "ede-proj" "../../../../.emacs.d/cedet-1.1/ede/ede-proj.el"
;;;;;;  "20a4b1060212585d4dc37714daef7584")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-proj.el

(add-to-list 'auto-mode-alist '("Project\\.ede$" . emacs-lisp-mode))

;;;***

;;;### (autoloads (ede-shell-buffer ede-shell-run-something) "ede-shell"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-shell.el" "e397d37d7f0111b3efdd764ce0197360")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-shell.el

(autoload 'ede-shell-run-something "ede-shell" "\
Create a shell to run stuff for TARGET.
COMMAND is a text string representing the thing to be run.

\(fn (target ede-target) COMMAND)" nil nil)

(autoload 'ede-shell-buffer "ede-shell" "\
Get the buffer for running shell commands for TARGET.

\(fn (target ede-target))" nil nil)

;;;***

;;;### (autoloads (ede-srecode-insert ede-srecode-setup) "ede-srecode"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-srecode.el" "c864bdd70b4a692b139701ae9535702b")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-srecode.el

(autoload 'ede-srecode-setup "ede-srecode" "\
Update various paths to get SRecode to identify our macros.

\(fn)" nil nil)

(autoload 'ede-srecode-insert "ede-srecode" "\
Insert at the current point TEMPLATE.
TEMPLATE should specify a context by using a string format of:
  context:templatename
Add DICTIONARY-ENTRIES into the dictionary before insertion.
Note: Just like `srecode-insert', but templates found in 'ede app.

\(fn TEMPLATE &rest DICTIONARY-ENTRIES)" nil nil)

;;;***

;;;### (autoloads (ede-update-version) "ede-util" "../../../../.emacs.d/cedet-1.1/ede/ede-util.el"
;;;;;;  "12c1e889ac8a22b922a24d2ae500d727")
;;; Generated autoloads from ../../../../.emacs.d/cedet-1.1/ede/ede-util.el

(autoload 'ede-update-version "ede-util" "\
Update the current projects main version number.
Argument NEWVERSION is the version number to use in the current project.

\(fn NEWVERSION)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/cedet-1.1/ede/autoconf-compat.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/autoconf-edit.el" "../../../../.emacs.d/cedet-1.1/ede/ede-android.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-arduino.el" "../../../../.emacs.d/cedet-1.1/ede/ede-auto.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-base.el" "../../../../.emacs.d/cedet-1.1/ede/ede-cpp-root.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-custom.el" "../../../../.emacs.d/cedet-1.1/ede/ede-dired.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-emacs.el" "../../../../.emacs.d/cedet-1.1/ede/ede-files.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-generic.el" "../../../../.emacs.d/cedet-1.1/ede/ede-linux.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-load.el" "../../../../.emacs.d/cedet-1.1/ede/ede-locate.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-m3.el" "../../../../.emacs.d/cedet-1.1/ede/ede-make.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-pconf.el" "../../../../.emacs.d/cedet-1.1/ede/ede-pmake.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj-archive.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj-aux.el" "../../../../.emacs.d/cedet-1.1/ede/ede-proj-comp.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj-elisp.el" "../../../../.emacs.d/cedet-1.1/ede/ede-proj-info.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj-misc.el" "../../../../.emacs.d/cedet-1.1/ede/ede-proj-obj.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj-prog.el" "../../../../.emacs.d/cedet-1.1/ede/ede-proj-scheme.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj-shared.el" "../../../../.emacs.d/cedet-1.1/ede/ede-proj-skel.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-proj.el" "../../../../.emacs.d/cedet-1.1/ede/ede-shell.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-source.el" "../../../../.emacs.d/cedet-1.1/ede/ede-speedbar.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-srecode.el" "../../../../.emacs.d/cedet-1.1/ede/ede-system.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/ede-util.el" "../../../../.emacs.d/cedet-1.1/ede/ede.el"
;;;;;;  "../../../../.emacs.d/cedet-1.1/ede/makefile-edit.el" "../../../../.emacs.d/cedet-1.1/ede/project-am.el")
;;;;;;  (20620 56599 222838))

;;;***

(provide 'ede-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ede-loaddefs.el ends here
