(defun my-dired-visit-parent-folder ()
	(interactive)
	(find-alternate-file "..")
)

(defun my-dired-mode-hook ()
	(dired-hide-details-mode)

	(define-key dired-mode-map (kbd "SPC") my-leader-map)

	; `g` is normally `revert-buffer`.
	(define-key dired-mode-map (kbd "g") 'evil-goto-first-line)

	; `G` is normally `dired-do-chgrp`.
	(define-key dired-mode-map (kbd "G") 'evil-goto-line)

	; Use `dired-up-directory` to keep the buffer.
	(define-key dired-mode-map (kbd "h") 'my-dired-visit-parent-folder)

	(define-key dired-mode-map (kbd "j") 'evil-next-line)

	(define-key dired-mode-map (kbd "k") 'evil-previous-line)

	; Use `dired-find-file` to keep the buffer.
	(define-key dired-mode-map (kbd "l") 'dired-find-alternate-file)
)
(add-hook 'dired-mode-hook 'my-dired-mode-hook)
