(global-set-key [f1] 'dabbrev-expand)

(require 'goto-last-change)
(global-set-key [f5] 'goto-last-change)

(defun delete-whitespace ()
  "Delete characters from point up to next non-whitespace char"
  (interactive)
  (let ((here (point)))
    (skip-syntax-forward "-")
    (if (/= (point) here)
	(delete-region (point) here))))
(global-set-key [(meta s)] 'delete-whitespace)

;disable overwrite mode
(global-unset-key [insert])
