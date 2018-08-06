; ## coffee-mode
;
; https://github.com/defunkt/coffee-mode
;
; ## literate-coffee-mode
;
; https://github.com/syohex/emacs-literate-coffee-mode
;
; Depends on `coffee-mode`.

(defun my-coffee-mode-hook ()
	(custom-set-variables '(coffee-indent-tabs-mode t))
)

(add-hook 'coffee-mode-hook 'my-coffee-mode-hook)
(add-hook 'litcoffee-mode-hook 'my-coffee-mode-hook)
