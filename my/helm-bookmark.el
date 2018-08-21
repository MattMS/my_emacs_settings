(defun my-helm-mode-hook ()
	(setq helm-bookmark-show-location t)

	(define-key helm-bookmark-map (kbd "C-e") 'helm-bookmark-run-edit)
)
(add-hook 'helm-mode-hook 'my-helm-mode-hook)
