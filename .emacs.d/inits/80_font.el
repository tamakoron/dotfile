
;;;;フォントの設定

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;Source Han Code JP
;;123 123 123 123 123123123123
;;あい うえ おか きく
;;''' ||| @@@ jfe
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; | aaaいう  | bngs     |
;; | fjdsa   | jdfあfda |


;;::::::::::::::
;;^^^^^^^^^^^^^^
;;;;;;;;;;;;;;;;
;;``````````````
;;,,,,,,,,,,,,,,
;;..............
;;""""""""""""""
;;--------------
;;++++++++++++++
;;||||||||||||||
;;==============
;;<<<<<<<<<<<<<<
;;>>>>>>>>>>>>>>
;;DZ70lrz  0
;;|||||||||||||||||||||||||||||
;;あ|||||||||||||||||||||||||||
;;ああ----|||||||||||||||||||||
;;あああ____|||||||||||||||||||
;;ああああ....|||||||||||||||||
;;あああああ|||||||||||||||||||
;;ああああああ|||||||||||||||||
;;あ|||||||||||||||||||||||||||
;;ああああああ'''''''''''''''''

;; fontforge -script ricty_discord_patch.pe -0 -7 -colon -semicolon -z -bar -Z -circum -grave -period -hyphen -quote -quotedbl Ricty-Regular.ttf Ricty-Bold.ttf

;;  フォントファミリ (pp (font-family-list))
;; (setq default-frame-alist '((font . "VL ゴシック-16")))
(cond
 ( (equal system-name "utrtamako" )
   ;; (setq default-frame-alist '((font . "Source Han Code JP")))
   ;; (set-frame-font "Source Han Code JP-16")
   (setq default-frame-alist '((font . "Ricty Discord4Powerline:pixelsize=16")))
   (set-frame-font "Ricty Discord4Powerline:pixelsize=16")
   )
 ((equal system-name "zenlap.zendomain" )
  (setq default-frame-alist '((font . "Migu 1m")))
  (set-frame-font "Migu 1m-18")
  ;; (set-face-attribute 'default nil
  ;;   	    :family "Ricty"
  ;;   	    :height 120)
  
  (set-face-attribute 'default nil
                      :family "Migu 1m"
                      :height 150)
  ;;  (set-fontset-font (frame-parameter nil 'font)
  ;;                  'japanese-jisx0208
  ;;                  (cons "Migu 1m" "iso10646-1"))
  ;;  (set-fontset-font (frame-parameter nil 'font)
  ;;                  'japanese-jisx0212
  ;;                  (cons "Migu 1m" "iso10646-1"))
  ;;  (set-fontset-font (frame-parameter nil 'font)
  ;;                  'katakana-jisx0201
  ;;                  (cons "Migu 1m" "iso10646-1"))
  )

 ((equal system-name "localhostss")
  (set-frame-font "Ricty-12")
  (set-face-attribute 'default nil
                      :family "Ricty"
                      :height 120)
  (setq default-frame-alist '((font . "Ricty-12"))))
 
 ((some (lambda (strs) (equal system-name strs))
        '("localhost.localdomain"
          "localhost.homenetwork"))
  
  (set-frame-font "Ricty Discord4Powerline-12")
  (set-face-attribute 'default nil
                      :family "Ricty Discord4Powerline"
                      :height 120)
  (setq default-frame-alist '((font . "Ricty Discord4Powerline-12")))))





;; (set-fontset-font nil 'japanese-jisx0208
;; 				  (font-spec :family "Migu 1M"))
;; (setq face-font-rescale-alist '(("Migu 1M" . 1.08)))








