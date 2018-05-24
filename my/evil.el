; Do not need to require when using `package-initialize`.
;(require 'evil)

(evil-mode 1)

; From https://stackoverflow.com/questions/23798021/disabling-evil-mode-for-nav-in-emacs-or-any-read-only-buffers
; Could use `(evil-set-initial-state 'dired-mode 'emacs)`.
(add-to-list 'evil-emacs-state-modes 'dired-mode)
