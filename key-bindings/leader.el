; https://github.com/noctuid/evil-guide#leader-key
(defvar my-leader-map (make-sparse-keymap) "Keymap for \"leader key\" shortcuts.")

(define-key my-leader-map "b" 'helm-bookmarks)

(define-key my-leader-map "d" 'kill-this-buffer)

; Open file explorer.
;
; - Default Emacs: `dired-at-point`.
; - Helm: `helm-find-files`.
; - Ranger (minimal): `deer`.
;
; In Ranger, use `f` to create a new file (or find existing).
;
(define-key my-leader-map "e" 'ranger)

(define-key my-leader-map "E" 'helm-projectile-find-file)

; Open buffer switcher.
;
; - Default Emacs: `list-buffers`.
;
(define-key my-leader-map "f" 'helm-buffers-list)

(define-key my-leader-map "F" 'ibuffer)

(define-key my-leader-map "l" 'avy-goto-line)

(define-key my-leader-map "L" 'avy-goto-char)

(define-key my-leader-map "n" 'evil-next-buffer)

(define-key my-leader-map "p" 'evil-prev-buffer)

; Start a Helm search in the current buffer.
; Requires at least 2 characters.
;
; - [Helm: search within buffer feature? @ Emacs Stack Exchange](https://emacs.stackexchange.com/questions/2563/helm-search-within-buffer-feature)
; - [Occur Mode @ Emacs wiki](https://www.emacswiki.org/emacs/OccurMode)
;
(define-key my-leader-map "s" 'helm-occur)

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
