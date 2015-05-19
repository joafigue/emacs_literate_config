
;;; init.el --- Load all org-related files
;; This is the first thing to get loaded.
;;
;; Ensure req-package is available from melpa-stable
(package-initialize)
(unless (require 'req-package nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa-stable" . "http://stable.melpa.org/packages/") t)
  (package-refresh-contents)
  (package-initialize)
  (package-install 'req-package)
  (require 'req-package))

;; Setting directories to load files
(setq emacs-files-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Load up Org Mode and Babel
(req-package org)
;; Load org-files
   (org-babel-load-file (expand-file-name "Main.org" emacs-files-dir))
