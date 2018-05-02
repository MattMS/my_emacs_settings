(require 'helm-config)

(helm-mode 1)

; https://github.com/emacs-helm/helm/wiki/Fuzzy-matching
(setq helm-apropos-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-candidate-number-limit 64)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-ff-skip-boring-files t)
(setq helm-M-x-fuzzy-match t)
(setq helm-mode-fuzzy-match t)
