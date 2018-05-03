(define-key helm-buffer-map (kbd "TAB") 'helm-maybe-exit-minibuffer)

(define-key helm-find-files-map (kbd "TAB") 'helm-ff-RET)

; Default for `TAB` is `helm-select-action`.
;(define-key helm-map (kbd "TAB") 'helm-select-action)
