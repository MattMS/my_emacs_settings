(defun my-ranger-mode-hook ()
	(define-key ranger-mode-map (kbd "C-h") help-map)
)

(add-hook 'ranger-mode-hook 'my-ranger-mode-hook)
