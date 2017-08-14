(require 'ws-trim)
(global-ws-trim-mode t)
(set-default 'ws-trim-level 0)
(setq ws-trim-global-modes '(php-mode js2-mode css-mode python-mode html-mode xhtml-mode)) ; don't guess as was guessing wrong for sql buffer and query-replace-regexp
