(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/ecb/")

(setq backup-directory-alist '(("." . "~/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

;; (setq tab-width 4)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'meta)

(custom-set-variables
 '(ecb-layout-name "left14")
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote ("~/git")))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-tip-of-the-day nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
(helm-autoresize-mode 1)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x f") 'helm-locate)
(global-set-key (kbd "C-x C-B") 'helm-mini)

(require 'ecb-autoloads)

(require 'ido)
(ido-mode t)

;;(require 'find-file-in-repository)
;;(global-set-key (kbd "C-x f") 'find-file-in-repository)
;;(global-set-key (kbd "C-,") 'find-file-in-repository)
;;(add-to-list 'find-file-patterns "*.h")
;;(add-to-list 'find-file-patterns "*.hpp")
;;(add-to-list 'find-file-patterns "*.c")
;;(add-to-list 'find-file-patterns "*.cc")
;;(add-to-list 'find-file-patterns "*.cpp")
;;(add-to-list 'find-file-patterns "*.gyp")
;;(add-to-list 'find-file-patterns "*.gypi")

(require 'gyp)
