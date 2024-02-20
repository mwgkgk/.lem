;;; Fri Feb 16 18:26:02 UTC 2024

(in-package #:lem-user)

(define-color-theme "fadedvision" ()
  (:display-background-mode :dark)
  (:foreground "#5fff5f")
  (:background "#080808")
  (:inactive-window-background nil)
  (region :foreground nil :background "#005f00")
  (modeline :bold t :foreground "#8a8a8a" :background "#121212")
  (modeline-inactive :bold t :foreground "#6c6c6c" :background "#121212")
  (syntax-warning-attribute :foreground "#ffff00")
  (syntax-string-attribute :foreground "#00d75f")
  (syntax-comment-attribute :foreground "#008700")
  (syntax-keyword-attribute :foreground "#00ff00")
  (syntax-constant-attribute :foreground "#00d75f")
  (syntax-function-name-attribute :foreground "#87ff00")
  (syntax-variable-attribute :foreground "#87ff00")
  (syntax-type-attribute :foreground "#00ff00")
  ;; Btw builtin is used instead of keyword so theres that
  (syntax-builtin-attribute :bold t :foreground "#00ff00"))
