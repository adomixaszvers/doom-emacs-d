;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;; Show all outlines while diffing org-mode files
(after! (ediff org)
  (add-hook 'ediff-prepare-buffer-hook
            (lambda () (when (eq major-mode 'org-mode) (outline-show-all)))))
