(defun my-pug-mode-hook ()
	(define-key pug-mode-map (kbd "<backspace>") 'backward-delete-char)
	;; (define-key pug-mode-map (kbd "<tab>") 'self-insert-command)

	(setq indent-tabs-mode t)
	(setq pug-tab-width 4)
	(setq tab-width 4)
)
(add-hook 'pug-mode-hook 'my-pug-mode-hook)
