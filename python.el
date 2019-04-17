(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode nil)
        (setq tab-width 4)
        (setq python-indent 4)
	(message "My lambda ran")
	)
      )
(add-hook 'python-mode-hook 'rainbow-delimiters-mode)




