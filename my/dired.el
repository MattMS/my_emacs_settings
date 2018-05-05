(defun my-dired-mode-hook ()
	(define-key dired-mode-map (kbd "SPC") my-leader-map)
)
(add-hook 'dired-mode-hook 'my-dired-mode-hook)
