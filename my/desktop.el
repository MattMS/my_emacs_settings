; Maintain buffers between sessions.
;
; ## Commands
;
; `desktop-change-dir` to change desktop sessions.
;
; `desktop-clear`:
; - Closes all buffers except internal ones.
; - Clears global variables.
;
; `desktop-save` to manually save.
; `(desktop-save-mode 1)` will automatically save/restore sessions.
;
; ## Variables
;
; `desktop-restore-eager` controls how many buffers to load.
; Remaining buffers are lazy-loaded.
;
; ## Links
;
; https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Emacs-Sessions.html
;
; ---

;(desktop-save-mode 1)
