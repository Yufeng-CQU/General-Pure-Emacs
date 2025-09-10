;;; init-p-treesit.el --- for testing purposes  -*- lexical-binding: t; -*-
;;
;; Copyleft (CL) 2022-2032 YF Lin
;;
;; Something good as indicated, by Dr YF Lin <e.yflin@gmail.com>
;; URL: https://github.com/Ethanlinyf/General-Pure-Emacs
;; Under ThingsEngine Project: https://www.thethingsengine.org
;;--------------------------------------------------------------------
;;; Commentary:
;; treesit for programming purposes
;;--------------------------------------------------------------------
;;; Code:

(require 'treesit)

;; Ensure tree-sitter grammars go into ~/.emacs.d/tree-sitter
(setq treesit-language-source-alist
      '((c          . ("https://github.com/tree-sitter/tree-sitter-c"))
        (cpp        . ("https://github.com/tree-sitter/tree-sitter-cpp"))
        (python     . ("https://github.com/tree-sitter/tree-sitter-python"))
        (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript"))
        (json       . ("https://github.com/tree-sitter/tree-sitter-json"))
        (rust       . ("https://github.com/tree-sitter/tree-sitter-rust"))
        (css        . ("https://github.com/tree-sitter/tree-sitter-css"))
        (markdown   . ("https://github.com/MDeiml/tree-sitter-markdown" nil "tree-sitter-markdown/src"))
        (elisp      . ("https://github.com/Wilfred/tree-sitter-elisp"))))

;; Auto-remap classic major modes to tree-sitter modes
(setq major-mode-remap-alist
      '((c-mode          . c-ts-mode)
        (c++-mode        . c++-ts-mode)
        (python-mode     . python-ts-mode)
        (js-mode         . js-ts-mode)
        (javascript-mode . js-ts-mode)
        (json-mode       . json-ts-mode)
        (css-mode        . css-ts-mode)
        (rust-mode       . rust-ts-mode)))


(add-hook 'emacs-lisp-mode-hook #'(lambda () (treesit-parser-create 'elisp)))
(add-hook 'ielm-mode-hook #'(lambda () (treesit-parser-create 'elisp)))
(add-hook 'markdown-mode-hook #'(lambda () (treesit-parser-create 'markdown)))



;;-------------------------------------------------------------------------------------------------
(provide 'init-p-treesit)
;;;init-treesit ends here
