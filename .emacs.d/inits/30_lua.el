;; (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(defun lua-mode-hooks ()
  (setq imenu-generic-expression '(("Variable" "^ *\\([a-zA-Z0-9_.]+\\) *= *{ *[^ ]*$" 1)
                                   ("Function" "function +\\([^ (]+\\).*$" 1)
                                   ("Module" "^ *module +\\([^ ]+\\) *$" 1)
                                   ("Variable" "^ *local +\\([^ ]+\\).*$" 1))))

(with-eval-after-load "lua-mode"
  (require 'company-lua)
  (add-to-list 'company-backends 'company-lua))

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
(add-hook 'lua-mode-hook 'lua-mode-hooks)
