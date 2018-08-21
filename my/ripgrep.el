(defun my-ripgrep-mode-hook ()
	(define-key ripgrep-search-mode-map (kbd "<ret>") 'compile-goto-error)
)
(add-hook 'ripgrep-mode-hook 'my-ripgrep-mode-hook)
