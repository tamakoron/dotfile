;; (require 'magit)

;; (require 'git-gutter)
;;;; (require 'git-gutter-fringe)
;;;; (setq git-gutter-fr:side 'right-fringe)
;; (git-gutter:linum-setup)
(global-git-gutter-mode t)
(with-eval-after-load "git-gutter"
  (bind-keys :map global-map
             ("C-x C-g" . git-gutter)
             ("C-x v =" . git-gutter:popup-hunk)
             ("C-x p" . git-gutter:previous-hunk)
             ("C-x n" . git-gutter:next-hunk)
             ("C-x v s" . git-gutter:stage-hunk)
             ("C-x v r" . git-gutter:revert-hunk) )

  (smartrep-define-key goto-map "M-f"
    '(("n"      . 'git-gutter:next-hunk)
      ("p"      . 'git-gutter:previous-hunk)))

  ;; '(git hg )
  (setq git-gutter:handled-backends '(hg)))

;; ;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; 何故か ediffの設定   ;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;
;; ;; コントロール用のバッファを同一フレーム内に表示
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
;; ;; diffのバッファを上下ではなく左右に並べる
(setq ediff-split-window-function 'split-window-horizontally)


