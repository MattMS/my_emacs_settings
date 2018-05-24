(defun my-eww-mode-hook ()
	(define-key eww-mode-map (kbd "<M-left>") 'eww-back-url)
)
(add-hook 'eww-mode-hook 'my-eww-mode-hook)

(defun my-eww-bookmark-mode-hook ()
	(define-key eww-bookmark-mode-map (kbd "<RET>") 'eww-bookmark-browse)
)
(add-hook 'eww-bookmark-mode-hook 'my-eww-bookmark-mode-hook)
