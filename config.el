;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;; Show all outlines while diffing org-mode files
(after! (ediff org)
  (add-hook 'ediff-prepare-buffer-hook
            (lambda () (when (eq major-mode 'org-mode) (outline-show-all)))))

(setq custom-file (expand-file-name "custom.el" doom-private-dir))
(setq +rss-elfeed-files `(,(expand-file-name "elfeed.org" doom-private-dir)))
(when (file-readable-p custom-file)
  (load custom-file))
(add-hook 'dired-mode-hook
          (lambda ()
            (when (file-remote-p dired-directory)
              (setq-local dired-actual-switches "-alhB"))))
