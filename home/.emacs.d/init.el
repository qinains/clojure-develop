(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
(package-refresh-contents)

(defvar my-packages '(better-defaults
                      projectile
                      clojure-mode
                      cider
                      lein
                      paredit
                      ac-cider
                      ac-js2
                      json-reformat
                      ssh
                      web-mode
                      4clojure
                      markdown-mode
                      ))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))
