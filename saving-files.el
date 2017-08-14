(defun save-all-buffers ()
  (interactive)
  (save-some-buffers t))
(global-set-key "\C-x\C-s" 'save-all-buffers)
