;;; init.el --- Clojure 开发常用配置

;;; Commentary:
;; 请查看 README.md 文件

;;; Code:

;; 40MB以后才进行垃圾回收(默认是 400000 )
(setq gc-cons-threshold 40000000)

;; 当打开超过100MB的文件的时候警告
(setq large-file-warning-threshold 100000000)

(setq inhibit-startup-screen t)

(defun melpa-package()
  "设置melpa安装包链接"
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("melpa" . "http://melpa.org/packages/"))))

(defun melpa-stable-package()
  "设置melpa-stable安装包链接"
    (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("melpa-stable" . "http://stable.melpa.org/packages/"))))
(melpa-package)

;; 稳定的安装包
(defvar melpa-stable-packages
  '(cider
    clj-refactor
    clojure-mode
    clojure-mode-extra-font-locking
    clojure-snippets
    company
    flx-ido
    magit
    markdown-mode
    projectile
    rainbow-delimiters
    smex
    undo-tree
    web-mode))

;; 开发中的安装包
(defvar melpa-dev-packages
  '(4clojure
    flycheck-clojure
    flycheck-pos-tip
    moe-theme
    smartparens
    sr-speedbar
    restclient))

(defun install ()
  "Install the packages."
  (interactive)
  (package-initialize)
  (melpa-stable-package)
  (package-refresh-contents)
  (dolist (p melpa-stable-packages)
    (unless (package-installed-p p)
      (message "Installing %s" (symbol-name p))
      (package-install p)))

  (melpa-package)
  (package-refresh-contents)
  (dolist (p melpa-dev-packages)
    (unless (package-installed-p p)
      (message "Installing %s" (symbol-name p))
      (package-install p)))
  (message "All packages has installed."))

