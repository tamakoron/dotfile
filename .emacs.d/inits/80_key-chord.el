(require 'key-chord)
(key-chord-mode 1)
(setq key-chord-two-keys-delay 0.05)
(key-chord-define-global "jk" 'avy-goto-char)
(key-chord-define-global "uu" 'undo-tree-visualize)
;; ("M-i"     . )
