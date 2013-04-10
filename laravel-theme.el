;; laravel-theme.el --- Custom face theme for Emacs
;;
;; Author: Nathan Hunzaker
;; URL: https://github.com/nhunzaker/emacs-laravel-plus-theme
;; Version: 0.0.1

(unless (>= 24 emacs-major-version)
  (error "laravel-theme requires Emacs 24 or later."))

(deftheme laravel
  "Laravel paste color theme")

;; Numbers
(make-face 'font-lock-number-face)
(set-face-attribute 'font-lock-number-face nil :inherit font-lock-constant-face)
(setq font-lock-number-face 'font-lock-number-face)

(defvar font-lock-number "[0-9]+\\([eE][+-]?[0-9]*\\)?")
(defvar font-lock-hexnumber "0[xX][0-9a-fA-F]+")

(font-lock-add-keywords nil (list
                             (list (concat "\\<\\(" font-lock-number "\\)\\>" )
                                   0 font-lock-number-face)
                             (list (concat "\\<\\(" font-lock-hexnumber "\\)\\>" )
                                   0 font-lock-number-face)
                             ))

(setq underline-minimum-offset 4)

;; Highlighting
(custom-theme-set-faces
 'laravel

 '(default ((t ( :background "#191919" :stipple "~/.emacs.d/themes/laravel/assets/background.png" :foreground "#fff" ))))

 '(cursor ((t (:foreground "#E4B239"))))

 '(region ((t (:background "#E3B446" :stipple "~/.emacs.d/themes/laravel/assets/highlight.png" :foreground "#fff"))))

 ;; The mode line is found at the bottom of all frames
 '(mode-line ((t (:font "04b03" :foreground "#aaa" :stipple "~/.emacs.d/themes/laravel/assets/modeline.png" :box (:color "#333B45" :line-width 1)))))
 '(mode-line-inactive ((t (:font "04b03" :stipple "~/.emacs.d/themes/laravel/assets/modeline_inactive.png" :foreground "#000" :box (:color "#333" :line-width 1)))))

 ;; The Border around the edge of the frame
 '(fringe ((t (:background "#191919"))))
 '(vertical-border ((t (:background "#191919" :foreground "#222" ))))

 ;; Interactively do things
 '(ido-first-match ((t (:foreground "#FFC557"))))
 '(ido-subdir ((t (:foreground "#3B7C55"))))

 ;; The Selected Line
 '(hl-line ((t (:background "#1e1e1e"))))

 ;; Errors
 '(flymake-errline  ((t (:underline "#ff6800"))))
 '(flymake-warnline ((t (:underline "#084Eb9"))))

 ;; The minibuffer
 '(minibuffer-prompt ((t (:foreground "#fff" :weight bold))))

 ;; Not known so far for anything other than lisp attributes and
 ;; "this" in javascript
 '(font-lock-builtin-face ((t (:foreground "#379A6A" :weight bold))))

 '(font-lock-error-face ((t (:foreground "#ff0000" :weight bold))))

 ;; Comments
 '(font-lock-comment-face ((t (:slant italic :foreground "#555"))))
 '(font-lock-doc-face ((t (:foreground "#555"))))

 ;; Constants
 '(font-lock-constant-face ((t (:foreground "#D44B39"))))

 ;; Function names (not the keyword "function")
 '(font-lock-function-name-face ((t (:foreground "#fff" :bold t))))

 ;; Keywords
 '(font-lock-keyword-face ((t (:foreground "#D44B39"))))

 ;; Numbers
 '(font-lock-number-face ((t (:foreground "#379A6A"))))

 ;; Strings
 '(font-lock-string-face ((t (:foreground "#E3B446"))))
 '(font-lock-type-face ((t (:foreground "#E3B446"))))

 ;; Variables, and style selectors
 '(font-lock-variable-name-face ((t (:foreground "#CCCCC5" :weight bold))))
 '(font-lock-warning-face ((t (:foreground "#DD6133" :weight bold))))

 '(link ((t (:underline t))))
 '(link-visited ((t (:underline t))))
 '(button ((t (:underline t))))

 '(header-line ((t (:background "#444" :foreground "#d9d9d9" :box (:line-width 1 :color "#555")))))

 ;; Line Numbering
 '(linum ((t (:foreground "#444" :background nil :underline nil))))

 ;; JS2 MODE ;;
 ;;;;;;;;;;;;;

 '(js2-function-param ((t (:foreground "#555"))))
 '(js2-external-variable ((t (:foreground "#8F252E" :bold t ))))
 '(js2-jsdoc-tag ((t (:foreground "#87243C" ))))
 '(js2-jsdoc-type ((t (:foreground "#379A6A" ))))
 '(js2-jsdoc-value ((t (:foreground "#E3B446" ))))
 '(js2-private-function-call ((t (:foreground "#E3B446" ))))


 ;; WHITESPACE MODE ;;
 ;;;;;;;;;;;;;;;;;;;;

 `(whitespace-tab ((t (:background nil :foreground nil :underline "#222"))))
 `(whitespace-indentation ((t (:background nil :foreground "#333" ))))
 `(trailing-whitespace ((t (:background "#a22" :foreground "#fff"))))
 `(whitespace-trailing ((t (:background "#a22" :foreground "#fff"))))

 ;; Flyspell
 '(flyspell-incorrect ((t (:foreground nil :underline "#e33"))))
 '(flyspell-duplicate ((t (:foreground nil :underline "#333"))))

 ;; YAML ;;
 ;;;;;;;;;
 `(yaml-tab-face ((t (:background "#a22" :foreground "#fff"))))

 ;; CSS Mode ;;
 ;;;;;;;;;;;;;

 `(css-selector ((t (:foreground "#A12B39" ))))
 `(css-property ((t (:foreground "#bbb" ))))
 `(css-proprietary-property ((t (:foreground "#bbb" :slant normal))))

 ;; Markdown Mode ;;
 ;;;;;;;;;;;;;;;;;;

 `(markdown-header-face ((t (:foreground "#DB613B"))))
 `(markdown-header-face-6 ((t (:foreground "#87243C"))))
 `(markdown-header-face-5 ((t (:foreground "#A12B39"))))
 `(markdown-header-face-4 ((t (:foreground "#BA3232"))))
 `(markdown-header-face-3 ((t (:foreground "#D44B39"))))
 `(markdown-header-face-2 ((t (:foreground "#E5653E"))))
 `(markdown-header-face-1 ((t (:foreground "#FF8645"))))

 ;; Web Mode ;;
 ;;;;;;;;;;;;;;
 `(web-mode-html-tag-face ((t (:foreground "#DB613B" ))))
 `(web-mode-preprocessor-face ((t (:foreground "#A12B39" ))))

 ;; RHTML/ERB Specs ;;
 ;;;;;;;;;;;;;;;;;;;;;

 ;; Text within delimeters
 '(erb-face ((t (:background "#151515" :foreground "#d9d9d9" :weight normal))))
 '(erb-exec-face ((t (:foreground "#d9d9d9" :background "#151515" :weight normal))))

 ;; Delimeter colors
 '(erb-delim-face ((t (:background "#151515" :foreground "#7f4539"))))
 '(erb-exec-delim-face ((t (:background "#151515" :foreground "#DC322F"))))
 '(erb-out-delim-face ((t ( :background "#151515" :foreground "#DC322F"))))

 ;; Comments
 '(erb-comment-face ((t (:slant italic :foreground "#7E6B49"))))
 '(erb-comment-delim-face ((t (:slant italic :foreground "#7E6B49"))))

 )


;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'laravel)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; twilight-theme.el ends here
