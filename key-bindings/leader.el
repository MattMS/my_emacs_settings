; From http://emacsredux.com/blog/2013/04/28/switch-to-previous-buffer/
(defun switch-to-previous-buffer ()
	"Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
	(interactive)
	(switch-to-buffer (other-buffer (current-buffer) 1))
)

; https://github.com/noctuid/evil-guide#leader-key
(defvar my-leader-map (make-sparse-keymap) "Keymap for \"leader key\" shortcuts.")

(define-key my-leader-map "b" 'helm-bookmarks)

(define-key my-leader-map "d" 'kill-this-buffer)

; Delete the current frame.
;
(define-key my-leader-map "D" 'delete-frame)

; Search for file in folder.
;
; - Default Emacs: `dired-at-point`.
; - Helm: `helm-find-files`.
; - Ranger (full): `ranger`.
; - Ranger (minimal): `deer`.
;
; In Helm, can just type the file name to create it.
;
; In Ranger, use `f` to create a new file (or find existing).
; `; +` to create a folder.
; `C-p` to switch to Dired.
;
(define-key my-leader-map "e" 'helm-find-files)

; Open file-system navigator.
;
(define-key my-leader-map "E" 'deer)

; Open buffer switcher.
;
; - Default Emacs: `list-buffers`.
;
(define-key my-leader-map "f" 'helm-buffers-list)

; Open buffer manager.
;
(define-key my-leader-map "F" 'ibuffer)

(define-key my-leader-map "l" 'avy-goto-line)

(define-key my-leader-map "L" 'avy-goto-char)

; Create a new buffer.
;
;(define-key my-leader-map "n" 'new-frame)

; Create a new frame.
;
; Switch to previous buffer with `evil-next-buffer`.
;
(define-key my-leader-map "N" 'new-frame)

(define-key my-leader-map "p" 'switch-to-previous-buffer)

; Search for file in project.
;
; Switch to previous buffer with `evil-prev-buffer`.
;
(define-key my-leader-map "P" 'helm-projectile-find-file)


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
