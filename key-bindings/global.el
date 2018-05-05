(global-set-key (kbd "C-h a") 'helm-apropos)

; Evil defaults `C-n` to `evil-paste-pop-next`.
; Need to define evil-normal-state-map otherwise it will not work everywhere.
;(define-key evil-normal-state-map (kbd "C-t") 'new-frame)
;(global-set-key (kbd "C-t") 'new-frame)

(global-set-key (kbd "C-q") 'delete-frame)
(global-set-key (kbd "C-S-q") 'save-buffers-kill-terminal)

;(global-set-key (kbd "C-x") ctl-x-map)
(global-set-key (kbd "M-x") 'helm-M-x)
