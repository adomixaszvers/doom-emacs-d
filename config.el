;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;; Show all outlines while diffing org-mode files
(setq custom-file (expand-file-name "custom.el" doom-private-dir))
(when (display-graphic-p)
  (setq doom-theme 'doom-dracula))
(after! (ediff org)
  (add-hook 'ediff-prepare-buffer-hook
            (lambda () (when (eq major-mode 'org-mode) (outline-show-all)))))
(after! direnv (add-hook 'before-hack-local-variables-hook #'direnv-update-environment))
(after! nix-mode
  (set-company-backend! 'nix-mode nil))

(setq +rss-elfeed-files `(,(expand-file-name "elfeed.org" doom-private-dir)))
(when (file-readable-p custom-file)
  (load custom-file))
(add-hook 'dired-mode-hook
          (lambda ()
            (when (file-remote-p dired-directory)
              (setq-local dired-actual-switches "-alhB"))))
