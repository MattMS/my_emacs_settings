(require 'package)

; Use `(add-to-list 'package-archives '())` to add package sources.
; (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")))
; https://melpa.org/#/getting-started
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

; Automatically added after calling `M-x list-packages`.
; https://www.emacswiki.org/emacs/InstallingPackages
(package-initialize) 


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
	'(custom-safe-themes
		 (quote
			 ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
	'(package-selected-packages
		 (quote
			 (avy coffee-mode company company-flx evil evil-surround flx go-mode helm helm-ebdb helm-flx helm-projectile literate-coffee-mode magit markdown-mode perspective projectile pug-mode ranger rg ripgrep solarized-theme yaml-mode)))
 '(tab-width 4))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; Disable the super-slow-loading `view-hello-file`.
;
; https://emacs.stackexchange.com/questions/12383/how-to-unbind-a-key
;
(global-unset-key (kbd "C-h h"))

; https://emacs.stackexchange.com/questions/9583/how-to-treat-underscore-as-part-of-the-word
(modify-syntax-entry ?_ "w")

(put 'dired-find-alternate-file 'disabled nil)

; From http://ergoemacs.org/emacs/emacs_encoding_decoding_faq.html
(set-language-environment "UTF-8")

; Default on Windows is `'prefer-utf-8-dos`.
;
; From https://stackoverflow.com/questions/9760290/emacs-change-default-line-ending
;
(setq-default buffer-file-coding-system 'prefer-utf-8-unix)

; Disable audio bell.
;
; From https://www.emacswiki.org/emacs/AlarmBell
;
(setq ring-bell-function 'ignore)


; https://stackoverflow.com/questions/2079095/how-to-modularize-an-emacs-configuration
(defun load-user-file (file)
	; `f` argument indicates this function expects an existing file.
	(interactive "f")
	(load-file (expand-file-name file user-emacs-directory))
)

(load-user-file "adjust-value.el")
(load-user-file "fix-line-endings.el")
(load-user-file "new-line.el")

;(load-user-file "my/auto-complete.el")
(load-user-file "my/coffee.el")
(load-user-file "my/company.el")
(load-user-file "my/dired.el")
;(load-user-file "my/ede.el")
(load-user-file "my/eww.el")
(load-user-file "my/go.el")
(load-user-file "my/glasses.el")
(load-user-file "my/ibuffer.el")
(load-user-file "my/js.el")
(load-user-file "my/projectile.el")
(load-user-file "my/pug.el")
(load-user-file "my/ranger.el")
(load-user-file "my/time.el")

(load-user-file "my/evil.el")
(load-user-file "my/evil-surround.el")
(load-user-file "my/helm.el")
(load-user-file "my/helm-bookmark.el")
(load-user-file "my/helm-projectile.el")

(load-user-file "my/files.el")
(load-user-file "my/interface.el")
(load-user-file "my/indent.el")
(load-user-file "my/mouse.el")
(load-user-file "my/whitespace.el")

(load-user-file "key-bindings/evil.el")
;(load-user-file "key-bindings/helm.el")
(load-user-file "key-bindings/leader.el")
;
; Do global last, since it may replace others.
(load-user-file "key-bindings/global.el")

(load-user-file "mode-hooks/lisp.el")
(load-user-file "mode-hooks/python.el")
(load-user-file "mode-hooks/yaml.el")

(server-start)
