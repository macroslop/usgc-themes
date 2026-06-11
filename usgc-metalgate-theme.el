;;; usgc-metalgate.el --- USGC Metalgate theme -*- lexical-binding: t; -*-

;;; Code:

(deftheme usgc-metalgate)

(defgroup usgc-metalgate nil
  "USGC Metalgate theme options."
  :group 'faces)

(defcustom usgc-metalgate-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'usgc-metalgate)

(defcustom usgc-metalgate-height-title-1 1.3
  "Font size 130%."
  :type 'number
  :group 'usgc-metalgate)

(defcustom usgc-metalgate-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'usgc-metalgate)

(defcustom usgc-metalgate-height-title-3 1.0
  "Font size 100%."
  :type 'number
  :group 'usgc-metalgate)

(defcustom usgc-metalgate-height-doc-title 1.25
  "Font size 125%."
  :type 'number
  :group 'usgc-metalgate)

(defcustom usgc-metalgate-bolder-keywords t
  "Use bold weight for syntax faces."
  :type 'boolean
  :group 'usgc-metalgate)

(let ((colors '((usgc-metalgate-bg "#000000" "#000000" "#000000")
                (usgc-metalgate-fg "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-metalgate-current "#0000FF" "#0000FF" "#0000FF")
                (usgc-metalgate-region "#666600" "#666600" "#666600")
                (usgc-metalgate-comment "#999999" "#999999" "#999999")
                (usgc-metalgate-comment-alt "#006666" "#006666" "#006666")
                (usgc-metalgate-cyan "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-metalgate-green "#00A645" "#00A645" "#00A645")
                (usgc-metalgate-orange "#FF6600" "#FF6600" "#FF6600")
                (usgc-metalgate-pink "#FF00FF" "#FF00FF" "#FF00FF")
                (usgc-metalgate-purple "#660066" "#660066" "#660066")
                (usgc-metalgate-red "#FF0000" "#FF0000" "#FF0000")
                (usgc-metalgate-yellow "#FFFF00" "#FFFF00" "#FFFF00")
                (usgc-metalgate-blue "#0000FF" "#0000FF" "#0000FF")
                (usgc-metalgate-link "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-metalgate-gold "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-metalgate-teal "#006666" "#006666" "#006666")
                (usgc-metalgate-maroon "#660000" "#660000" "#660000")
                (usgc-metalgate-gray "#999999" "#999999" "#999999")
                (usgc-metalgate-success "#00FF00" "#00FF00" "#00FF00")
                (usgc-metalgate-warning "#FF6600" "#FF6600" "#FF6600"))))
  (let ((faces
         '((cursor :background ,usgc-metalgate-blue)
           (default :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-fg)
           (error :foreground ,usgc-metalgate-red :weight bold)
           (warning :foreground ,usgc-metalgate-warning)
           (success :foreground ,usgc-metalgate-success)
           (fringe :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-yellow)
           (header-line :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-cyan :box nil)
           (highlight :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan)
           (hl-line :background ,usgc-metalgate-current :extend t)
           (link :foreground ,usgc-metalgate-link :underline t)
           (line-number :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-yellow)
           (line-number-current-line :background ,usgc-metalgate-blue :foreground ,usgc-metalgate-cyan)
           (minibuffer-prompt :foreground ,usgc-metalgate-cyan :weight bold)
           (mode-line :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-cyan :box nil)
           (mode-line-inactive :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-comment :box nil)
           (region :background ,usgc-metalgate-region :foreground ,usgc-metalgate-yellow :extend t)
           (shadow :foreground ,usgc-metalgate-comment)
           (show-paren-match :foreground ,usgc-metalgate-yellow :weight bold)
           (show-paren-mismatch :background ,usgc-metalgate-maroon :foreground ,usgc-metalgate-red :weight bold)
           (tooltip :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan)
           (vertical-border :foreground ,usgc-metalgate-teal)
           (match :background ,usgc-metalgate-region :foreground ,usgc-metalgate-yellow :weight bold)
           (lazy-highlight :background ,usgc-metalgate-current :foreground ,usgc-metalgate-yellow)
           (isearch :inherit match)
           (isearch-fail :background ,usgc-metalgate-red :foreground ,usgc-metalgate-bg)
           (trailing-whitespace :background ,usgc-metalgate-warning)
           (font-lock-builtin-face :foreground ,usgc-metalgate-green)
           (font-lock-comment-face :foreground ,usgc-metalgate-comment)
           (font-lock-comment-delimiter-face :foreground ,usgc-metalgate-comment-alt)
           (font-lock-constant-face :foreground ,usgc-metalgate-gold)
           (font-lock-doc-face :foreground ,usgc-metalgate-comment)
           (font-lock-doc-markup-face :foreground ,usgc-metalgate-comment-alt)
           (font-lock-function-name-face :foreground ,usgc-metalgate-cyan
                                         ,@(when usgc-metalgate-bolder-keywords (list :weight 'bold)))
           (font-lock-function-call-face :foreground ,usgc-metalgate-cyan)
           (font-lock-keyword-face :foreground ,usgc-metalgate-pink
                                   ,@(when usgc-metalgate-bolder-keywords (list :weight 'bold)))
           (font-lock-negation-char-face :foreground ,usgc-metalgate-red)
           (font-lock-number-face :foreground ,usgc-metalgate-gold)
           (font-lock-operator-face :foreground ,usgc-metalgate-pink)
           (font-lock-bracket-face :foreground ,usgc-metalgate-fg)
           (font-lock-delimiter-face :foreground ,usgc-metalgate-fg)
           (font-lock-escape-face :foreground ,usgc-metalgate-cyan)
           (font-lock-misc-punctuation-face :foreground ,usgc-metalgate-fg)
           (font-lock-preprocessor-face :foreground ,usgc-metalgate-orange)
           (font-lock-property-name-face :foreground ,usgc-metalgate-green)
           (font-lock-property-use-face :foreground ,usgc-metalgate-green)
           (font-lock-punctuation-face :foreground ,usgc-metalgate-fg)
           (font-lock-regexp-grouping-backslash :foreground ,usgc-metalgate-cyan)
           (font-lock-regexp-grouping-construct :foreground ,usgc-metalgate-gold)
           (font-lock-string-face :foreground ,usgc-metalgate-green)
           (font-lock-type-face :foreground ,usgc-metalgate-cyan)
           (font-lock-variable-name-face :foreground ,usgc-metalgate-fg)
           (font-lock-variable-use-face :foreground ,usgc-metalgate-fg)
           (font-lock-warning-face :foreground ,usgc-metalgate-red :weight bold)
           (ansi-color-black :foreground ,usgc-metalgate-bg :background ,usgc-metalgate-bg)
           (ansi-color-blue :foreground ,usgc-metalgate-blue :background ,usgc-metalgate-blue)
           (ansi-color-bright-blue :foreground ,usgc-metalgate-blue :background ,usgc-metalgate-blue)
           (ansi-color-cyan :foreground ,usgc-metalgate-cyan :background ,usgc-metalgate-cyan)
           (ansi-color-green :foreground ,usgc-metalgate-green :background ,usgc-metalgate-green)
           (ansi-color-magenta :foreground ,usgc-metalgate-pink :background ,usgc-metalgate-pink)
           (ansi-color-red :foreground ,usgc-metalgate-red :background ,usgc-metalgate-red)
           (ansi-color-white :foreground ,usgc-metalgate-fg :background ,usgc-metalgate-fg)
           (ansi-color-yellow :foreground ,usgc-metalgate-yellow :background ,usgc-metalgate-yellow)
           (company-tooltip :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan)
           (company-tooltip-selection :background ,usgc-metalgate-region :foreground ,usgc-metalgate-yellow)
           (company-tooltip-common :foreground ,usgc-metalgate-cyan :weight bold)
           (company-tooltip-annotation :foreground ,usgc-metalgate-green)
           (corfu-default :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan)
           (corfu-current :background ,usgc-metalgate-region :foreground ,usgc-metalgate-yellow)
           (corfu-border :background ,usgc-metalgate-comment-alt)
           (corfu-bar :background ,usgc-metalgate-comment)
           (completions-common-part :foreground ,usgc-metalgate-green)
           (completions-first-difference :foreground ,usgc-metalgate-yellow :weight bold)
           (consult-highlight-mark :inherit match)
           (consult-highlight-match :inherit match)
           (diff-added :background ,usgc-metalgate-green :foreground ,usgc-metalgate-bg :extend t)
           (diff-removed :background ,usgc-metalgate-maroon :foreground ,usgc-metalgate-red :extend t)
           (diff-changed :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan :extend t)
           (diff-refine-added :background ,usgc-metalgate-success :foreground ,usgc-metalgate-bg)
           (diff-refine-removed :background ,usgc-metalgate-red :foreground ,usgc-metalgate-bg)
           (diff-indicator-added :foreground ,usgc-metalgate-success)
           (diff-indicator-removed :foreground ,usgc-metalgate-red)
           (diff-indicator-changed :foreground ,usgc-metalgate-orange)
           (dired-directory :foreground ,usgc-metalgate-cyan :weight bold)
           (dired-flagged :foreground ,usgc-metalgate-red)
           (dired-header :foreground ,usgc-metalgate-yellow :weight bold)
           (dired-ignored :foreground ,usgc-metalgate-comment)
           (dired-marked :foreground ,usgc-metalgate-orange :weight bold)
           (dired-symlink :foreground ,usgc-metalgate-green :slant italic)
           (magit-branch-local :foreground ,usgc-metalgate-cyan)
           (magit-branch-remote :foreground ,usgc-metalgate-green)
           (magit-diff-added :foreground ,usgc-metalgate-green :background ,usgc-metalgate-bg)
           (magit-diff-added-highlight :foreground ,usgc-metalgate-green :background ,usgc-metalgate-current)
           (magit-diff-removed :foreground ,usgc-metalgate-red :background ,usgc-metalgate-bg)
           (magit-diff-removed-highlight :foreground ,usgc-metalgate-red :background ,usgc-metalgate-current)
           (magit-section-heading :foreground ,usgc-metalgate-yellow :weight bold)
           (magit-section-highlight :background ,usgc-metalgate-current :extend t)
           (org-block :foreground ,usgc-metalgate-yellow)
           (org-code :foreground ,usgc-metalgate-cyan)
           (org-date :foreground ,usgc-metalgate-link :underline t)
           (org-document-title :foreground ,usgc-metalgate-cyan :weight bold
                               ,@(when usgc-metalgate-enlarge-headings
                                   (list :height usgc-metalgate-height-doc-title)))
           (org-done :foreground ,usgc-metalgate-success)
           (org-level-1 :foreground ,usgc-metalgate-cyan :weight bold
                        ,@(when usgc-metalgate-enlarge-headings
                            (list :height usgc-metalgate-height-title-1)))
           (org-level-2 :foreground ,usgc-metalgate-yellow :weight bold
                        ,@(when usgc-metalgate-enlarge-headings
                            (list :height usgc-metalgate-height-title-2)))
           (org-level-3 :foreground ,usgc-metalgate-green
                        ,@(when usgc-metalgate-enlarge-headings
                            (list :height usgc-metalgate-height-title-3)))
           (org-level-4 :foreground ,usgc-metalgate-orange)
           (org-link :foreground ,usgc-metalgate-link :underline t)
           (org-quote :foreground ,usgc-metalgate-comment :slant italic)
           (org-table :foreground ,usgc-metalgate-gold)
           (org-todo :foreground ,usgc-metalgate-red :weight bold)
           (markdown-blockquote-face :foreground ,usgc-metalgate-comment :slant italic)
           (markdown-code-face :foreground ,usgc-metalgate-yellow)
           (markdown-header-face-1 :foreground ,usgc-metalgate-cyan :weight bold
                                   ,@(when usgc-metalgate-enlarge-headings
                                       (list :height usgc-metalgate-height-title-1)))
           (markdown-header-face-2 :foreground ,usgc-metalgate-yellow :weight bold
                                   ,@(when usgc-metalgate-enlarge-headings
                                       (list :height usgc-metalgate-height-title-2)))
           (markdown-header-face-3 :foreground ,usgc-metalgate-green
                                   ,@(when usgc-metalgate-enlarge-headings
                                       (list :height usgc-metalgate-height-title-3)))
           (markdown-inline-code-face :foreground ,usgc-metalgate-green)
           (rainbow-delimiters-depth-1-face :foreground ,usgc-metalgate-fg)
           (rainbow-delimiters-depth-2-face :foreground ,usgc-metalgate-cyan)
           (rainbow-delimiters-depth-3-face :foreground ,usgc-metalgate-yellow)
           (rainbow-delimiters-depth-4-face :foreground ,usgc-metalgate-green)
           (rainbow-delimiters-depth-5-face :foreground ,usgc-metalgate-orange)
           (rainbow-delimiters-depth-6-face :foreground ,usgc-metalgate-pink)
           (rainbow-delimiters-depth-7-face :foreground ,usgc-metalgate-blue)
           (rainbow-delimiters-unmatched-face :foreground ,usgc-metalgate-red :weight bold)
           (tab-bar :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-cyan)
           (tab-bar-tab :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan :box nil)
           (tab-bar-tab-inactive :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-comment :box nil)
           (tab-line :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-cyan)
           (tab-line-tab-current :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan :weight bold :box nil)
           (tab-line-tab :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-comment :box nil)
           (treesit-font-lock-attribute-face :foreground ,usgc-metalgate-blue)
           (treesit-font-lock-bracket-face :foreground ,usgc-metalgate-fg)
           (treesit-font-lock-builtin-face :foreground ,usgc-metalgate-green)
           (treesit-font-lock-comment-face :foreground ,usgc-metalgate-comment)
           (treesit-font-lock-constant-face :foreground ,usgc-metalgate-gold)
           (treesit-font-lock-constructor-face :foreground ,usgc-metalgate-cyan)
           (treesit-font-lock-delimiter-face :foreground ,usgc-metalgate-fg)
           (treesit-font-lock-doc-face :foreground ,usgc-metalgate-comment)
           (treesit-font-lock-embedded-face :foreground ,usgc-metalgate-cyan)
           (treesit-font-lock-escape-face :foreground ,usgc-metalgate-cyan)
           (treesit-font-lock-function-face :foreground ,usgc-metalgate-cyan)
           (treesit-font-lock-keyword-face :foreground ,usgc-metalgate-pink
                                           ,@(when usgc-metalgate-bolder-keywords (list :weight 'bold)))
           (treesit-font-lock-label-face :foreground ,usgc-metalgate-orange)
           (treesit-font-lock-number-face :foreground ,usgc-metalgate-gold)
           (treesit-font-lock-operator-face :foreground ,usgc-metalgate-pink)
           (treesit-font-lock-property-face :foreground ,usgc-metalgate-green)
           (treesit-font-lock-punctuation-face :foreground ,usgc-metalgate-fg)
           (treesit-font-lock-string-face :foreground ,usgc-metalgate-green)
           (treesit-font-lock-type-face :foreground ,usgc-metalgate-cyan)
           (treesit-font-lock-variable-face :foreground ,usgc-metalgate-fg)
           (tree-sitter-hl-face:attribute :inherit font-lock-constant-face)
           (tree-sitter-hl-face:comment :inherit font-lock-comment-face)
           (tree-sitter-hl-face:constant :inherit font-lock-constant-face)
           (tree-sitter-hl-face:escape :foreground ,usgc-metalgate-cyan)
           (tree-sitter-hl-face:function :inherit font-lock-function-name-face)
           (tree-sitter-hl-face:function.call :foreground ,usgc-metalgate-cyan :weight normal)
           (tree-sitter-hl-face:keyword :inherit font-lock-keyword-face)
           (tree-sitter-hl-face:number :inherit font-lock-number-face)
           (tree-sitter-hl-face:operator :inherit font-lock-operator-face)
           (tree-sitter-hl-face:property :foreground ,usgc-metalgate-fg)
           (tree-sitter-hl-face:punctuation :foreground ,usgc-metalgate-fg)
           (tree-sitter-hl-face:string :inherit font-lock-string-face)
           (tree-sitter-hl-face:type :inherit font-lock-type-face)
           (tree-sitter-hl-face:type.parameter :foreground ,usgc-metalgate-gold)
           (tree-sitter-hl-face:variable :inherit font-lock-variable-name-face)
           (tree-sitter-hl-face:variable.parameter :foreground ,usgc-metalgate-orange :weight normal)
           (web-mode-builtin-face :inherit font-lock-builtin-face)
           (web-mode-comment-face :inherit font-lock-comment-face)
           (web-mode-css-property-name-face :foreground ,usgc-metalgate-orange)
           (web-mode-function-name-face :foreground ,usgc-metalgate-cyan)
           (web-mode-html-attr-name-face :foreground ,usgc-metalgate-green)
           (web-mode-html-attr-value-face :foreground ,usgc-metalgate-yellow)
           (web-mode-html-tag-face :foreground ,usgc-metalgate-cyan :weight bold)
           (web-mode-keyword-face :inherit font-lock-keyword-face)
           (web-mode-string-face :inherit font-lock-string-face)
           (orderless-match-face-0 :foreground ,usgc-metalgate-cyan :weight bold)
           (orderless-match-face-1 :foreground ,usgc-metalgate-yellow :weight bold)
           (orderless-match-face-2 :foreground ,usgc-metalgate-green :weight bold)
           (orderless-match-face-3 :foreground ,usgc-metalgate-pink :weight bold)
           (vertico-current :background ,usgc-metalgate-region :foreground ,usgc-metalgate-yellow)
           (vertico-group-title :foreground ,usgc-metalgate-cyan :slant italic)
           (vertico-group-separator :foreground ,usgc-metalgate-comment :strike-through t)
           (which-func :foreground ,usgc-metalgate-cyan)
           (which-key-key-face :foreground ,usgc-metalgate-green)
           (which-key-command-description-face :foreground ,usgc-metalgate-fg)
           (whitespace-empty :background ,usgc-metalgate-maroon :foreground ,usgc-metalgate-red)
           (whitespace-hspace :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-comment)
           (whitespace-indentation :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-orange)
           (whitespace-line :background ,usgc-metalgate-current :foreground ,usgc-metalgate-cyan)
           (whitespace-newline :foreground ,usgc-metalgate-comment)
           (whitespace-space :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-comment)
           (whitespace-tab :background ,usgc-metalgate-bg :foreground ,usgc-metalgate-comment))))
    (apply #'custom-theme-set-faces
           'usgc-metalgate
           (let ((expand-with-func
                  (lambda (func spec)
                    (let (reduced-color-list)
                      (dolist (col colors reduced-color-list)
                        (push (list (car col) (funcall func col))
                              reduced-color-list))
                      (eval `(let ,reduced-color-list
                               (backquote ,spec))))))
                 whole-theme)
             (pcase-dolist (`(,face . ,spec) faces)
               (push `(,face
                       ((((min-colors 16777216)) ,(funcall expand-with-func 'cadr spec))
                        (((min-colors 256)) ,(funcall expand-with-func 'caddr spec))
                        (t ,(funcall expand-with-func 'cadddr spec))))
                     whole-theme))
             whole-theme))))

(provide-theme 'usgc-metalgate)

;;; usgc-metalgate.el ends here
