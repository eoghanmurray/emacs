(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(add-to-list 'load-path (file-name-directory (or load-file-name buffer-file-name)))
(add-to-list 'load-path (concat (file-name-directory (or load-file-name buffer-file-name)) "lisp"))

(load "variable-font.el")
(load "copy-paste-behavior.el")
(load "keyboard-editing.el")
(load "window-navigating.el")
(load "saving-files.el")
(load "whitespace-control.el")

(load "cancel-buffer-output.el")
(require 'cancel-buffer-output)

(require 'noflet)
