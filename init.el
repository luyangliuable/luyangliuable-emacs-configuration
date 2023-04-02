;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(let ((default-directory (file-name-directory load-file-name)))
  (load (expand-file-name "core/user-config.el"))
  (load (expand-file-name "core/layers.el"))
  (load (expand-file-name "core/init.el"))
  (load (expand-file-name "core/user-env.el"))
  (load (expand-file-name "core/user-init.el"))
  (load (expand-file-name "core/user-load.el")))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
)
