; https://www.emacswiki.org/emacs/SmoothScrolling

; Scroll window under mouse.
(setq mouse-wheel-follow-mouse 't)

; Do not accelerate scrolling.
(setq mouse-wheel-progressive-speed nil)

; Mouse scroll one line at a time.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))

; Keyboard scroll one line at a time.
(setq scroll-step 1)
