(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(load-file "variable-font.el")
(load-file "copy-paste-behavior.el")
(load-file "keyboard-editing.el")
(load-file "window-navigating.el")
(load-file "saving-files.el")

(load-file "lisp/cancel-buffer-output.el")
(require 'cancel-buffer-output)
