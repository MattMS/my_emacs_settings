; Need to run `(glasses-mode)` in mode-hooks.
; If it is run here, then the separator settings will not apply correctly.

; Control if original separators are replaced.
;
; Characters matching this are replaced with `glasses-separator`.
; Set to an empty string to avoid any replacements.
;
; Default is `_`.
;
(setq glasses-original-separator "")

; Default is `_`.
;
; - en dash: `–`
; - em dash: `—`
;
(setq glasses-separator "–")

; `t` will add a space before `(`.
;
(setq glasses-separate-parentheses-p nil)

; non-`nil` removes separators that were added.
;
(setq glasses-convert-on-write-p nil)
