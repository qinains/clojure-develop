;;如果是windows系统，则修改HOME到DEVELOP_HOME/home目录下
(if (memq window-system '(w32))
    (progn
      (setenv "GIT_ASKPASS" "git-gui--askpass");;修复https的git push不了的问题
      (setenv "HOME" (concat DEVELOP_HOME "home/"))
      (add-to-list 'load-path "~/emacs/site-lisp")))

(require 'package)
;;安装melpa-stable插件
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)
(unless (package-installed-p 'cider) (package-refresh-contents))
(defvar melpa-stable-packages '(projectile
				company
				clojure-mode
				clojure-mode-extra-font-locking
				clj-refactor
				cider
				clojure-snippets   
				clojure-cheatsheet
				web-mode
				markdown-mode
				magit
				smex
				window-number
				rainbow-delimiters))

(dolist (p melpa-stable-packages)
  (unless (package-installed-p p)
    (package-install p)))

;;安装melpa插件
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(unless (package-installed-p 'smartparens) (package-refresh-contents))

(defvar melpa-packages '(sr-speedbar
			 smartparens
			 4clojure))

(dolist (p melpa-packages)
  (unless (package-installed-p p)
    (package-install p)))

;;C-x C-f后默认打开的文件夹
(setq default-directory "~/")

;; 当要回答yes或no时，直接输入y或n
(fset 'yes-or-no-p 'y-or-n-p)

;;记住上次打开的文件
(load "desktop")
(desktop-load-default)
(desktop-read)
(setq desktop-save-mode t)

;;主题
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(desktop-base-file-name ".emacs-desktop")
 '(desktop-dirname "~/.emacs.d/" t)
 '(desktop-path (quote ("~/.emacs.d/")))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-interval 10)
 '(display-time-mode t)
 '(display-time-use-mail-icon t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(current-language-environment "UTF-8")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(speedbar-default-position (quote left))
 '(speedbar-show-unknown-files t)
 '(speedbar-verbosity-level 0)
 '(sr-speedbar-default-width 17)
 '(sr-speedbar-right-side nil)
 '(tool-bar-mode nil)
 '(visible-bell t))

;;字体去这里下载
;;https://github.com/adobe-fonts/source-code-pro/releases/latest

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "outline" :slant normal :weight bold :height 113 :width normal))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#E52020"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#68A8FF"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#FA2473"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#A6E12B"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#FB951D"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#FF3040"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#0040FF"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#A000FF"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#00FF80")))))

;;开启ido模式，方便寻找文件
(ido-mode t)

;;配置markdown插件
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(defun markdown-custom()
  "markdown-mode-hook"
  (setq markdown-command "markdown"))
(add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))

;;配置clojure-mode
(require 'clojure-mode-extra-font-locking)
(add-hook 'clojure-mode-hook 'subword-mode)
(add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)

;;新行自动缩进
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;;配置clj-refactor
(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda () (clj-refactor-mode 1)
                               ;; insert keybinding setup here
			       ))

;;配置cider

;;编程模式的配置
(add-hook 'prog-mode-hook 'smartparens-global-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(global-company-mode)
(global-set-key "\t" 'company-complete-common)

;;显示左侧导航，按F9键可以切换
(require 'sr-speedbar)
(add-hook 'after-init-hook '(lambda () (sr-speedbar-toggle)))
(global-set-key [f9] 'sr-speedbar-toggle)

;;按F12键启动magit-status
(global-set-key [f12] 'magit-status)

;;扩展M-x功能
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;原配的M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;按M-数字键(1,2,3……)即可切换窗口
(require 'window-number)
(window-number-meta-mode 1)
