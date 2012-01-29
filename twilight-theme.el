;;; twilight-theme.el --- Custom face theme for Emacs

;; A modification of the Django Theme Written by Andrzej Sliwa

;; Author: Nathan Hunzaker
;; URL: http://github/natehunzaker/twilight-theme
;; Version: 1.0.0
;; 
;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

(deftheme twilight "")

(custom-theme-set-faces
 'twilight
 
 '(default ((t (:background "#151515" :foreground "#f8f8f8"))))
 '(cursor ((t (:foreground "#ffffff"))))
 '(region ((t (:background "#353638"))))

 '(mode-line ((t (:background "#444" :foreground "#d9d9d9" :box (:line-width 1 :color "#555")))))
 '(mode-line-inactive ((t (:background "#333" :foreground "#999" :box (:line-width 1 :color "#555")))))

 ;; The Border around the edge of the frame
 '(fringe ((t (:background "#353638"))))
 '(vertical-border ((t (:background "#fff"))))

 '(ido-first-match ((t (:foreground "#FFC557"))))
 '(ido-subdir ((t (:foreground "#3B7C55"))))

 ;; The Selected Line
 '(hl-line ((t (:background "#191919"))))
 
 '(flymake-errline  ((t (:background "#FF6800"))))
 '(flymake-warnline ((t (:background "#084Eb9"))))
 
 '(minibuffer-prompt ((t (:foreground "#f8f8f8" :weight bold))))
 
 '(font-lock-builtin-face ((t (:foreground "#55747C" :weight bold))))

 
 ;; Styles comments
 '(font-lock-comment-face ((t (:slant italic :foreground "#605860"))))

 '(font-lock-constant-face ((t (:foreground "#C5563D"))))
 '(font-lock-function-name-face ((t (:foreground "#D19454"))))
 '(font-lock-keyword-face ((t (:foreground "#D19454"))))
 '(font-lock-string-face ((t (:foreground "#889A60"))))
 '(font-lock-type-face ((t (:foreground "#ead47a"))))
 '(font-lock-variable-name-face ((t (:foreground "#55747C" :weight bold))))
 '(font-lock-warning-face ((t (:foreground "#9D7FFD" :weight bold))))
 '(font-lock-doc-string-face ((t (:foreground "#91BB9E")))) 
 '(link ((t (:underline t))))
 '(link-visited ((t (:underline t))))
 '(button ((t (:underline t))))

 '(header-line ((t (:background "#444" :foreground "#d9d9d9" :box (:line-width 1 :color "#555")))))



 ;; RHTML/ERB Specs ;;
 ;;;;;;;;;;;;;;;;;;;;;

 ;; Text within delimeters
 '(erb-face ((t (:foreground "#d9d9d9" :weight normal))))
 '(erb-exec-face ((t (:foreground "#d9d9d9" :background "#151515" :weight normal))))

 ;; Delimeter colors
 '(erb-delim-face ((t (:foreground "#7f4539"))))
 '(erb-exec-delim-face ((t (:foreground "#4f322c"))))
 '(erb-out-delim-face ((t ( :foreground "#7f4539"))))
 
 ;; Comments
 '(erb-comment-face ((t (:slant italic :foreground "#605860"))))
 '(erb-comment-delim-face ((t (:slant italic :foreground "#333"))))


 )


(provide-theme 'twilight)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; twilight-theme.el  ends here
