(load-theme 'waker-theme)
(setq startup-screen-inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(blink-cursor-mode -1)
(window-numbering-mode 1)
(column-number-mode 1)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(use-package auctex
  :ensure t
  :hook ((LaTeX-mode . LaTeX-math-mode)))
(use-package cdlatex
  :ensure t
  :hook ((org-mode . turn-on-org-cdlatex)
         (LaTeX-mode . turn-on-cdlatex)))


(require 'smex)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "M-p") 'other-window)


(setq compilation-scroll-output t)
(setq compilation-always-kill t)
(setq compilation-ask-about-save nil)


;;; c-mode
(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "bsd")))
(setq-default mode-line-format nil)

(setq backup-by-copying t)
(setq backup-directory-alist `(("." . "~/backup/emacs")))

(set-frame-font '"-UKWN-IosevkaTerm Nerd Font Propo-light-normal-normal-*-*-*-*-*-*-0-iso10646-1" nil t)
(set-face-attribute 'default nil :height 170)

;; Ido mode
(ido-mode 1)
(ido-everywhere 1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("feb8e140f8b8df963089569d7fa1160261d6f8cab77c27b0fbe5d8084572a3f5"
     default))
 '(package-selected-packages
   '(auctex cdlatex jedi lsp-mode lsp-pyright magit pdf-tools smex
	    typst-preview window-numbering)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
