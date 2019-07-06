;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;; Show all outlines while diffing org-mode files
(after! (ediff org)
  (add-hook 'ediff-prepare-buffer-hook
            (lambda () (when (eq major-mode 'org-mode) (outline-show-all)))))

(setq custom-file (expand-file-name "custom.el" doom-private-dir))
(when (file-readable-p custom-file)
  (load custom-file))
