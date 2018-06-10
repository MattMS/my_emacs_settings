; Company-mode
;
; ## Main links
;
; - [GitHub](https://github.com/company-mode/company-mode)
; - [Main site](https://company-mode.github.io/)
;
; ## Install
;
; `company` on ELPA.
;
; ## Usage
;
; Start with `M-x company-mode`.
;
; ### Key-bindings
;
; `M-/` does `company-dabbrev`.
;
; ### Global
;
(add-hook 'after-init-hook 'global-company-mode)

;(defun my-company-mode-hook ())

;(eval-after-load 'company '(progn))
(with-eval-after-load 'company
	;(company-flx-mode 1)

	(setq company-idle-delay 0.5)

	(add-to-list 'company-backends '(company-capf company-dabbrev))

	;(add-hook 'company-mode-hook 'my-company-mode-hook)
)

; ## Links
;
; - [Company backend for words inside the buffer @ Emacs SE](https://emacs.stackexchange.com/questions/15179/company-backend-for-words-inside-the-buffer)
; - [How add company-dabbrev to the Company completion popup? @ Emacs SE](https://emacs.stackexchange.com/questions/15246/how-add-company-dabbrev-to-the-company-completion-popup)
