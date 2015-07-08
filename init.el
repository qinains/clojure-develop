;;如果是windows系统
(if (memq window-system '(w32))
    (progn
	  ;;修复https的git push不了的问题
      (setenv "GIT_ASKPASS" "git-gui--askpass")))

;;光标显示为一竖线
(setq-default cursor-type 'bar)

;;选择文字后输入文字，不再追加，而是直接替换
(delete-selection-mode 1)

;;设置标题栏显示文件的完整路径名
(setq frame-title-format
	  '("%S" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(require 'package)
;;安装melpa-stable插件
(add-to-list 'package-archives '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))
(defvar melpa-stable-packages '(cider
                                clj-refactor
                                projectile
                                flx-ido
                                company
                                clojure-mode
                                clojure-mode-extra-font-locking
                                clojure-snippets
                                clojure-cheatsheet
                                web-mode
                                markdown-mode
                                magit
                                smex
                                undo-tree
                                hl-sexp
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
                         4clojure
                         flycheck-clojure
                         moe-theme))

(dolist (p melpa-packages)
  (unless (package-installed-p p)
    (package-install p)))

;;C-x C-f后默认打开的文件夹
(setq default-directory "~/")

;;当要回答yes或no时，直接输入y或n
(fset 'yes-or-no-p 'y-or-n-p)

;;编码
;;显示当前文件编码，C-h C (或者M-x describe-current-coding-system)
;;如果打开的文件有乱码，还原成文件默认编码：C-x <RET> r <RET> (或者 M-x revert-buffer-with-coding-system) 
;;如果想转码，改变当前buffer的编码为UTF-8：C-x <RET> f utf-8 （或者 M-x set-buffer-file-coding-system）
(prefer-coding-system 'utf-8)
;;新建的文件都保存成UTF-8编码
(setq default-buffer-file-coding-system 'utf-8)
;;tab键和新行自动缩进
(setq c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))
(electric-indent-mode)

(global-prettify-symbols-mode 1)

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;;主题
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-interval 10)
 '(display-time-mode t)
 '(display-time-use-mail-icon t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(visible-bell t))

;;字体去这里下载
;;http://sourceforge.net/projects/wqy/files/wqy-microhei/
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "文泉驿等宽微米黑" :foundry "outline" :slant normal :weight normal :height 105 :width normal)))))

;;开启ido模式，显示备选项
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;;开启projectile,用于查找文件名(C-c p f)和查找文件内容(C-c p o)
(projectile-global-mode)

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

;;开启Yasnippet
(require 'yasnippet)
(yas/global-mode 1)

;;配置clj-refactor,用C-c RET键开启
(require 'clj-refactor)
(add-hook 'clojure-mode-hook (lambda () (clj-refactor-mode 1) (cljr-add-keybindings-with-prefix "C-c RET")))
(setq cljr-sort-comparator 'cljr--semantic-comparator)

;;配置cider
(setq cider-repl-wrap-history t)
(setq nrepl-log-messages t)
(setq cider-repl-history-size 1000)
(setq cider-repl-history-file "~/.emacs.d/cider-history")
(setq cider-repl-use-clojure-font-lock t)
(add-hook 'cider-mode-hook #'eldoc-mode)
(global-set-key (kbd "C-c C-z") 'cider-switch-to-repl-buffer)

;;配置flycheck-clojure
(require 'flycheck-clojure)
(eval-after-load 'flycheck '(flycheck-clojure-setup))
(add-hook 'after-init-hook #'global-flycheck-mode)

;;配置web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-auto-pairing t)
  (setq web-mode-enable-current-element-highlight t))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;;编程模式的配置
(add-hook 'prog-mode-hook 'smartparens-global-mode)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(global-company-mode)
(global-set-key "\t" 'company-complete-common)

;;按F12键启动magit-status
(global-set-key [f12] 'magit-status)

;;显示左侧导航，按F9键可以切换
(require 'sr-speedbar)
(global-set-key [f9] 'sr-speedbar-toggle)
(setq speedbar-show-unknown-files t)
(setq speedbar-verbosity-level 1)
(setq sr-speedbar-auto-refresh nil)
(setq sr-speedbar-right-side nil)

;;扩展M-x功能
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;原配的M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;按Shift+方向键即可切换窗口
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;光标所在行高亮
(require 'hl-sexp)
(global-hl-sexp-mode)

;;C-x u开启。p n f b q试试这几个键
(require 'undo-tree)
(global-undo-tree-mode)

;;文件有更改时自动更新
(global-auto-revert-mode)

;;添加主题。白天黑夜自动切换主题，19:00自动切换
(require 'moe-theme)
(require 'moe-theme-switcher)
