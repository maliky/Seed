;; wgrep ac-jump-mode which-key beginend magit org-mode
;; optionel json-mode

(require 'iso-transl)
(require 'package)

(let ((default-directory  "~/.emacs.d/elpa/"))
   (normal-top-level-add-subdirs-to-load-path))

;; packages
(package-initialize)
(setq package-archives '(("melpa" . "https://melpa.org/packages/") ))
(package-refresh-contents)

(global-set-key (kbd "C-c r") 'replace-regexp)
(global-set-key (kbd "C-c s") 'replace-string)
(global-set-key (kbd "s-p") (lambda ()
			      (interactive)
			      (ignore-errors (other-window -1))))
(global-set-key (kbd "C-x p") (lambda ()
				(interactive)
				(ignore-errors (other-window -1))))
(global-set-key (kbd "C-x à") 'delete-window)
(global-set-key (kbd "C-x &") 'delete-other-windows)
(global-set-key (kbd "C-x é") 'split-window-below)
(global-set-key (kbd "C-x \"") 'split-window-right)
(global-set-key (kbd "C-c o") 'occur)

;; beginend
(require 'beginend)
(beginend-global-mode 1)
(global-set-key (kbd "C-c ;") (lambda () (interactive) (ignore-errors (beginning-of-buffer))))
(global-set-key (kbd "C-c :") (lambda () (interactive) (ignore-errors (end-of-buffer))))
(beginend-dired-mode 1)

;; acemode jump
(autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
(autoload 'ace-jump-mode-pop-mark "ace-jump-mode"  "Ace jump back:-)" t)
(eval-after-load "ace-jump-mode"  '(ace-jump-mode-enable-mark-sync))
(setq ace-jump-mode-scope 'visible)  ; 'global ou 'visible ou 'window

(global-set-key (kbd "C-x j") 'ace-jump-mode)


;; magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "s-g s-g") 'magit-status)

;; end
;; C-u 0 M-x byte-recompile-directory

;; wgrep
(require 'wgrep)
