(defun my-js-mode-hook ()
	(glasses-mode)

	; https://emacs.stackexchange.com/questions/9583/how-to-treat-underscore-as-part-of-the-word
	(modify-syntax-entry ?_ "w")
)
(add-hook 'js-mode-hook 'my-js-mode-hook)
