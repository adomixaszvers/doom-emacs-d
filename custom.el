;;; ~/.config/doom/custom.el -*- lexical-binding: t; -*-

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (doom-dracula)))
 '(custom-safe-themes
   (quote
    ("f2b83b9388b1a57f6286153130ee704243870d40ae9ec931d0a1798a5a916e76" default)))
 '(display-line-numbers-type (quote visual))
 '(safe-local-variable-values
   (quote
    ((intero-targets "accumulate:lib" "accumulate:test:test")
     (intero-targets "twelve-days:lib" "twelve-days:test:test")
     (flycheck-disabled-checkers quote
                                 (emacs-lisp-checkdoc))
     (projectile-project-compilation-cmd . "home-manager switch")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
