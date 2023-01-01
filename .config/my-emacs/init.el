(load-file "~/.config/my-emacs/homeVar.el")

;; Hide the start up message
(setq inhibit-startup-message t)
(setq visible-bell t)
(setq make-backup-files nil)

;; Ui tweaks
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Keymaps
;; Let esc quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
(setq display-line-numbers 'relative)
;; Allow disabling on certain buffers
(dolist (mode '(shell-mode-hook eshell-mode-hook))
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

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init 'org)
  (evil-collection-init 'helpful)
  (evil-collection-init 'dired))

;; Themes using doom 
(use-package doom-themes
     :config
         (load-theme 'doom-one t)
)


;; Completion: Using vertico for completion https://github.com/minad/vertico
(use-package vertico
  :init
  (vertico-mode))

(use-package marginalia
  :after vertico
  :init
  (marginalia-mode))

(use-package consult)

(use-package orderless
:custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))


;; End Completion


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
  :bind
  ([remap describe-function] . helpful-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . helpful-variable)
  ([remap describe-key] . helpful-key))





;; hydra for temporary keycommand. Good for scaling etc


(use-package projectile
  :config (projectile-mode)
;;  :init
;;  (when (file-directory-p "~/workspace/")
;;    (setq projectile-project-search-path '("~/workspace/")))
  )
;;(setq projectile-ignored-projects "~/") ;Stop root listed as project
(setq projectile-track-known-projects-automatically nil)
(add-to-list 'projectile-globally-ignored-directories "node_modules")
(add-to-list 'projectile-globally-ignored-directories "build")

;; Better grep rip-grep
(use-package rg)

;; Git 
(use-package magit)

;; ORG Start
(use-package org)
(use-package org-bullets
  :after org
  :hook ((org-mode . org-bullets-mode)
	 (org-mode . org-indent-mode)))

(setq org-agenda-files
      (list my-agenda-files))
(setq org-default-notes-file (concat org-directory "/todo.org"))

(use-package org-roam
  :custom
  (org-roam-directory (file-truename "~/org-roam/"))
  :config
  (org-roam-setup)
  (org-roam-db-autosync-mode))

;; Normal capture templates - not roam
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/notes.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %U %? %i")
	("d" "Deadline Task" entry (file+headline "~/org/todo.org" "Tasks")
	 "* TODO  %?\n   DEADLINE: %t   %i\n   %a")))

;; Needed to show tags on find / search for tags 
(setq org-roam-node-display-template
      (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))

;; ORG End

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



(use-package general
  :config
  (general-create-definer stix/leader-keys
			  :prefix "SPC")
  (stix/leader-keys
    :states 'normal
    :keymaps 'override
    ;;"bs" 'switch-to-buffer
    "b"   '(:wk "Buffer")
    "bb"  'switch-to-buffer
    "bk"  'kill-buffer
    "bs"  'switch-to-buffer ;; opens preview + ?
    "f"   '(:wk "Find")
    "fc"  '(lambda () (interactive) (find-file my-config-folder))
    "ff"  'find-file
    "fr"  'org-roam-node-find
    "gg"  'magit-status
    "o"   '(:wk "Org")
    "oa"  'org-agenda
    "oc"  'org-capture
    "oi"  '(:wk "Insert")
    "oid" 'org-deadline
    "oil" 'org-insert-link
    "ois" 'org-schedule
    "or"  '(:wk "Roam")
    "orb" 'org-roam-buffer-toggle
    "orc" 'org-roam-capture
    "orf" 'org-roam-node-find
    "ori" 'org-roam-node-insert
    "p"   'projectile-command-map
    "s"   'save-buffer
    ))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org-roam rg emacs-rg orderless consult typescript-mode lsp-mode evil-collection evil-magit magit general helpful which-key rainbow-delimiters rainbow-delimeters all-the-icons doom-modeline use-package evil doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
