(add-to-list 'load-path "~/.emacs.d")
(autoload 'verilog-mode "verilog-mode" "Verilog mode" t ) ;; Any files that end in .v, .dv or .sv should be in verilog mode
 (add-to-list 'auto-mode-alist '("\\.[ds]?v\\'" . verilog-mode)) ;; Any files in verilog mode should have their keywords colorized 
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1))) 
