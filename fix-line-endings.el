; Help from:
; - http://ergoemacs.org/emacs/elisp_find_replace_text.html
; - http://ergoemacs.org/emacs/keystroke_rep.html
;
(defun fix-line-endings ()
	"Remove any ^M characters from line endings."

	(interactive)

	(save-excursion
		(goto-char (point-min))
		(while (search-forward "\r" nil t) (replace-match ""))
	)

	(setq buffer-file-coding-system 'utf-8-unix)
)
