;;MELPA support
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; For brightening the comments in nord
(setq nord-comment-brightness 10)

;;CUSTOM SECTION
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (tango)))
 '(custom-safe-themes
   (quote
    ("bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
<<<<<<< HEAD
    (magit nord-theme rust-mode hl-todo scad-mode writeroom-mode arduino-mode nyan-mode rainbow-delimiters))))

=======
    (writeroom-mode scad-mode arduino-mode nyan-mode rainbow-delimiters))))
>>>>>>> 6a2293719984f7f4be6d741b7d28aa70f1e8b998

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;Attempt to set font for Macs
;;See: https://www.emacswiki.org/emacs/SetFonts#toc14
(when (eq system-type 'darwin)
 ;; default Latin font (e.g. Consolas)
 (set-face-attribute 'default nil :family "Source Code Pro")

 ;; default font size (point * 10)
 ;;
 ;; WARNING!  Depending on the default font,
 ;; if the size is not supported very well, the frame will be clipped
 ;; so that the beginning of the buffer may not be visible correctly. 
 (set-face-attribute 'default nil :height 130)
 )

;;Attempt to set font for Linux
(when (eq system-type 'gnu/linux)
 (set-face-attribute 'default nil :family "Source Code Pro")
 (set-face-attribute 'default nil :height 90)
 )

;;MODULAR CONFIG
(load "~/.emacs.d/c.el")
;;(load "~/.emacs.d/themes/gray30-theme.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/python.el")
(load "~/.emacs.d/scad.el")
(load "~/.emacs.d/writeroom.el")
(load "~/.emacs.d/html.el")

;;Permit capitalizing regions
(put 'upcase-region 'disabled nil)
