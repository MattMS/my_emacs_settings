; Add C-c for changing back to Normal-mode.
;(define-key evil-emacs-state-map "\C-c" 'evil-force-normal-state)
(define-key evil-insert-state-map "\C-c" 'evil-normal-state)
(define-key evil-motion-state-map "\C-c" 'evil-normal-state)
(define-key evil-operator-state-map "\C-c" 'evil-normal-state)
(define-key evil-replace-state-map "\C-c" 'evil-normal-state)
(define-key evil-visual-state-map "\C-c" 'evil-normal-state)

; ------------------------------
; Evil insert-state key-bindings
; ------------------------------

; Add C-v for paste (yank).
(define-key evil-insert-state-map "\C-v" 'yank)

; ------------------------------
; Evil normal-state key-bindings
; ------------------------------

; `RET` is ASCII 13.
;
(define-key evil-normal-state-map (kbd "RET") 'my-new-line-after)
(define-key evil-normal-state-map (kbd "<S-return>") 'my-new-line-before)

; https://www.gnu.org/software/emacs/manual/html_node/emacs/Comment-Commands.html
;
; `/` is ASCII 47.
;
(define-key evil-normal-state-map (kbd "C-/") 'comment-line)

; `C-a` replaces `beginning-of-line`.
(define-key evil-normal-state-map (kbd "C-a") 'increment-value-at-point)
(define-key evil-normal-state-map (kbd "C-S-a") 'decrement-value-at-point)

; `J`/`S-j` joins the current and next lines.

(define-key evil-normal-state-map (kbd "K") 'newline)

; `C-n` is used for navigating to next option, so should not be replaced.

; `C-p` is used for navigating to previous option, so should not be replaced.

(define-key evil-normal-state-map "\C-s" 'save-buffer)

; `C-x` is a common Emacs keymap (like `C-x C-c`), so we cannot replicate the Vim decrement key.

; ------------------------------
; Evil visual-state key-bindings
; ------------------------------

(define-key evil-visual-state-map (kbd "C-/") 'comment-or-uncomment-region)
