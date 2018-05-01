; Automatically added after calling `M-x list-packages`.
; https://www.emacswiki.org/emacs/InstallingPackages
(package-initialize) 
(require 'package)

; Use `(add-to-list 'package-archives '())` to add package sources.
; (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")))
; https://melpa.org/#/getting-started
;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages (quote (helm helm-ebdb evil solarized-theme)))
 '(tab-width 4))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'helm-config)
(helm-mode 1)
;
; https://github.com/emacs-helm/helm/wiki/Fuzzy-matching
(setq helm-apropos-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-candidate-number-limit 64)
(setq helm-completion-in-region-fuzzy-match t)
(setq helm-M-x-fuzzy-match t)
(setq helm-mode-fuzzy-match t)

(global-ede-mode t)

; Must come after the `custom-set-variables` block.
(load-theme 'solarized-dark)
;(load-theme 'solarized-light)

; `-1` hides the toolbar.
; Does not accept `f` or `nil`.
(tool-bar-mode -1)


(require 'evil)
(evil-mode 1)


(set-face-attribute
	'default nil
	:family "Ubuntu Mono"
	:height 160
)

; The `q` stands for "quoted", as in the first argument is quoted.
; https://www.gnu.org/software/emacs/manual/html_node/eintr/Using-setq.html
(setq-default
	indent-tabs-mode
	t  ; default
)

; Avoid buffers (like help) opening a new window.
; https://www.emacswiki.org/emacs/OneWindow
(setq
	pop-up-windows
	nil
)

(setq
	tab-width
	4
)

;user-mail-address
;"name@example.com"

(setq
	whitespace-style
	'(
		; `face` is required to visualise with faces.
		face
		indentation
		indentation::space
		indentation::tab
		space-after-tab
		space-before-tab
		spaces
		tabs
		tab-mark
		trailing
	)
)


; https://stackoverflow.com/questions/2079095/how-to-modularize-an-emacs-configuration
(defun load-user-file (file)
	(interactive "f")
	(load-file (expand-file-name file user-emacs-directory))
)

(load-user-file "adjust-value.el")
(load-user-file "new-line.el")

(load-user-file "key-bindings/evil.el")
(load-user-file "key-bindings/global.el")
(load-user-file "key-bindings/leader.el")

(load-user-file "mode-hooks/lisp.el")
(load-user-file "mode-hooks/python.el")
