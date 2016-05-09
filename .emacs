(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/ecb/")

(setq backup-directory-alist '((".*" . "~/.saves")))
(setq backup-by-copying t)
(setq auto-save-file-name-transforms '((".*" "~/.saves" t)))

(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)

(setq inhibit-startup-screen t)
(setq inhibit-splash-screen t)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq c-basic-offset 4)
(setq fill-column 160)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'meta)

(c-add-style "WebKit" '("Google" 
                        (c-basic-offset . 4)
                        (c-offsets-alist . ((innamespace . 0)
                                            (access-label . -)
                                            (case-label . 0)
                                            (member-init-intro . +)
                                            (topmost-intro . 0)))))


(defun cc-other-file()
  "Toggles source/header file"
  (interactive)
  (let ((buf (current-buffer))
        (name (file-name-sans-extension (buffer-file-name)))
        (other-extens 
         (cadr (assoc (concat "\\." 
                              (file-name-extension (buffer-file-name))
                              "\\'") 
                      cc-other-file-alist))))
    (dolist (e other-extens)
      (if (let ((f (concat name e)))
            (and (file-exists-p f) (find-file f)))
          (return)))
    )
  )
(global-set-key (kbd "M-o") 'ff-get-other-file)

;;(require 'clang-format)
;;(add-hook 'c-mode-common-hook (function (lambda () (local-set-key (kbd "TAB") 'clang-format-region))))

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
(helm-mode t)
(setq helm-autoresize-max-height 30)
(setq helm-autoresize-min-height 30)
(helm-autoresize-mode t)

(set-face-attribute 'helm-selection nil :background "#060606")

(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x f") 'helm-locate)


(setq helm-buffers-fuzzy-matching t helm-recentf-fuzzy-match t)
(global-set-key (kbd "C-x C-B") 'helm-mini)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z") 'helm-select-action) ; list actions using C-z


(require 'ecb-autoloads)

(require 'ido)
(ido-mode t)

(require 'gyp)
