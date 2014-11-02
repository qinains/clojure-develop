(custom-set-variables '(inhibit-startup-screen t))
(custom-set-faces  '(default ((t (:family "Œ¢»Ì—≈∫⁄" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))

;;≈‰÷√markdown≤Âº˛
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(defun markdown-custom()
  "markdown-mode-hook"
  (setq markdown-command ".emacs.d\\bin\\markdown"))
(add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))
