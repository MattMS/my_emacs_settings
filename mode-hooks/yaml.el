(add-hook
	'yaml-mode-hook
	(lambda ()
		(setq indent-tabs-mode f)
		(setq tab-width 2)
	)
)
