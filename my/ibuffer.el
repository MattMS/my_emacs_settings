(defun my-ibuffer-mode-hook ()
	; 32
	(define-key ibuffer-mode-map (kbd "SPC") my-leader-map)

	; `g` is normally `ibuffer-update`.
	(define-key ibuffer-mode-map (kbd "g") 'evil-goto-first-line)

	; `G` is normally undefined.
	(define-key ibuffer-mode-map (kbd "G") 'evil-goto-line)

	; `j` is normally `ibuffer-jump-to-buffer`.
	(define-key ibuffer-mode-map (kbd "j") 'evil-next-line)

	; `k` is normally `ibuffer-do-kill-lines`.
	(define-key ibuffer-mode-map (kbd "k") 'evil-previous-line)

	; 191
	(define-key ibuffer-mode-map (kbd "/") 'isearch-forward)
)

(add-hook 'ibuffer-mode-hook 'my-ibuffer-mode-hook)
