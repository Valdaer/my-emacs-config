(defun toggle-comment ()
  (interactive)
  (let ((start (line-beginning-position))
	(end (line-end-position)))
    (when (region-active-p)
      (setq start (save-excursion
		    (goto-char (region-beginning))
		    (beginning-of-line)
		    (point))
	    end (save-excursion
		  (goto-char (region-end))
		  (end-of-line)
		  (point))))
    (comment-or-uncomment-region start end)
    (setq deactivate-mark nil)))

(defun my-org-mode-keys ()
  "Modify keymaps used by org-mode."
  (local-set-key (kbd "M-c") 'org-todo)
  (local-set-key (kbd "M-<prior>") 'org-priority-up)
  (local-set-key (kbd "M-<next>") 'org-priority-down))

;; moving text line/region with Alt+PageUpDown
(move-text-default-bindings)

;; needed to override ergoemacs change because of not working local setting org-todo in org-mode
(global-set-key (kbd "M-c") 'rename-file)

;; override Ctrl+/ to comment, removal from undo-tree-map keymap is also neccesary
(global-set-key (kbd "C-/") 'toggle-comment)
(define-key undo-tree-map (kbd "C-/") nil)

;; change the behaviour of standard Ctrl+PageUpDown shortcuts to sync with tabbar mode
(global-set-key (kbd "C-<next>") 'tabbar-forward-tab)
(global-set-key (kbd "C-<prior>") 'tabbar-backward-tab)
(global-set-key (kbd "C-M-<next>") 'tabbar-forward-group)
(global-set-key (kbd "C-M-<prior>") 'tabbar-backward-group)

(global-set-key (kbd "s-a") 'org-todo-list) ;; Open agenda TODO task list
(global-set-key (kbd "C-e") 'recentf-open-files) ;; Open rqecent files

(global-set-key (kbd "C-SPC") 'company-complete)

(add-hook 'org-mode-hook 'my-org-mode-keys)

