; Need to run `(glasses-mode)` in mode-hooks.

; Default is `_`.
; Seems to double separators when set to `_`.
; Does nothing when `-`.
;(setq glasses-original-separator "")

; Default is `_`.
;(setq glasses-separator "_")

; `t` will add a space before `(`.
(setq glasses-separate-parentheses-p nil)

; non-`nil` removes separators that were added.
(setq glasses-convert-on-write-p nil)
