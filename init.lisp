(in-package :lem-user)

;;; Enable vi mode
(lem-vi-mode:vi-mode)

;;; *
;;; * Keybindings / Normal mode
;;; *

(define-key lem-vi-mode:*normal-keymap* "C-d" 'next-page)

;;; *
;;; * Keybindings / Window management
;;; *

(define-command delete-active-window-or-exit () ()
  (if (one-window-p)
      (exit-lem)
      (delete-active-window)))

(define-key lem-vi-mode:*normal-keymap* "Space q" 'delete-active-window-or-exit)
(define-key lem-vi-mode:*normal-keymap* "Space Q" 'exit-lem)

(define-key lem-vi-mode:*normal-keymap* "Space h" 'window-move-left)
(define-key lem-vi-mode:*normal-keymap* "Space l" 'window-move-right)
(define-key lem-vi-mode:*normal-keymap* "Space k" 'window-move-up)
(define-key lem-vi-mode:*normal-keymap* "Space j" 'window-move-down)

(define-key lem-vi-mode:*normal-keymap* "Space w" 'save-current-buffer)
(define-key lem-vi-mode:*normal-keymap* "Space e" 'find-file)

(define-key lem-vi-mode:*normal-keymap* "Space n" 'split-active-window-vertically)
(define-key lem-vi-mode:*normal-keymap* "Space N" 'split-active-window-horizontally)

(define-key lem-vi-mode:*normal-keymap* "Space O" 'delete-other-windows)

(define-key lem-vi-mode:*normal-keymap* "C-w C-w" 'switch-to-last-focused-window)

;;; *
;;; * Keybindings / Files
;;; *

(define-key lem-vi-mode:*normal-keymap* "F1" 'revert-buffer)

(define-key lem-vi-mode:*normal-keymap* "s e" 'find-file-recursively)
(define-key lem-vi-mode:*normal-keymap* "s s" 'lem-core/commands/project::project-find-file)
(define-key lem-vi-mode:*normal-keymap* "s p" 'lem-core/commands/project::project-switch)
(define-key lem-vi-mode:*normal-keymap* "s b" 'select-buffer)

(define-command switch-to-other-buffer () ()
  (switch-to-buffer (other-buffer)))

(define-key lem-vi-mode:*normal-keymap* "Space a" 'switch-to-other-buffer)
(define-key lem-vi-mode:*normal-keymap* "C-o" 'previous-buffer)
(define-key lem-vi-mode:*normal-keymap* "C-t" 'next-buffer)

(define-key lem-vi-mode:*normal-keymap* "; g e" 'lem/grep:grep)

;;; C-] key is bugged
#+nil
(define-key lem-vi-mode:*normal-keymap* "C-]" 'lem-lisp-mode/internal::find-definitions)

;;; *
;;; * Keybindings / S-exp
;;; *

#+#:nil
(define-key lem-vi-mode:*normal-keymap* "C-c o" 'lem::kill-around-form)
(define-key lem-vi-mode:*normal-keymap* "C-c S" 'lem-paredit-mode:paredit-splice)
(define-key lem-vi-mode:*normal-keymap* "C-c C-c" 'lem-paredit-mode::paredit-wrap)
(define-key lem-vi-mode:*normal-keymap* "M-L" 'lem-paredit-mode::paredit-slurp)
(define-key lem-vi-mode:*normal-keymap* "M-K" 'lem-paredit-mode::paredit-barf)

;;; *
;;; * Keybindings / Eval
;;; *

;;; TODO change X
(define-key lem-vi-mode:*normal-keymap* "X" 'lem-lisp-mode:lisp-compile-defun)
(define-key lem-vi-mode:*normal-keymap* "; x" 'lem-lisp-mode:lisp-compile-defun)
(define-key lem-vi-mode:*normal-keymap* "Space x" 'lem-lisp-mode:lisp-compile-and-load-file)

;;; *
;;; * Keybindings / Places
;;; *

(define-command open-init-file () ()
    (lem:find-file
        (merge-pathnames "init.lisp" (lem:lem-home))))

(define-key lem-vi-mode:*normal-keymap* "; c v h" 'open-init-file)

;;; *
;;; * Colors
;;; *

(load (merge-pathnames "themes/fadedvision.lisp" (lem:lem-home)))

(load-theme "fadedvision")
