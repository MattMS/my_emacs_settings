; https://github.com/noctuid/evil-guide#leader-key
(defvar my-leader-map (make-sparse-keymap) "Keymap for \"leader key\" shortcuts.")

(define-key my-leader-map "b" 'helm-bookmarks)

(define-key my-leader-map "d" 'kill-this-buffer)

; Without Helm, use `dired-at-point`.
(define-key my-leader-map "e" 'helm-find-files)

; Without Helm, use `list-buffers`.
(define-key my-leader-map "f" 'helm-buffers-list)

(define-key my-leader-map "n" 'evil-next-buffer)

(define-key my-leader-map "p" 'evil-prev-buffer)

; Duplicates the `C-w` key-map.
(define-key my-leader-map "w" 'evil-window-map)

;(define-key my-leader-map (kbd "SPC") 'self-insert-command)

; Cannot use `global-set-key` alone since it blocks using spaces in insert-mode.
; `evil-motion-state-map` is needed for help buffers.
; Fails in `*Buffer list*` and `*Completions*`.
;
;(global-set-key (kbd "SPC") my-leader-map)
;(define-key evil-insert-state-map (kbd "SPC") 'self-insert-command)
;(define-key minibuffer-local-map (kbd "SPC") 'self-insert-command)
;
(define-key evil-motion-state-map (kbd "SPC") my-leader-map)
(define-key evil-normal-state-map (kbd "SPC") my-leader-map)
