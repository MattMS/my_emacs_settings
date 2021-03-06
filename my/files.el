; Place backup files in "temp" folder instead of beside original.
;
; https://www.emacswiki.org/emacs/BackupDirectory
;
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))

; Refresh buffers when files change.
;
; [How to have Emacs auto-refresh all buffers when files have changed on disk? @ Stack Overflow](https://stackoverflow.com/questions/1480572/how-to-have-emacs-auto-refresh-all-buffers-when-files-have-changed-on-disk)
;
;(global-auto-revert-mode t)

; Function that is meant to save backups in dated folders.
; Seems like it would have trouble with same named files modified on the same day.
;
; Replaces an existing built-in function.
;
; From https://www.emacswiki.org/emacs/BackupDirectory
;
;; (defun make-backup-file-name (FILE)
;; 	(let
;; 		(
;; 			(dirname (concat "~/.backups/emacs/" (format-time-string "%y/%m/%d/")))
;; 		)
;; 		(if (not (file-exists-p dirname))
;; 			(make-directory dirname t)
;; 		)
;; 		(concat dirname (file-name-nondirectory FILE))
;; 	)
;; )
