
;;; init.el --- Load all org-related files
;; This is the first thing to get loaded.
;;
;; Ensure use-package is available from melpa-stable
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (add-to-list 'package-archives
               '("melpa-stable" . "http://stable.melpa.org/packages/") t)
  (package-refresh-contents)
  (package-initialize)
  (package-install 'use-package))


;; Setting directories to load files
(setq emacs-files-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Load up Org Mode and Babel
(use-package org)
;; Load org-files
(org-babel-load-file (expand-file-name "Main.org" emacs-files-dir))
(org-babel-load-file (expand-file-name "jf_org_ref_reftex_setup.org" emacs-files-dir))
