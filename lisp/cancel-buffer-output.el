; http://emacs.stackexchange.com/questions/21331/cancel-printing-of-long-string-in-buffer/21376#21376
(require 'cl-lib)
(require 'comint)

(defvar cancel-buffer-output--counter nil)
(defvar cancel-buffer-ouptut--original-filter nil)
(defvar cancel-buffer-output--last-input-end nil)

(defun cancel-buffer-output--filter-func (_proc _output)
  (cl-incf cancel-buffer-output--counter)
  (let ((message-log-max nil))
    (message "%d" cancel-buffer-output--counter)))

(defun cancel-buffer-output ()
  (interactive)
  (let ((proc (get-buffer-process (current-buffer))))
    (unless (equal (process-filter proc) #'cancel-buffer-output--filter-func)
      (setq cancel-buffer-ouptut--original-filter (process-filter proc)
            cancel-buffer-output--counter 0
            cancel-buffer-output--last-input-end (marker-position comint-last-input-end))
      (set-process-filter proc #'cancel-buffer-output--filter-func))))

(defun cancel-buffer-output-cleanup ()
  (interactive)
  (let ((proc (get-buffer-process (current-buffer)))
        (inhibit-read-only t))
    (delete-region cancel-buffer-output--last-input-end
                   (marker-position (process-mark proc)))
    (set-process-filter proc cancel-buffer-ouptut--original-filter)
    ;; Print the prompt
    (comint-simple-send proc "\n")))

(provide 'cancel-buffer-output)
