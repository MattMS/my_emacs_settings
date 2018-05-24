(defun my-yaml-mode-hook ()
	(electric-indent-mode 1)

	(setq indent-tabs-mode f)
	(setq tab-width 2)
)
(add-hook 'yaml-mode-hook 'my-yaml-mode-hook)
