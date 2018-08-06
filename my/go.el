(defun my-go-mode-hook ()
	(glasses-mode)
	(setq glasses-original-separator "")
	(setq glasses-separator "–")

	(add-hook 'before-save-hook #'gofmt-before-save)
)
(add-hook 'go-mode-hook 'my-go-mode-hook)
