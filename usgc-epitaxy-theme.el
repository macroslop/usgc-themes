;;; usgc-epitaxy.el --- USGC Epitaxy theme -*- lexical-binding: t; -*-

;;; Code:

(deftheme usgc-epitaxy)

(defgroup usgc-epitaxy nil
  "USGC Epitaxy theme options."
  :group 'faces)

(defcustom usgc-epitaxy-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'usgc-epitaxy)

(defcustom usgc-epitaxy-height-title-1 1.3
  "Font size 130%."
  :type 'number
  :group 'usgc-epitaxy)

(defcustom usgc-epitaxy-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'usgc-epitaxy)

(defcustom usgc-epitaxy-height-title-3 1.0
  "Font size 100%."
  :type 'number
  :group 'usgc-epitaxy)

(defcustom usgc-epitaxy-height-doc-title 1.25
  "Font size 125%."
  :type 'number
  :group 'usgc-epitaxy)

(defcustom usgc-epitaxy-bolder-keywords t
  "Use bold weight for syntax faces."
  :type 'boolean
  :group 'usgc-epitaxy)

(let ((colors '((usgc-epitaxy-bg "#000000" "#000000" "#000000")
                (usgc-epitaxy-fg "#FF00FF" "#FF00FF" "#FF00FF")
                (usgc-epitaxy-current "#FFFF00" "#FFFF00" "#FFFF00")
                (usgc-epitaxy-region "#000066" "#000066" "#000066")
                (usgc-epitaxy-comment "#999999" "#999999" "#999999")
                (usgc-epitaxy-comment-alt "#660066" "#660066" "#660066")
                (usgc-epitaxy-cyan "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-epitaxy-green "#00A645" "#00A645" "#00A645")
                (usgc-epitaxy-orange "#FF6600" "#FF6600" "#FF6600")
                (usgc-epitaxy-pink "#FF00FF" "#FF00FF" "#FF00FF")
                (usgc-epitaxy-purple "#660066" "#660066" "#660066")
                (usgc-epitaxy-red "#FF0000" "#FF0000" "#FF0000")
                (usgc-epitaxy-yellow "#FFFF00" "#FFFF00" "#FFFF00")
                (usgc-epitaxy-blue "#0000FF" "#0000FF" "#0000FF")
                (usgc-epitaxy-link "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-epitaxy-gold "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-epitaxy-teal "#006666" "#006666" "#006666")
                (usgc-epitaxy-maroon "#660000" "#660000" "#660000")
                (usgc-epitaxy-gray "#999999" "#999999" "#999999")
                (usgc-epitaxy-success "#00FF00" "#00FF00" "#00FF00")
                (usgc-epitaxy-warning "#FF6600" "#FF6600" "#FF6600"))))
  (let ((faces
         '((cursor :background ,usgc-epitaxy-fg)
           (default :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-fg)
           (error :foreground ,usgc-epitaxy-red :weight bold)
           (warning :foreground ,usgc-epitaxy-warning)
           (success :foreground ,usgc-epitaxy-success)
           (fringe :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-blue)
           (header-line :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-yellow :box nil)
           (highlight :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow)
           (hl-line :background ,usgc-epitaxy-region :extend t)
           (link :foreground ,usgc-epitaxy-link :underline t)
           (line-number :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-blue)
           (line-number-current-line :background ,usgc-epitaxy-yellow :foreground ,usgc-epitaxy-bg)
           (minibuffer-prompt :foreground ,usgc-epitaxy-pink :weight bold)
           (mode-line :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-yellow :box nil)
           (mode-line-inactive :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-comment :box nil)
           (region :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow :extend t)
           (shadow :foreground ,usgc-epitaxy-comment)
           (show-paren-match :foreground ,usgc-epitaxy-cyan :weight bold)
           (show-paren-mismatch :background ,usgc-epitaxy-maroon :foreground ,usgc-epitaxy-red :weight bold)
           (tooltip :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow)
           (vertical-border :foreground ,usgc-epitaxy-purple)
           (match :background ,usgc-epitaxy-yellow :foreground ,usgc-epitaxy-bg :weight bold)
           (lazy-highlight :background ,usgc-epitaxy-purple :foreground ,usgc-epitaxy-cyan)
           (isearch :inherit match)
           (isearch-fail :background ,usgc-epitaxy-red :foreground ,usgc-epitaxy-bg)
           (trailing-whitespace :background ,usgc-epitaxy-warning)
           (font-lock-builtin-face :foreground ,usgc-epitaxy-blue)
           (font-lock-comment-face :foreground ,usgc-epitaxy-comment)
           (font-lock-comment-delimiter-face :foreground ,usgc-epitaxy-comment-alt)
           (font-lock-constant-face :foreground ,usgc-epitaxy-gold)
           (font-lock-doc-face :foreground ,usgc-epitaxy-comment)
           (font-lock-doc-markup-face :foreground ,usgc-epitaxy-comment-alt)
           (font-lock-function-name-face :foreground ,usgc-epitaxy-cyan
                                         ,@(when usgc-epitaxy-bolder-keywords (list :weight 'bold)))
           (font-lock-function-call-face :foreground ,usgc-epitaxy-cyan)
           (font-lock-keyword-face :foreground ,usgc-epitaxy-pink
                                   ,@(when usgc-epitaxy-bolder-keywords (list :weight 'bold)))
           (font-lock-negation-char-face :foreground ,usgc-epitaxy-red)
           (font-lock-number-face :foreground ,usgc-epitaxy-gold)
           (font-lock-operator-face :foreground ,usgc-epitaxy-pink)
           (font-lock-bracket-face :foreground ,usgc-epitaxy-fg)
           (font-lock-delimiter-face :foreground ,usgc-epitaxy-fg)
           (font-lock-escape-face :foreground ,usgc-epitaxy-cyan)
           (font-lock-misc-punctuation-face :foreground ,usgc-epitaxy-fg)
           (font-lock-preprocessor-face :foreground ,usgc-epitaxy-orange)
           (font-lock-property-name-face :foreground ,usgc-epitaxy-green)
           (font-lock-property-use-face :foreground ,usgc-epitaxy-green)
           (font-lock-punctuation-face :foreground ,usgc-epitaxy-fg)
           (font-lock-regexp-grouping-backslash :foreground ,usgc-epitaxy-cyan)
           (font-lock-regexp-grouping-construct :foreground ,usgc-epitaxy-gold)
           (font-lock-string-face :foreground ,usgc-epitaxy-yellow)
           (font-lock-type-face :foreground ,usgc-epitaxy-green)
           (font-lock-variable-name-face :foreground ,usgc-epitaxy-fg)
           (font-lock-variable-use-face :foreground ,usgc-epitaxy-fg)
           (font-lock-warning-face :foreground ,usgc-epitaxy-red :weight bold)
           (ansi-color-black :foreground ,usgc-epitaxy-bg :background ,usgc-epitaxy-bg)
           (ansi-color-blue :foreground ,usgc-epitaxy-blue :background ,usgc-epitaxy-blue)
           (ansi-color-bright-blue :foreground ,usgc-epitaxy-blue :background ,usgc-epitaxy-blue)
           (ansi-color-cyan :foreground ,usgc-epitaxy-cyan :background ,usgc-epitaxy-cyan)
           (ansi-color-green :foreground ,usgc-epitaxy-success :background ,usgc-epitaxy-success)
           (ansi-color-magenta :foreground ,usgc-epitaxy-pink :background ,usgc-epitaxy-pink)
           (ansi-color-red :foreground ,usgc-epitaxy-red :background ,usgc-epitaxy-red)
           (ansi-color-white :foreground ,usgc-epitaxy-fg :background ,usgc-epitaxy-fg)
           (ansi-color-yellow :foreground ,usgc-epitaxy-yellow :background ,usgc-epitaxy-yellow)
           (company-tooltip :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow)
           (company-tooltip-selection :background ,usgc-epitaxy-purple :foreground ,usgc-epitaxy-cyan)
           (company-tooltip-common :foreground ,usgc-epitaxy-pink :weight bold)
           (company-tooltip-annotation :foreground ,usgc-epitaxy-green)
           (corfu-default :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow)
           (corfu-current :background ,usgc-epitaxy-purple :foreground ,usgc-epitaxy-cyan)
           (corfu-border :background ,usgc-epitaxy-comment-alt)
           (corfu-bar :background ,usgc-epitaxy-comment)
           (completions-common-part :foreground ,usgc-epitaxy-cyan)
           (completions-first-difference :foreground ,usgc-epitaxy-yellow :weight bold)
           (consult-highlight-mark :inherit match)
           (consult-highlight-match :inherit match)
           (diff-added :background ,usgc-epitaxy-green :foreground ,usgc-epitaxy-bg :extend t)
           (diff-removed :background ,usgc-epitaxy-maroon :foreground ,usgc-epitaxy-red :extend t)
           (diff-changed :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow :extend t)
           (diff-refine-added :background ,usgc-epitaxy-success :foreground ,usgc-epitaxy-bg)
           (diff-refine-removed :background ,usgc-epitaxy-red :foreground ,usgc-epitaxy-bg)
           (diff-indicator-added :foreground ,usgc-epitaxy-success)
           (diff-indicator-removed :foreground ,usgc-epitaxy-red)
           (diff-indicator-changed :foreground ,usgc-epitaxy-yellow)
           (dired-directory :foreground ,usgc-epitaxy-cyan :weight bold)
           (dired-flagged :foreground ,usgc-epitaxy-red)
           (dired-header :foreground ,usgc-epitaxy-pink :weight bold)
           (dired-ignored :foreground ,usgc-epitaxy-comment)
           (dired-marked :foreground ,usgc-epitaxy-orange :weight bold)
           (dired-symlink :foreground ,usgc-epitaxy-green :slant italic)
           (magit-branch-local :foreground ,usgc-epitaxy-cyan)
           (magit-branch-remote :foreground ,usgc-epitaxy-green)
           (magit-diff-added :foreground ,usgc-epitaxy-green :background ,usgc-epitaxy-bg)
           (magit-diff-added-highlight :foreground ,usgc-epitaxy-green :background ,usgc-epitaxy-region)
           (magit-diff-removed :foreground ,usgc-epitaxy-red :background ,usgc-epitaxy-bg)
           (magit-diff-removed-highlight :foreground ,usgc-epitaxy-red :background ,usgc-epitaxy-region)
           (magit-section-heading :foreground ,usgc-epitaxy-pink :weight bold)
           (magit-section-highlight :background ,usgc-epitaxy-region :extend t)
           (org-block :foreground ,usgc-epitaxy-yellow)
           (org-code :foreground ,usgc-epitaxy-cyan)
           (org-date :foreground ,usgc-epitaxy-link :underline t)
           (org-document-title :foreground ,usgc-epitaxy-gold :weight bold
                               ,@(when usgc-epitaxy-enlarge-headings
                                   (list :height usgc-epitaxy-height-doc-title)))
           (org-done :foreground ,usgc-epitaxy-success)
           (org-level-1 :foreground ,usgc-epitaxy-pink :weight bold
                        ,@(when usgc-epitaxy-enlarge-headings
                            (list :height usgc-epitaxy-height-title-1)))
           (org-level-2 :foreground ,usgc-epitaxy-cyan :weight bold
                        ,@(when usgc-epitaxy-enlarge-headings
                            (list :height usgc-epitaxy-height-title-2)))
           (org-level-3 :foreground ,usgc-epitaxy-green
                        ,@(when usgc-epitaxy-enlarge-headings
                            (list :height usgc-epitaxy-height-title-3)))
           (org-level-4 :foreground ,usgc-epitaxy-yellow)
           (org-link :foreground ,usgc-epitaxy-link :underline t)
           (org-quote :foreground ,usgc-epitaxy-comment :slant italic)
           (org-table :foreground ,usgc-epitaxy-gold)
           (org-todo :foreground ,usgc-epitaxy-orange :weight bold)
           (markdown-blockquote-face :foreground ,usgc-epitaxy-comment :slant italic)
           (markdown-code-face :foreground ,usgc-epitaxy-yellow)
           (markdown-header-face-1 :foreground ,usgc-epitaxy-pink :weight bold
                                   ,@(when usgc-epitaxy-enlarge-headings
                                       (list :height usgc-epitaxy-height-title-1)))
           (markdown-header-face-2 :foreground ,usgc-epitaxy-cyan :weight bold
                                   ,@(when usgc-epitaxy-enlarge-headings
                                       (list :height usgc-epitaxy-height-title-2)))
           (markdown-header-face-3 :foreground ,usgc-epitaxy-green
                                   ,@(when usgc-epitaxy-enlarge-headings
                                       (list :height usgc-epitaxy-height-title-3)))
           (markdown-inline-code-face :foreground ,usgc-epitaxy-cyan)
           (rainbow-delimiters-depth-1-face :foreground ,usgc-epitaxy-fg)
           (rainbow-delimiters-depth-2-face :foreground ,usgc-epitaxy-cyan)
           (rainbow-delimiters-depth-3-face :foreground ,usgc-epitaxy-pink)
           (rainbow-delimiters-depth-4-face :foreground ,usgc-epitaxy-green)
           (rainbow-delimiters-depth-5-face :foreground ,usgc-epitaxy-orange)
           (rainbow-delimiters-depth-6-face :foreground ,usgc-epitaxy-yellow)
           (rainbow-delimiters-depth-7-face :foreground ,usgc-epitaxy-blue)
           (rainbow-delimiters-unmatched-face :foreground ,usgc-epitaxy-red :weight bold)
           (tab-bar :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-yellow)
           (tab-bar-tab :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-pink :box nil)
           (tab-bar-tab-inactive :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-comment :box nil)
           (tab-line :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-yellow)
           (tab-line-tab-current :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-pink :weight bold :box nil)
           (tab-line-tab :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-comment :box nil)
           (treesit-font-lock-attribute-face :foreground ,usgc-epitaxy-blue)
           (treesit-font-lock-bracket-face :foreground ,usgc-epitaxy-fg)
           (treesit-font-lock-builtin-face :foreground ,usgc-epitaxy-blue)
           (treesit-font-lock-comment-face :foreground ,usgc-epitaxy-comment)
           (treesit-font-lock-constant-face :foreground ,usgc-epitaxy-gold)
           (treesit-font-lock-constructor-face :foreground ,usgc-epitaxy-green)
           (treesit-font-lock-delimiter-face :foreground ,usgc-epitaxy-fg)
           (treesit-font-lock-doc-face :foreground ,usgc-epitaxy-comment)
           (treesit-font-lock-embedded-face :foreground ,usgc-epitaxy-cyan)
           (treesit-font-lock-escape-face :foreground ,usgc-epitaxy-cyan)
           (treesit-font-lock-function-face :foreground ,usgc-epitaxy-cyan)
           (treesit-font-lock-keyword-face :foreground ,usgc-epitaxy-pink
                                           ,@(when usgc-epitaxy-bolder-keywords (list :weight 'bold)))
           (treesit-font-lock-label-face :foreground ,usgc-epitaxy-orange)
           (treesit-font-lock-number-face :foreground ,usgc-epitaxy-gold)
           (treesit-font-lock-operator-face :foreground ,usgc-epitaxy-pink)
           (treesit-font-lock-property-face :foreground ,usgc-epitaxy-green)
           (treesit-font-lock-punctuation-face :foreground ,usgc-epitaxy-fg)
           (treesit-font-lock-string-face :foreground ,usgc-epitaxy-yellow)
           (treesit-font-lock-type-face :foreground ,usgc-epitaxy-green)
           (treesit-font-lock-variable-face :foreground ,usgc-epitaxy-fg)
           (tree-sitter-hl-face:attribute :inherit font-lock-constant-face)
           (tree-sitter-hl-face:comment :inherit font-lock-comment-face)
           (tree-sitter-hl-face:constant :inherit font-lock-constant-face)
           (tree-sitter-hl-face:escape :foreground ,usgc-epitaxy-cyan)
           (tree-sitter-hl-face:function :inherit font-lock-function-name-face)
           (tree-sitter-hl-face:function.call :foreground ,usgc-epitaxy-cyan :weight normal)
           (tree-sitter-hl-face:keyword :inherit font-lock-keyword-face)
           (tree-sitter-hl-face:number :inherit font-lock-number-face)
           (tree-sitter-hl-face:operator :inherit font-lock-operator-face)
           (tree-sitter-hl-face:property :foreground ,usgc-epitaxy-fg)
           (tree-sitter-hl-face:punctuation :foreground ,usgc-epitaxy-fg)
           (tree-sitter-hl-face:string :inherit font-lock-string-face)
           (tree-sitter-hl-face:type :inherit font-lock-type-face)
           (tree-sitter-hl-face:type.parameter :foreground ,usgc-epitaxy-gold)
           (tree-sitter-hl-face:variable :inherit font-lock-variable-name-face)
           (tree-sitter-hl-face:variable.parameter :foreground ,usgc-epitaxy-orange :weight normal)
           (web-mode-builtin-face :inherit font-lock-builtin-face)
           (web-mode-comment-face :inherit font-lock-comment-face)
           (web-mode-css-property-name-face :foreground ,usgc-epitaxy-orange)
           (web-mode-function-name-face :foreground ,usgc-epitaxy-cyan)
           (web-mode-html-attr-name-face :foreground ,usgc-epitaxy-green)
           (web-mode-html-attr-value-face :foreground ,usgc-epitaxy-yellow)
           (web-mode-html-tag-face :foreground ,usgc-epitaxy-pink :weight bold)
           (web-mode-keyword-face :inherit font-lock-keyword-face)
           (web-mode-string-face :inherit font-lock-string-face)
           (orderless-match-face-0 :foreground ,usgc-epitaxy-cyan :weight bold)
           (orderless-match-face-1 :foreground ,usgc-epitaxy-pink :weight bold)
           (orderless-match-face-2 :foreground ,usgc-epitaxy-yellow :weight bold)
           (orderless-match-face-3 :foreground ,usgc-epitaxy-green :weight bold)
           (vertico-current :background ,usgc-epitaxy-purple :foreground ,usgc-epitaxy-cyan)
           (vertico-group-title :foreground ,usgc-epitaxy-pink :slant italic)
           (vertico-group-separator :foreground ,usgc-epitaxy-comment :strike-through t)
           (which-func :foreground ,usgc-epitaxy-cyan)
           (which-key-key-face :foreground ,usgc-epitaxy-blue)
           (which-key-command-description-face :foreground ,usgc-epitaxy-fg)
           (whitespace-empty :background ,usgc-epitaxy-maroon :foreground ,usgc-epitaxy-red)
           (whitespace-hspace :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-comment)
           (whitespace-indentation :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-orange)
           (whitespace-line :background ,usgc-epitaxy-region :foreground ,usgc-epitaxy-yellow)
           (whitespace-newline :foreground ,usgc-epitaxy-comment)
           (whitespace-space :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-comment)
           (whitespace-tab :background ,usgc-epitaxy-bg :foreground ,usgc-epitaxy-comment))))
    (apply #'custom-theme-set-faces
           'usgc-epitaxy
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

(provide-theme 'usgc-epitaxy)

;;; usgc-epitaxy.el ends here
