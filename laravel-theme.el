;;; laravel-theme.el --- Custom face theme for Emacs
;;
;; Author: Nathan Hunzaker
;; URL: https://github.com/nhunzaker/emacs-laravel-plus-theme
;; Version: 0.0.1

(unless (>= 24 emacs-major-version)
  (error "laravel-theme requires Emacs 24 or later."))

(deftheme laravel
  "Laravel paste color theme")

(setq underline-minimum-offset 4)

;; Highlighting
(custom-theme-set-faces
 'laravel

 '(default ((t ( :background "#191919" :foreground "#fff" ))))

 '(cursor ((t (:background "#E4B239"))))

 '(region ((t (:background "#333933" :foreground unspecified))))
 '(match ((t (:background "#333933" :foreground unspecified))))
 '(ac-selection-face ((t (:background "#333933" :foreground unspecified))))
 '(info-index-match ((t (:background "#333933" :foreground unspecified))))
 '(popup-menu-selection-face ((t (:background "#333933" :foreground unspecified))))
 '(org-clock-overlay ((t (:background "#333933" :foreground unspecified))))
 '(org-agenda-clocking ((t (:background "#333933" :foreground unspecified))))

 ;; The mode line is found at the bottom of all frames
 '(mode-line ((t (:foreground "#aaa" :stipple "~/.emacs.d/themes/laravel/assets/modeline.png" :box (:color "#333B45" :line-width 1)))))
 '(mode-line-inactive ((t (:stipple "~/.emacs.d/themes/laravel/assets/modeline_inactive.png" :foreground "#000" :box (:color "#333" :line-width 1)))))

 ;; The Border around the edge of the frame
 '(fringe ((t (:background "#191919"))))
 '(vertical-border ((t (:background "#191919" :foreground "#222" ))))

 ;; Interactively do things
 '(ido-first-match ((t (:foreground "#FFC557"))))
 '(ido-subdir ((t (:foreground "#3B7C55"))))

 ;; The Selected Line
 '(hl-line ((t :background unspecified :underline unspecified)))

 ;; Errors
 '(flymake-errline  ((t (:underline "#ff6800"))))
 '(flymake-warnline ((t (:underline "#084Eb9"))))

 ;; The minibuffer
 '(minibuffer-prompt ((t (:foreground "#fff" :weight bold))))

 ;; Not known so far for anything other than lisp attributes and
 ;; "this" in javascript
 '(font-lock-builtin-face ((t (:foreground "#379A6A" :weight bold))))

 '(font-lock-error-face ((t (:foreground "#8F252E" :weight bold))))

 ;; Comments
 '(font-lock-comment-face ((t (:slant italic :foreground "#555"))))
 '(font-lock-doc-face ((t (:foreground "#555"))))

 ;; Constants
 '(font-lock-constant-face ((t (:foreground "#D44B39"))))

 ;; Function names (not the keyword "function")
 '(font-lock-function-name-face ((t (:foreground "#fff" :bold t))))

 ;; Keywords
 '(font-lock-keyword-face ((t (:foreground "#D44B39"))))

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
 `(whitespace-line ((t (:background nil :foreground "#d33682"))))

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
 `(markdown-header-face-1 ((t (:foreground "#379A6A" :height 150))))

 `(markdown-bold-face  ((t (:foreground "#ba3232" :bold t))))

 ;; Rainbows ;;
 ;;;;;;;;;;;;;;
  `(rainbow-delimiters-depth-1-face ((t (:foreground "#FFFFFF"))))
  `(rainbow-delimiters-depth-2-face ((t (:foreground "#FFaaaa"))))
  `(rainbow-delimiters-depth-3-face ((t (:foreground "#ee7777"))))
  `(rainbow-delimiters-depth-4-face ((t (:foreground "#dd5555"))))
  `(rainbow-delimiters-depth-5-face ((t (:foreground "#cc3333"))))
  `(rainbow-delimiters-depth-6-face ((t (:foreground "#bb1111"))))
  `(rainbow-delimiters-depth-7-face ((t (:foreground "#aa2200"))))
  `(rainbow-delimiters-depth-8-face ((t (:foreground "#993300"))))
  `(rainbow-delimiters-depth-9-face ((t (:foreground "#772200"))))
  `(rainbow-delimiters-depth-10-face ((t (:foreground "#551100"))))

  `(show-paren-match ((t (:background "#222" :foreground "#E3B446" :underline "transparent"))))

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
