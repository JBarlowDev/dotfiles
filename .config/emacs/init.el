;; Hide the start up message
(setq inhibit-startup-message t)
(setq visible-bell t)

;; Ui tweaks
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Keymaps
;; Let esc quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-M-n") 'counsel-switch-buffer)

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers 'relative)
;; Allow disabling on certain buffers
(dolist (mode '(shell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless package-archive-contents
	(package-refresh-contents))

;; Use package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(defun stix/evil-hook ()
  (dolist (mode '(dired-mode))
  (add-to-list 'evil-emacs-state-modes mode)))

;; Get evil
(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  )

(use-package evil-collection)

;; Themes using doom 
(use-package doom-themes
     :config
         (load-theme 'doom-one t)
)

;; Ivy for completion
(use-package ivy
  :diminish
  :config
  (ivy-mode 1))

(use-package counsel
  :bind (("M-x" . counsel-M-x))
  )

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))


;; Mode line at bottom of screen
;; TODO look at options
(use-package doom-modeline
  :init (doom-modeline-mode 1))
;; Needs M-x all-the-icons-install-fonts
(use-package all-the-icons)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.3))


;; Improve help pages (need to actually understand this)
(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))





;; hydra for temporary keycommand. Good for scaling etc


(use-package projectile
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :init
  (setq projectile-switch-project-action #'counsel-dired)
  (when (file-directory-p "~/workspace")
    (setq projectile-project-search-path '("~/workspace")))
  )
(use-package counsel-projectile
  :config (counsel-projectile-mode))


(use-package magit)


(use-package org)
(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode))

(setq org-agenda-files
      '("~/workspace/jbarlow-website/org-files/tasks.org"))

;; LSP
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "SPC n")
  :config
  (lsp-enable-which-key-integration t))

;; npm i -g typescript-language-server; npm i -g typescript
;; M-xlsp-install-serverRETts-lsRET
(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)



(use-package general
  :config
  (general-create-definer stix/leader-keys
			  :prefix "SPC")
  (stix/leader-keys
    :keymaps 'normal
    ;;"bs" 'switch-to-buffer
    "b"   '(:wk "Buffer")
    "bk"  'kill-buffer
    "bs"  'counsel-switch-buffer ;; opens preview + ?
    "f"   '(:wk "Find")
    "fc"  '(lambda () (interactive) (find-file "~/.config/emacs"))
    "ff"  'find-file
    "fg"  'counsel-projectile-rg
    "fp"  'counsel-projectile-find-file
    "gg"  'magit-status
    "o"   '(:wk "Org")
    "oa"  'org-agenda
    "oc"  'org-capture
    "oi"  '(:wk "Insert")
    "ois" 'org-schedule
    "oid" 'org-deadline
    "p"   'projectile-command-map
    "s"   'save-buffer
    ))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(typescript-mode lsp-mode evil-collection evil-magit magit counsel-projectile general helpful ivy-rich which-key rainbow-delimiters rainbow-delimeters all-the-icons doom-modeline use-package ivy evil doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
