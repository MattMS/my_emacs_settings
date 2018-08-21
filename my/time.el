(defun my-display-time-hook ()
	; Uses `format-time-string`.
	;
	; ISO 8601 format:
	; `%F` is the ISO 8601 date format (like `%Y-%m-%d`).
	; `%R` is like `%H:%M`, `%T` is like `%H:%M:%S`.
	; `%r` is like `%I:%M:%S %p`.
	;
	; Non-`nil` will then ignore `display-time-24hr-format` and `display-time-day-and-date`.
	;
	(setq display-time-format "%F %R %z")
)

(add-hook 'display-time-hook 'my-display-time-hook)
