;; To have consistent fonts accross all kinds of emacs(gui, dameon, console) aside from this setting there must be "Emacs.font: FONT" with exactly the same FONT as defined here.
(set-default-font "DejaVu Sans Mono-10")

(load-theme 'base16-default-dark t)

(global-linum-mode 1) ;; display line numbers in margin
(column-number-mode 1) ;; display cursor column position

;; setting to get rid of delay when closing frame
(setq x-select-enable-clipboard-manager nil)

(electric-pair-mode 1) ;; turn on automatic bracket insertion by pairs

;; turn on paren match highlighting
(setq show-paren-delay 0)
(show-paren-mode 1)
(setq show-paren-style 'mixed)

;; make indentation commands use space only (never tab character), set default tab char's display width to 4 spaces and make tab key do indent first then completion
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default tab-always-indent 'complete)

;; defined TODO task list files
(setq org-agenda-files (list "~/Dropbox/todo/personal.org"
                             "~/Dropbox/todo/professional.org" 
                             "~/Dropbox/todo/open-source.org"))

;; defined backup and autosave directory with flat structure
(setq backup-directory-alist
      `((".*" . ,"~/.emacs.d/emacs-backup/")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacs.d/emacs-autosaved/" t)))

(recentf-mode 1) ;; keep a list of recently opened files

(global-visual-line-mode 1) ;; line soft wrapping at word boundary

(tool-bar-mode -1) ;; disable tool bar

;; tabbar customizations
(tabbar-mode 1)

(set-face-attribute
 'tabbar-default nil
 :background "#383838"
 :foreground "#383838"
 :height 1.1)
(set-face-attribute
 'tabbar-unselected nil
 :foreground "white"
 :box '(:color "#383838" :style released-button))
(set-face-attribute
 'tabbar-selected nil
 :background "#cecece"
 :foreground "#212121"
 :box '(:line-width 3 :color "#383838" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "#cecece"
 :height 1.0)
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "#383838" :style nil))

(add-hook 'after-init-hook 'global-company-mode)

(yas-global-mode 1)
