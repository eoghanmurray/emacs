(defun save-all-buffers nil
  (interactive)
  (save-some-buffers t))
(global-set-key "\C-x\C-s" 'save-all-buffers)
