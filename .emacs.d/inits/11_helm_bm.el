;; ;; ;; http://rubikitch.com/f/141122044603.helm-bm.el より
;; (require 'bm)
;; (defun bm-find-files-in-repository ()
;;   (interactive)
;;   (cl-loop for (key . _) in bm-repository
;;            when (file-exists-p key)
;;            do (find-file-noselect key)))
;; (defun bm-repository-load-and-open ()
;;   (interactive)
;;   (bm-repository-load)
;;   (bm-find-files-in-repository))

;; (setq bm-repository-file "~/.emacs.d/bm-repository")
;; (setq-default bm-buffer-persistence t)
;; (setq bm-restore-repository-on-load t
;;       bm-marker 'bm-marker-right)
;; (add-hook 'after-init-hook 'bm-repository-load-and-open)
;; (defun bm-buffer-restore-safe ()
;;   (ignore-errors (bm-buffer-restore)))
;; (add-hook 'find-file-hooks 'bm-buffer-restore-safe)
;; (add-hook 'kill-buffer-hook 'bm-buffer-save)
;; (defun bm-save-to-repository ()
;;   (interactive)
;;   (unless noninteractive
;;     (bm-buffer-save-all)
;;     (bm-repository-save)))
;; (add-hook 'kill-emacs-hook 'bm-save-to-repository)
;; (run-with-idle-timer 600 t 'bm-save-to-repository)
;; (add-hook 'after-revert-hook 'bm-buffer-restore)
;; (add-hook 'vc-before-checkin-hook 'bm-buffer-save)
;; (add-hook 'before-save-hook 'bm-buffer-save)

;; (require 'helm-bm)
;; (push '(migemo) helm-source-bm)
;; ;; annotationはあまり使わないので仕切り線で表示件数減るの嫌
;; (setq helm-source-bm (delete '(multiline) helm-source-bm))

;;  (defun bm-toggle-or-helm ()
;;    "2回連続で起動したらhelm-bmを実行させる"
;;    (interactive)
;;    (bm-toggle)
;;    (when (eq last-command 'bm-toggle-or-helm)
;;      (helm-bm)))

;;  (global-set-key (kbd "M-SPC") 'bm-toggle-or-helm)
;; (global-set-key (kbd "<left-fringe> <mouse-5>") 'bm-next-mouse)
;; (global-set-key (kbd "<left-fringe> <mouse-4>") 'bm-previous-mouse)
;; (global-set-key (kbd "<left-fringe> <mouse-1>") 'bm-toggle-mouse)
