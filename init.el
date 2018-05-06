(require 'org)
(org-babel-load-file
 (expand-file-name "settings.org"
                   user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-quickhelp-color-background "#e8e8e8")
 '(company-quickhelp-color-foreground "#444444")
 '(custom-safe-themes
   (quote
    ("3e8b8f5250d039d468e878aee28e49412d2dd04f1717083a408619ddcea7f308" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(org-agenda-files (list org-directory))
 '(org-directory "~/org")
 '(package-selected-packages
   (quote
    (org-protocol emojify mastodon which-key web-mode solarized-theme smartparens quelpa-use-package powerline php-extras nodejs-repl magit lsp-ui lsp-php helm-company evil-org evil-leader elfeed-org doneburn-theme counsel company-php company-lsp circe aggressive-fill-paragraph ac-php)))
 '(pdf-view-midnight-colors (quote ("#444444" . "#eeeeee"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
