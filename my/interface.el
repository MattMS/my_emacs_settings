; Must come after the `custom-set-variables` block.
(load-theme 'solarized-dark)
;(load-theme 'solarized-light)

(set-face-attribute
	'default nil
	:family "Ubuntu Mono"
	:height 160
)

; `t` will display column number after line number in the mode-line.
; Default is `f`.
;
; https://www.gnu.org/software/emacs/manual/html_node/efaq/Displaying-the-current-line-or-column.html
;
(setq column-number-mode t)

; Avoid buffers (like help) opening a new window.
; https://www.emacswiki.org/emacs/OneWindow
(setq pop-up-windows nil)

; `-1` hides the toolbar.
; Does not accept `f` or `nil`.
(tool-bar-mode -1)
