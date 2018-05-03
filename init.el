(require 'package)

; Use `(add-to-list 'package-archives '())` to add package sources.
; (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")))
; https://melpa.org/#/getting-started
;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

; Automatically added after calling `M-x list-packages`.
; https://www.emacswiki.org/emacs/InstallingPackages
(package-initialize) 


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
	  (quote
		  ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
	  (quote
		  (auto-complete yaml-mode helm helm-ebdb evil solarized-theme)))
 '(tab-width 4))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


; https://stackoverflow.com/questions/2079095/how-to-modularize-an-emacs-configuration
(defun load-user-file (file)
	(interactive "f")
	(load-file (expand-file-name file user-emacs-directory))
)

(load-user-file "my/ede.el")
(load-user-file "my/evil.el")
(load-user-file "my/helm.el")

(load-user-file "my/interface.el")
(load-user-file "my/indent.el")
(load-user-file "my/whitespace.el")

;(setq user-mail-address "name@example.com")

(load-user-file "adjust-value.el")
(load-user-file "new-line.el")

(load-user-file "key-bindings/evil.el")
(load-user-file "key-bindings/global.el")
(load-user-file "key-bindings/helm.el")
(load-user-file "key-bindings/leader.el")

(load-user-file "mode-hooks/lisp.el")
(load-user-file "mode-hooks/python.el")
(load-user-file "mode-hooks/yaml.el")