(defun update-packages ()
  "刷新包内容，更新包."
  (package-refresh-contents)
  (require 'epl)
  (epl-upgrade))

(defun update-stable－packages ()
  "只更新稳定的安装包."
  (interactive)
  (melpa-stable-package)
  (update-packages)
  (message "Stable－packages has updated."))

(defun update-dev－packages ()
  "只更新开发中的安装包."
  (interactive )
  (melpa-package)
  (package-refresh-contents)
  (require 'epl)
  (dolist (p melpa-dev-packages)
    (if (epl-package-outdated-p p)
        (progn
          (epl-package-install (epl-upgrade-available (car (epl-find-upgrades (epl-find-installed-packages p)))) 'force)
          (epl-package-delete (epl-upgrade-installed (car (epl-find-upgrades (epl-find-installed-packages p))))))))
  (message "Dev－packages has updated."))

(defun update ()
  "所有的安装包都更新到开发中的版本."
  (interactive)
  (melpa-package)
  (update-packages)
  (message "All packages has updated."))

(add-hook 'after-init-hook
          (lambda ()
            (when (not (version< emacs-version "24.1"))

              ;; 设置字体
              (set-frame-font "-outline-文泉驿等宽微米黑-normal-normal-normal-sans-13-*-*-*-p-*-iso8859-1")
              (tool-bar-mode -1)
              (scroll-bar-mode -1)
              (electric-indent-mode)
              (global-linum-mode)

              ;; 更好的显示函数名
              (global-prettify-symbols-mode))

            ;; 如果是windows系统
            (if (memq window-system '(w32))
                (progn
                  ;; 修复https的git push不了的问题
                  (setenv "GIT_ASKPASS" "git-gui--askpass")))

            ;; 光标显示为一竖线
            (setq-default cursor-type 'bar)

            ;; 设置标题栏显示文件的完整路径名
            (setq frame-title-format
                  '("%S" (buffer-file-name "%f" (dired-directory dired-directory "%b"))))

            ;; C-x C-f后默认打开的文件夹
            (setq default-directory "~/")

            ;; 当要回答yes或no时，直接输入y或n
            (fset 'yes-or-no-p 'y-or-n-p)

            ;; 编码
            ;; 显示当前文件编码，C-h C (或者M-x describe-current-coding-system)
            ;; 如果打开的文件有乱码，还原成文件默认编码：C-x <RET> r <RET> (或者 M-x revert-buffer-with-coding-system)
            ;; 如果想转码，改变当前buffer的编码为UTF-8：C-x <RET> f utf-8 （或者 M-x set-buffer-file-coding-system）
            (prefer-coding-system 'utf-8)
            ;; 新建的文件都保存成UTF-8编码
            (setq buffer-file-coding-system 'utf-8)
            ;; tab键和新行自动缩进
            (setq-default indent-tabs-mode nil)
            (setq-default tab-width 4)
            (setq tab-width 4)
            (setq tab-stop-list ())
            (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

            (setq column-number-mode t)
            (setq size-indication-mode t)
            (setq visible-bell t)

            ;; C-c,C-v,C-x,C-z复制、粘贴、剪切、撤销
            (cua-mode)
            (setq cua-auto-tabify-rectangles nil)
            (transient-mark-mode 1)
            (setq cua-keep-region-after-copy t)
            (setq x-select-enable-clipboard t)
            (setq mouse-yank-at-point t)

            ;; 选择文字后输入文字，不再追加，而是直接替换
            (delete-selection-mode)

            (show-paren-mode)

            ;; 文件有更改时自动更新
            (global-auto-revert-mode)

            ;; 按键绑定
            (global-set-key (kbd "RET") 'newline-and-indent)
            (global-set-key (kbd "C-<return>") 'newline)

            ;; F4键弹出eshell
            (global-set-key [f4] 'eshell)

            ;; 按Shift+方向键即可切换窗口
            (when (fboundp 'windmove-default-keybindings)
              (windmove-default-keybindings))))

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; 记住关闭前光标的位置
(require 'saveplace)
(setq-default save-place t)

(defmacro after-load (mode &rest body)
  "`eval-after-load' MODE evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))

;; 括号高亮
(after-load "rainbow-delimiters-autoloads"
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode-enable))

;; C-x u开启。p n f b q试试这几个键
(after-load "undo-tree-autoloads"
  (global-undo-tree-mode))

;; 按F12键启动magit-status
(after-load "magit-autoloads"
  (global-set-key [f12] 'magit-status))

;;开启自动补齐模式
(after-load "company-autoloads"
  (global-company-mode)
  (global-set-key "\t" 'company-complete-common))

;; 显示左侧导航，按F9键可以切换
(after-load "sr-speedbar-autoloads"
  (global-set-key [f9] 'sr-speedbar-toggle)
  (setq speedbar-show-unknown-files t)
  (setq speedbar-verbosity-level 1)
  (setq sr-speedbar-auto-refresh nil)
  (setq sr-speedbar-right-side nil))

;; 扩展M-x功能
(after-load "smex-autoloads"
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; 原配的M-x
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))

;; 添加主题。白天黑夜自动切换主题，19:00自动切换
(after-load "moe-theme-autoloads"
  (require 'moe-theme-switcher))

;;配置markdown插件
(after-load "markdown-mode-autoloads"
  (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  (defun markdown-custom()
    "markdown-mode-hook"
    (setq markdown-command "markdown"))
  (add-hook 'markdown-mode-hook '(lambda() (markdown-custom))))

;; clojure
(after-load "clojure-mode-autoloads"
  (add-hook 'clojure-mode-hook 'subword-mode)
  (add-hook 'clojure-mode-hook 'turn-on-eldoc-mode))

(after-load "clojure-mode-extra-font-locking-autoloads"
  (setq cider-repl-use-clojure-font-lock t))

(after-load "clj-refactor-autoloads"
  (add-hook 'clojure-mode-hook
            (lambda ()
              (clj-refactor-mode)
              (cljr-add-keybindings-with-prefix "C-c RET"))))

(after-load "cider-autoloads"
  (setq cider-repl-wrap-history t)
  (setq nrepl-log-messages t)
  (setq cider-repl-history-size 3000)
  (setq cider-repl-history-file "~/.emacs.d/cider-history")
  (add-hook 'cider-mode-hook #'eldoc-mode)
  (add-hook 'cider-repl-mode-hook #'subword-mode)
  (global-set-key (kbd "C-c C-z") 'cider-switch-to-repl-buffer))

(after-load "flycheck-autoloads"
  (add-hook 'after-init-hook #'global-flycheck-mode))

(after-load "flycheck-clojure-autoloads"
  (flycheck-clojure-setup))

(after-load "flycheck-pos-tip-autoloads"
  (setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))

(after-load "yasnippet-autoloads"
  (add-hook 'web-mode-hook #'(lambda () (yas-activate-extra-mode 'html-mode)))
  (add-hook 'prog-mode-hook #'yas-minor-mode)
  (add-hook 'clojure-mode-hook #'yas-minor-mode)
  (add-hook 'cider-repl-mode-hook #'yas-minor-mode)
  (add-hook 'emacs-lisp-mode-hook #'yas-minor-mode))

(after-load "projectile-autoloads"
  (projectile-global-mode))

(after-load "smartparens-autoloads"
  (add-hook 'lisp-mode-hook #'smartparens-strict-mode)
  (add-hook 'lisp-interaction-mode-hook #'smartparens-strict-mode)
  (add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'smartparens-strict-mode)
  (add-hook 'ielm-mode-hook #'smartparens-strict-mode)
  (add-hook 'scheme-mode-hook #'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook #'smartparens-strict-mode)
  (add-hook 'cider-repl-mode-hook #'smartparens-strict-mode))

(after-load "web-mode-autoloads"
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
  (add-hook 'web-mode-hook  'my-web-mode-hook))

(after-load "flx-ido-autoloads"
  (ido-mode)
  (ido-everywhere)
  (flx-ido-mode)
  (setq ido-enable-flex-matching t)
  (setq ido-use-faces nil))

(after-load "restclient-autoloads"
  (add-to-list 'auto-mode-alist '("\\.rc\\'" . restclient-mode))
  (add-to-list 'auto-mode-alist '("\\.restclient\\'" . restclient-mode)))

(provide 'init)
;;; init.el ends here
