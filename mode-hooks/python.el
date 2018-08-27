(defun my-python-mode-hook ()
	(glasses-mode)
	(setq glasses-original-separator "")
	(setq glasses-separator "–")

	; https://emacs.stackexchange.com/questions/9583/how-to-treat-underscore-as-part-of-the-word
	(modify-syntax-entry ?_ "w")

	; https://stackoverflow.com/questions/3684738/how-do-i-set-emacs-tab-size-to-4-chars-wide-for-py-files
	(setq indent-tabs-mode t)
	(setq tab-width 4)
	(setq python-indent 4)
)
(add-hook 'python-mode-hook 'my-python-mode-hook)
