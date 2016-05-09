(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-autoface-mode nil)
 '(aquamacs-customization-version-id 307 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(default-frame-alist
    (quote
     ((tool-bar-lines . 0)
      (font-backend mac-ct ns)
      (fontsize . 0)
      (font . "-*-Consolas-normal-normal-normal-*-13-*-*-*-p-0-iso10646-1")
      (left-fringe . 3)
      (right-fringe . 11)
      (menu-bar-lines . 1)
      (fringe)
      (modeline . t)
      (internal-border-width . 0)
      (vertical-scroll-bars . right)
      (cursor-type . box)
      (background-color . "Grey15")
      (background-mode . dark)
      (border-color . "Grey")
      (cursor-color . "Grey")
      (foreground-color . "Grey")
      (mouse-color . "Grey")))) '(ecb-layout-name "left14")
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote
 mouse-1--C-mouse-1)) '(ecb-source-path (quote ("~/git")))
 '(ecb-tip-of-the-day nil) '(ns-tool-bar-display-mode (quote
 both) t) '(ns-tool-bar-size-mode (quote regular) t)
 '(safe-local-variable-values
   (quote
    ((require
      (\` gyp))
     (setq load-path
	   ("./src/tools/gyp/tools/emacs" load-path)))))
 '(visual-line-mode nil t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Grey15" :foreground "Grey" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Consolas")))))

;; (color-theme-initialize)
;; (color-theme-charcoal-black)


(global-set-key (kbd "M-[") 'previous-tab-or-buffer)
(global-set-key (kbd "M-]") 'next-tab-or-buffer)

(set-default-font "Consolas-12")
(add-to-list 'default-frame-alist '(font . "Consolas-12" ))
(set-face-attribute 'default t :font "Consolas-12" )

(global-set-key (kbd "M-1") 'tabbar-select-tab-1)
(global-set-key (kbd "M-2") 'tabbar-select-tab-2)
(global-set-key (kbd "M-3") 'tabbar-select-tab-3)
(global-set-key (kbd "M-4") 'tabbar-select-tab-4)
(global-set-key (kbd "M-5") 'tabbar-select-tab-5)
(global-set-key (kbd "M-6") 'tabbar-select-tab-6)
(global-set-key (kbd "M-7") 'tabbar-select-tab-7)

(global-unset-key (kbd "C-x C-c")) ;; to prevent accident exit

(require 'projectile)
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-switch-project-action 'helm-projectile-find-file)
(setq projectile-switch-project-action 'helm-projectile)

(setq projectile-use-native-indexing t)
;; (setq projectile-enable-caching t)

(global-set-key (kbd "C-,") 'helm-projectile-find-file)





