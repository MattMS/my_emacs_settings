(defun my-yaml-mode-hook ()
	(electric-indent-mode 1)

	(glasses-mode)
	(setq glasses-original-separator "")
	(setq glasses-separator "–")

	(setq indent-tabs-mode f)
	(setq tab-width 2)
)
(add-hook 'yaml-mode-hook 'my-yaml-mode-hook)
