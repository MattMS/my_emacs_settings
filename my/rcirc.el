(defun my-rcirc-mode-hook ()
	; https://www.gnu.org/software/emacs/manual/html_node/rcirc/Channels.html
	(rcirc-track-minor-mode 1)
)
(add-hook 'rcirc-mode-hook 'my-rcirc-mode-hook)
