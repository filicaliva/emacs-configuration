(add-to-list 'load-path "~/.emacs.xd/lisp")
(setq ergoemacs-theme nil)
(setq ergoemacs-keyboard-layout "colemak")
(ergoemacs-mode 1)

(define-fringe-bitmap 'right-curly-arrow
  [#b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000])
(define-fringe-bitmap 'left-curly-arrow
  [#b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000
   #b00000000])


(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(set-default 'truncate-lines t)

(require 'smex)
(smex-initialize)

(setq show-paren-style 'expression)
(show-paren-mode 2)

(menu-bar-mode -1)
(tool-bar-mode -1)
 

(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
(setq auto-save-default         nil) ; Don't want any auto saving


(global-linum-mode 1)
(load-theme 'monokai-pro t)


(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)


;; built-in
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))

(global-set-key (kbd "<f2>") 'bs-show)



(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(add-to-list 'default-frame-alist '(font . "Cascadia Code PL-16"))
(set-face-attribute 'default t :font  "Cascadia Code PL-16" )
(set-frame-font "Cascadia Code PL-16"  nil t)

(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)
(setq centaur-tabs-style "chamfer")
(setq centaur-tabs-set-icons t)

