; Default for `TAB` is `helm-select-action`.
(define-key helm-map (kbd "TAB") nil)

(define-key helm-buffer-map (kbd "TAB") 'helm-maybe-exit-minibuffer)
(define-key helm-buffer-map (kbd "C-i") 'helm-select-action)

(define-key helm-find-files-map (kbd "TAB") 'helm-ff-RET)
(define-key helm-find-files-map (kbd "C-i") 'helm-select-action)
