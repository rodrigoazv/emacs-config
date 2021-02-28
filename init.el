;; Remover boas vindas
(setq inhibit-startup-message t)

;; Remover menus
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remover barra de rolagem
(scroll-bar-mode -1)

;; Numeros nas linhas
(global-linum-mode t)

;; Tamanho da fonte
(set-face-attribute 'default nil :height 150)

;; Pacotes
(require 'package)
(setq package-enable-at-startup nil) ;; desabilitar inicio de ativacao de pacotes

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize) ; initialize package

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-mode)
    (which-key-setup-side-window-right-bottom)
  )
)

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
  )
)

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :config
  (progn
   (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind(("C-\\" . 'neotree-toggle))
)


(use-package ace-window
  :ensure t
  :bind (("M-o" . ace-window)))

(use-package rebecca-theme
  :ensure t
  :config (load-theme 'rebecca))

;; check sintax
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))
;;theme
;; Novos atalhos

(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "M-<down>") 'enlarge-window)
(global-set-key (kbd "M-<up>") 'shrink-window)
(global-set-key (kbd "M-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-<right>") 'shrink-window-horizontally)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-safe-themes
   (quote
    ("7178dc309d5bb89e9de6feddd71058ddf8cb947bbf08ea6c7799a03ae690449e" default)))
 '(package-selected-packages
   (quote
    (flycheck rebecca-theme ace-window all-the-icons neotree which-key try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
