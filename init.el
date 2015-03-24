(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(require 'ergoemacs-mode)
(require 'company)
(require 'yasnippet)

(add-to-list 'load-path "~/.emacs.d/json-mode/")
(add-to-list 'load-path "~/.emacs.d/json-reformat/")
(add-to-list 'load-path "~/.emacs.d/json-snatcher/")
(autoload 'json-mode "json-mode" "(fn)" t nil)


(load "~/.emacs.d/init_keybinding")
(load "~/.emacs.d/init_misc")
(load "~/.emacs.d/init_ergoemacs")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-scratch-message
   ";; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

")
 '(scroll-error-top-bottom nil)
 '(set-mark-command-repeat-pop nil)
 '(shift-select-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

