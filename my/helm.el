; ## Setup
;
; Do not need to require when using `package-initialize`.
;
;(require 'helm-config)
;
(helm-mode 1)

(setq helm-candidate-number-limit 64)

; `t` opens Helm covering the whole frame (rather than in other split).
(setq helm-full-frame t)

; ## Fuzzy find
;
; https://github.com/emacs-helm/helm/wiki/Fuzzy-matching
;
(setq helm-apropos-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
;
; non-`nil` skips files in `helm-boring-file-regexp-list`.
(setq helm-ff-skip-boring-files t)
;
; non-`nil` enables fuzzy-matching in `helm-M-x`
(setq helm-M-x-fuzzy-match t)
;
; ### Enable globally
;
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-mode-fuzzy-match t)

; ## Key-bindings
;
; - `left` changes to previous source.
; - `right`/`C-o` changes to next source.

;(defun my-helm-mode-hook ()
;)
;(add-hook 'helm-mode-hook 'my-helm-mode-hook)
