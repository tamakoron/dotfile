(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp))
  (require 'package)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                          ("melpa" . "http://melpa.milkbox.net/packages/")
                          ("ELPA" . "http://tromey.com/elpa/" )
                          ("org" . "http://orgmode.org/elpa/")
                          ))
  (package-initialize)
  (require 'el-get)
  (el-get 'sync)
  (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes"))
;; setup
(el-get-bundle emacs-jp/init-loader)
(el-get-bundle purcell/exec-path-from-shell)
;; Input method
(when (executable-find "mozc_emacs_helper")
  (el-get-bundle elpa:mozc))



(el-get-bundle ac-cider)
(el-get-bundle ac-emoji)
(el-get-bundle ac-helm)
(el-get-bundle ac-math)
(el-get-bundle ac-slime)
(el-get-bundle ace-isearch)
(el-get-bundle actionscript-mode)
(el-get-bundle align-cljlet)
(el-get-bundle all-ext)
(el-get-bundle auto-complete)
(el-get-bundle auto-complete-c-headers)
(el-get-bundle bm)
(el-get-bundle c-eldoc)
;; (el-get-bundle cask)
(el-get-bundle cider :type github :pkgname "clojure-emacs/cider")
(el-get-bundle clj-refactor)
(el-get-bundle clojure-cheatsheet)
(el-get-bundle clojure-mode)
(el-get-bundle clojure-mode-extra-font-locking)
(el-get-bundle clojure-snippets)
(el-get-bundle codic)
(el-get-bundle color-theme)
(el-get-bundle ctags-update)
(el-get-bundle dockerfile-mode)
(el-get-bundle drag-stuff)
(el-get-bundle eldoc-extension)
(el-get-bundle emmet-mode)
(el-get-bundle epl)
(el-get-bundle exec-path-from-shell)
(el-get-bundle f)
(el-get-bundle flycheck)
(el-get-bundle flycheck-cask)
(el-get-bundle flycheck-clojure)
(el-get-bundle flycheck-color-mode-line)
(el-get-bundle flymake-cursor)
(el-get-bundle flymake-haskell-multi)
(el-get-bundle flymake-python-pyflakes)
(el-get-bundle fold-dwim-org)
(el-get-bundle git)
(el-get-bundle git-commit-mode)
(el-get-bundle git-gutter)
(el-get-bundle gnuplot)
(el-get-bundle go-autocomplete)
(el-get-bundle go-eldoc)
(el-get-bundle go-mode)
(el-get-bundle google-translate)
(el-get-bundle haskell-mode)
(el-get-bundle helm)
(el-get-bundle helm-ag)
(el-get-bundle helm-bm)
(el-get-bundle helm-c-yasnippet)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-emmet)
(el-get-bundle helm-gtags)
(el-get-bundle helm-projectile)
(el-get-bundle helm-rails)
(el-get-bundle helm-robe)
(el-get-bundle helm-swoop)
(el-get-bundle highlight-indentation)
(el-get-bundle htmlize)
(el-get-bundle http-post-simple)
(el-get-bundle idle-highlight-mode)
(el-get-bundle inf-clojure)
(el-get-bundle inf-ruby)
(el-get-bundle init-loader)
(el-get-bundle jedi)
(el-get-bundle js2-mode)
(el-get-bundle js2-refactor)
(el-get-bundle json-reformat)
(el-get-bundle lua-mode)
(el-get-bundle magit)
(el-get-bundle markdown-mode)
(el-get-bundle midje-mode)
(el-get-bundle minimap)
(el-get-bundle multiple-cursors)
(el-get-bundle org-plus-contrib)
;; (el-get-bundle org-toodledo" :git "https://github.com/myuhe/org-toodledo.git)
(el-get-bundle org-trello)
(el-get-bundle ox-textile)
;; (el-get-bundle pallet)
(el-get-bundle popwin)
(el-get-bundle powerline)
(el-get-bundle projectile-rails)
(el-get-bundle quickrun)
(el-get-bundle rainbow-delimiters)
(el-get-bundle rbenv)
(el-get-bundle robe)
(el-get-bundle rubocop)
;; (el-get-bundle sclang-extensions)
;; (el-get-bundle sclang-snippets)
(el-get-bundle shut-up)
(el-get-bundle slamhound)
(el-get-bundle slime)
(el-get-bundle smartparens)
(el-get-bundle smartrep)
(el-get-bundle undo-tree)
(el-get-bundle use-package)
(el-get-bundle visual-regexp-steroids)
(el-get-bundle web-beautify)
(el-get-bundle web-mode)
(el-get-bundle yaml-mode)
(el-get-bundle yascroll)
(el-get-bundle yasnippet)

;; (el-get-bundle ace-isearch)
(el-get-bundle avy)
(el-get-bundle fold-dwim)
(el-get-bundle org-mode)

(el-get-bundle search-web :type github :pkgname "tomoya/search-web.el")
(el-get-bundle smex)
(el-get-bundle ido-vertical-mode)

;; (el-get-bundle direx)
