
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(require 'use-package)

(menu-bar-mode -1)

(setq inhibit-splash-screen t)

(setq frame-title-format
  '("Emacs - " (buffer-file-name "%f"
    (dired-directory dired-directory "%b"))))

(set-frame-font "Fira Mono-10")

(use-package doneburn-theme
  :ensure t
  :config (load-theme 'doneburn 'no-confirm))

(line-number-mode 1)
(column-number-mode 1)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package ivy
  :ensure t
  :config (ivy-mode 1))
(use-package counsel
  :ensure t)
(use-package swiper
  :ensure t)

(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)

(setq ivy-re-builders-alist
      '((t . ivy--regex-fuzzy)))

(use-package company
  :ensure t)
(add-hook 'after-init-hook 'global-company-mode)

(use-package magit
  :ensure t)
