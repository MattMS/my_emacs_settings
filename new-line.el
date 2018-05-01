; Cannot use `(end-of-line)` since `(newline)` will occur before last character.
(defun my-new-line-after ()
	"Add a new-line after the current line."
	(interactive)
	(evil-next-line)
	(evil-beginning-of-line)
	(newline)
	(evil-previous-line)
)

(defun my-new-line-before ()
	"Add a new-line before the current line."
	(interactive)
	(evil-beginning-of-line)
	(newline)
)
