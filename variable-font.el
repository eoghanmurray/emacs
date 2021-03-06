; default to variable width
(set-default-font "DejaVu Sans:size=13:antialias=True")
(global-set-key (kbd "C-x <")
    (lambda () (interactive) (set-default-font "DejaVu Sans:size=13:antialias=True")))
(global-set-key (kbd "C-x >")
    (lambda () (interactive) (set-default-font "DejaVu Sans:size=30:antialias=True")))
 (defun switch-to-fixed-width-font ()
   "Sets a fixed width (monospace) font in selected buffers/modes"
   (interactive)
   (setq buffer-face-mode-face '(:family "DejaVu Sans Mono"))
   (buffer-face-mode))
 (defun switch-from-fixed-width-font ()
   "Sets a fixed width (monospace) font in selected buffers/modes"
   (interactive)
   (setq buffer-face-mode-face '(:family "DejaVu Sans"))
   (buffer-face-mode))
(add-hook 'sql-mode-hook 'switch-to-fixed-width-font)
(add-hook 'sql-interactive-mode-hook 'switch-to-fixed-width-font)
(add-hook 'text-mode-hook 'switch-to-fixed-width-font)
(add-hook 'dired-mode-hook 'switch-to-fixed-width-font)
(add-hook 'term-mode-hook 'switch-to-fixed-width-font)
(add-hook 'org-mode-hook 'switch-to-fixed-width-font)
