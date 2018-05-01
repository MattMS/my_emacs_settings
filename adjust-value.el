; This does not preserve leading zeroes.
(defun adjust-matched-integer (count)
	(replace-match
		(number-to-string
			(+
				count
				(string-to-number (match-string 0))
			)
		)
	)
)

(defun adjust-value-at-point (count)
	;(skip-chars-backward "\-:0-9")

	; For simply adjusting integers.
	(skip-chars-backward "0-9")
	(skip-chars-backward "-")

	; `looking-at` returns `t` if the value under point matches (saves match).
	(cond
		; 23:59:59
		(
			(looking-at "[0-9]\{2\}\:[0-9]\{2\}\:[0-9]\{2\}")
			(error "Cannot adjust times yet.")
		)

		; 1999-12-31
		(
			(looking-at "[0-9]\{4\}\-[0-9]\{2\}\-[0-9]\{2\}")
			(error "Cannot adjust dates yet.")
		)

		; 64
		(
			(looking-at "-?[0-9]+")
			(adjust-matched-integer count)
		)

		(
			t
			(error "Unknown value format at point.")
		)
	)
)

;
; Functions for key-binding.
;

(defun decrement-value-at-point ()
	"Decrement the value below the cursor."

	(interactive)
	(adjust-value-at-point -1)
)

(defun increment-value-at-point ()
	"Increment the value below the cursor."

	(interactive)
	(adjust-value-at-point 1)
)
