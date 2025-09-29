(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(set-frame-parameter (selected-frame) 'alpha '(75 . 75)) ;; active/inactive
(add-to-list 'default-frame-alist '(alpha . (75 . 75)))

(add-to-list 'load-path "~/.emacs.d/lisp")
;; (require 'splash-screen)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'load-path "~/.emacs.d/elpa")
(require 'neotree)

(mood-line-mode)

(use-package impatient-mode
  :ensure t)

(defun startupscreen ()
  (switch-to-buffer "*start*")
  (erase-buffer)
  (insert "
 ▄▄ •  ▐ ▄ ▄• ▄▌    ▄▄▄ .• ▌ ▄ ·.  ▄▄▄·  ▄▄· .▄▄ · 
▐█ ▀ ▪•█▌▐██▪██▌    ▀▄.▀··██ ▐███▪▐█ ▀█ ▐█ ▌▪▐█ ▀. 
▄█ ▀█▄▐█▐▐▌█▌▐█▌    ▐▀▀▪▄▐█ ▌▐▌▐█·▄█▀▀█ ██ ▄▄▄▀▀▀█▄
▐█▄▪▐███▐█▌▐█▄█▌    ▐█▄▄▌██ ██▌▐█▌▐█ ▪▐▌▐███▌▐█▄▪▐█
·▀▀▀▀ ▀▀ █▪ ▀▀▀      ▀▀▀ ▀▀  █▪▀▀▀ ▀  ▀ ·▀▀▀  ▀▀▀▀ 
                                                                                                         
  ")
  (insert "Welcome to Emacs! ")
  (insert (format "Running on version %d.%d\n" emacs-major-version emacs-minor-version))
  (insert "
▄ •▄ ▄▄▄ . ▄· ▄▌▄▄▄▄· ▪   ▐ ▄ ·▄▄▄▄  .▄▄ · 
█▌▄▌▪▀▄.▀·▐█▪██▌▐█ ▀█▪██ •█▌▐███▪ ██ ▐█ ▀. 
▐▀▀▄·▐▀▀▪▄▐█▌▐█▪▐█▀▀█▄▐█·▐█▐▐▌▐█· ▐█▌▄▀▀▀█▄
▐█.█▌▐█▄▄▌ ▐█▀·.██▄▪▐█▐█▌██▐█▌██. ██ ▐█▄▪▐█
·▀  ▀ ▀▀▀   ▀ • ·▀▀▀▀ ▀▀▀▀▀ █▪▀▀▀▀▀•  ▀▀▀▀ 

")
  (insert "* Open File: C-x C-f\n")
  (insert "* Save File: C-x C-s\n")
  (insert "* Search in file: C-s\n")
  (insert "* Move through buffers:\n")
  (insert "    Next buffer: C-x <right>\n")
  (insert "    Previous buffer: C-x <left>\n")
  (insert "* Undo Action: C-/\n")
  (insert "* Redo Action: C-g C-/\n")
  (insert "* Run Command: M-x\n")
  (insert "* Quit Emacs: C-x C-c\n")
  (read-only-mode 1)
  )

(setq inhibit-startup-message t)
(add-hook 'emacs-startup-hook 'startupscreen)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t)
 '(custom-enabled-themes '(doom-meltbus))
 '(custom-safe-themes
   '("f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33"
     "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478"
     "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d"
     "e14289199861a5db890065fdc5f3d3c22c5bac607e0dbce7f35ce60e6b55fc52"
     "921f165deb8030167d44eaa82e85fcef0254b212439b550a9b6c924f281b5695"
     "56044c5a9cc45b6ec45c0eb28df100d3f0a576f18eef33ff8ff5d32bac2d9700"
     "e8ceeba381ba723b59a9abc4961f41583112fc7dc0e886d9fc36fa1dc37b4079"
     "3061706fa92759264751c64950df09b285e3a2d3a9db771e99bcbb2f9b470037"
     "9d5124bef86c2348d7d4774ca384ae7b6027ff7f6eb3c401378e298ce605f83a"
     "d12b1d9b0498280f60e5ec92e5ecec4b5db5370d05e787bc7cc49eae6fb07bc0"
     "2ab8cb6d21d3aa5b821fa638c118892049796d693d1e6cd88cb0d3d7c3ed07fc"
     "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
     "5c7720c63b729140ed88cf35413f36c728ab7c70f8cd8422d9ee1cedeb618de5"
     "b754d3a03c34cfba9ad7991380d26984ebd0761925773530e24d8dd8b6894738"
     "f253a920e076213277eb4cbbdf3ef2062e018016018a941df6931b995c6ff6f6"
     "2f7fa7a92119d9ed63703d12723937e8ba87b6f3876c33d237619ccbd60c96b9"
     "a6920ee8b55c441ada9a19a44e9048be3bfb1338d06fc41bce3819ac22e4b5a1"
     "d481904809c509641a1a1f1b1eb80b94c58c210145effc2631c1a7f2e4a2fdf4"
     "3613617b9953c22fe46ef2b593a2e5bc79ef3cc88770602e7e569bbd71de113b"
     "87fa3605a6501f9b90d337ed4d832213155e3a2e36a512984f83e847102a42f4"
     "42a6583a45e0f413e3197907aa5acca3293ef33b4d3b388f54fa44435a494739"
     "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
     "1bc640af8b000ae0275dbffefa2eb22ec91f6de53aca87221c125dc710057511"
     "e4d4cc443964b8a64defc06de3edb2363f7cb1b3c3ae2272b2c1487f626e4318"
     "19d62171e83f2d4d6f7c31fc0a6f437e8cec4543234f0548bad5d49be8e344cd"
     "a368631abdadffb6882f9994637d7216167912311447f1ec02f9dc58e9cc62a9"
     "72d9086e9e67a3e0e0e6ba26a1068b8b196e58a13ccaeff4bfe5ee6288175432"
     "4d714a034e7747598869bef1104e96336a71c3d141fa58618e4606a27507db4c"
     "3f24dd8f542f4aa8186a41d5770eb383f446d7228cd7a3413b9f5e0ec0d5f3c0"
     "2f8af2a3a2fae6b6ea254e7aab6f3a8b5c936428b67869cef647c5f8e7985877"
     "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22"
     "1f8bd4db8280d5e7c5e6a12786685a7e0c6733b0e3cf99f839fb211236fb4529"
     "fffef514346b2a43900e1c7ea2bc7d84cbdd4aa66c1b51946aade4b8d343b55a"
     "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725"
     "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0"
     "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290"
     "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd"
     "4990532659bb6a285fee01ede3dfa1b1bdf302c5c3c8de9fad9b6bc63a9252f7"
     "6963de2ec3f8313bb95505f96bf0cf2025e7b07cefdb93e3d2e348720d401425"
     "dd4582661a1c6b865a33b89312c97a13a3885dc95992e2e5fc57456b4c545176"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     "b7a09eb77a1e9b98cafba8ef1bd58871f91958538f6671b22976ea38c2580755"
     "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad"
     "4b88b7ca61eb48bb22e2a4b589be66ba31ba805860db9ed51b4c484f3ef612a7"
     "c3c135e69890de6a85ebf791017d458d3deb3954f81dcb7ac8c430e1620bb0f1"
     "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8"
     "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f"
     "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098"
     "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
     "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9"
     "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1"
     "22a0d47fe2e6159e2f15449fcb90bbf2fe1940b185ff143995cc604ead1ea171"
     "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641"
     "83550d0386203f010fa42ad1af064a766cfec06fc2f42eb4f2d89ab646f3ac01"
     "9b9d7a851a8e26f294e778e02c8df25c8a3b15170e6f9fd6965ac5f2544ef2a9"
     "166a2faa9dc5b5b3359f7a31a09127ebf7a7926562710367086fcc8fc72145da"
     "7de64ff2bb2f94d7679a7e9019e23c3bf1a6a04ba54341c36e7cf2d2e56e2bcc"
     "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19"
     "720838034f1dd3b3da66f6bd4d053ee67c93a747b219d1c546c41c4e425daf93"
     "7235b77f371f46cbfae9271dce65f5017b61ec1c8687a90ff30c6db281bfd6b7"
     "5e39e95c703e17a743fb05a132d727aa1d69d9d2c9cde9353f5350e545c793d4"
     "a9028cd93db14a5d6cdadba789563cb90a97899c4da7df6f51d58bb390e54031"
     "1c2fb3448ce245f18c62fde3c7cfd008e69a27e88ae8a03fbb62857f13d0b6fe"
     "c5975101a4597094704ee78f89fb9ad872f965a84fb52d3e01b9102168e8dc40"
     "77f281064ea1c8b14938866e21c4e51e4168e05db98863bd7430f1352cab294a"
     "6bf350570e023cd6e5b4337a6571c0325cec3f575963ac7de6832803df4d210a"
     "0adcffc4894e2dd21283672da7c3d1025b5586bcef770fdc3e2616bdb2a771cd"
     "c20f9b6fffac1d6d220eaad94002595533990f6387eb3cd60fc4139cadbf0f1a"
     "95b51aab1acd95ebcc7f47a60dd02d1a6b4b2c4aa68027b6d4138c2f70c583ae"
     "377bf88f6a5c5085bccdd96beeade170a55df7944e9768f1108ada15d4e71e02"
     "5a548c9d5a6ca78d13283ed709bddf3307b65a7695e1b2e2b7e0a9dde45e8599"
     "2a1d0e4e6bd665fb532cb07cdf466e3bba1e4f2e5e6e01eee1fa913edabe8759"
     "e14991397ba1341f1240216392f48889a343506b1f9c8e9c37ed391151f87463"
     default))
 '(debug-on-error t)
 '(display-time-mode t)
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(afternoon-theme ample-theme autumn-light-theme corfu doom-themes
		     flycheck impatient-mode modus-themes monkeytype
		     mood-line neotree rainbow-mode rimero-theme
		     yasnippet))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tab-bar-mode 1)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
