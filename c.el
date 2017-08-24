(setq c-default-style "k&r"
      c-basic-offset 4)

(provide 'config-cc)

(add-hook 'c-mode-hook 'rainbow-delimiters-mode)

(setq column-number-mode t) ;;Show column count

;;Highlight characters past 80 column limit
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(add-hook 'c-mode-hook 'whitespace-mode)
