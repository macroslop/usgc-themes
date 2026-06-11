;;; usgc-reticle.el --- USGC Reticle theme -*- lexical-binding: t; -*-

;;; Code:

(deftheme usgc-reticle)

(defgroup usgc-reticle nil
  "USGC Reticle theme options."
  :group 'faces)

(defcustom usgc-reticle-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'usgc-reticle)

(defcustom usgc-reticle-height-title-1 1.3
  "Font size 130%."
  :type 'number
  :group 'usgc-reticle)

(defcustom usgc-reticle-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'usgc-reticle)

(defcustom usgc-reticle-height-title-3 1.0
  "Font size 100%."
  :type 'number
  :group 'usgc-reticle)

(defcustom usgc-reticle-height-doc-title 1.25
  "Font size 125%."
  :type 'number
  :group 'usgc-reticle)

(defcustom usgc-reticle-bolder-keywords t
  "Use bold weight for syntax faces."
  :type 'boolean
  :group 'usgc-reticle)

(let ((colors '((usgc-reticle-bg "#000000" "#000000" "#000000")
                (usgc-reticle-fg "#00A645" "#00A645" "#00A645")
                (usgc-reticle-current "#0000FF" "#0000FF" "#0000FF")
                (usgc-reticle-region "#FFFFFF" "#FFFFFF" "#FFFFFF")
                (usgc-reticle-comment "#999999" "#999999" "#999999")
                (usgc-reticle-comment-alt "#666600" "#666600" "#666600")
                (usgc-reticle-cyan "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-reticle-green "#00FF00" "#00FF00" "#00FF00")
                (usgc-reticle-orange "#FF6600" "#FF6600" "#FF6600")
                (usgc-reticle-pink "#FF0000" "#FF0000" "#FF0000")
                (usgc-reticle-purple "#006666" "#006666" "#006666")
                (usgc-reticle-red "#FF0000" "#FF0000" "#FF0000")
                (usgc-reticle-yellow "#FFFF00" "#FFFF00" "#FFFF00")
                (usgc-reticle-blue "#0000FF" "#0000FF" "#0000FF")
                (usgc-reticle-link "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-reticle-gold "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-reticle-teal "#006666" "#006666" "#006666")
                (usgc-reticle-maroon "#660000" "#660000" "#660000")
                (usgc-reticle-gray "#999999" "#999999" "#999999")
                (usgc-reticle-success "#00FF00" "#00FF00" "#00FF00")
                (usgc-reticle-warning "#FF6600" "#FF6600" "#FF6600"))))
  (let ((faces
         '((cursor :background ,usgc-reticle-region)
           (default :background ,usgc-reticle-bg :foreground ,usgc-reticle-fg)
           (error :foreground ,usgc-reticle-red :weight bold)
           (warning :foreground ,usgc-reticle-warning)
           (success :foreground ,usgc-reticle-success)
           (fringe :background ,usgc-reticle-bg :foreground ,usgc-reticle-red)
           (header-line :background ,usgc-reticle-bg :foreground ,usgc-reticle-region :box nil)
           (highlight :background ,usgc-reticle-current :foreground ,usgc-reticle-region)
           (hl-line :background ,usgc-reticle-current :extend t)
           (link :foreground ,usgc-reticle-link :underline t)
           (line-number :background ,usgc-reticle-bg :foreground ,usgc-reticle-red)
           (line-number-current-line :background ,usgc-reticle-blue :foreground ,usgc-reticle-region)
           (minibuffer-prompt :foreground ,usgc-reticle-region :weight bold)
           (mode-line :background ,usgc-reticle-bg :foreground ,usgc-reticle-region :box nil)
           (mode-line-inactive :background ,usgc-reticle-bg :foreground ,usgc-reticle-comment :box nil)
           (region :background ,usgc-reticle-region :foreground ,usgc-reticle-blue :extend t)
           (shadow :foreground ,usgc-reticle-comment)
           (show-paren-match :foreground ,usgc-reticle-cyan :weight bold)
           (show-paren-mismatch :background ,usgc-reticle-maroon :foreground ,usgc-reticle-red :weight bold)
           (tooltip :background ,usgc-reticle-current :foreground ,usgc-reticle-region)
           (vertical-border :foreground ,usgc-reticle-teal)
           (match :background ,usgc-reticle-region :foreground ,usgc-reticle-blue :weight bold)
           (lazy-highlight :background ,usgc-reticle-current :foreground ,usgc-reticle-cyan)
           (isearch :inherit match)
           (isearch-fail :background ,usgc-reticle-red :foreground ,usgc-reticle-bg)
           (trailing-whitespace :background ,usgc-reticle-warning)
           (font-lock-builtin-face :foreground ,usgc-reticle-cyan)
           (font-lock-comment-face :foreground ,usgc-reticle-comment)
           (font-lock-comment-delimiter-face :foreground ,usgc-reticle-comment-alt)
           (font-lock-constant-face :foreground ,usgc-reticle-gold)
           (font-lock-doc-face :foreground ,usgc-reticle-comment)
           (font-lock-doc-markup-face :foreground ,usgc-reticle-comment-alt)
           (font-lock-function-name-face :foreground ,usgc-reticle-region
                                         ,@(when usgc-reticle-bolder-keywords (list :weight 'bold)))
           (font-lock-function-call-face :foreground ,usgc-reticle-region)
           (font-lock-keyword-face :foreground ,usgc-reticle-red
                                   ,@(when usgc-reticle-bolder-keywords (list :weight 'bold)))
           (font-lock-negation-char-face :foreground ,usgc-reticle-red)
           (font-lock-number-face :foreground ,usgc-reticle-gold)
           (font-lock-operator-face :foreground ,usgc-reticle-red)
           (font-lock-bracket-face :foreground ,usgc-reticle-fg)
           (font-lock-delimiter-face :foreground ,usgc-reticle-fg)
           (font-lock-escape-face :foreground ,usgc-reticle-cyan)
           (font-lock-misc-punctuation-face :foreground ,usgc-reticle-fg)
           (font-lock-preprocessor-face :foreground ,usgc-reticle-orange)
           (font-lock-property-name-face :foreground ,usgc-reticle-cyan)
           (font-lock-property-use-face :foreground ,usgc-reticle-cyan)
           (font-lock-punctuation-face :foreground ,usgc-reticle-fg)
           (font-lock-regexp-grouping-backslash :foreground ,usgc-reticle-cyan)
           (font-lock-regexp-grouping-construct :foreground ,usgc-reticle-gold)
           (font-lock-string-face :foreground ,usgc-reticle-green)
           (font-lock-type-face :foreground ,usgc-reticle-cyan)
           (font-lock-variable-name-face :foreground ,usgc-reticle-fg)
           (font-lock-variable-use-face :foreground ,usgc-reticle-fg)
           (font-lock-warning-face :foreground ,usgc-reticle-red :weight bold)
           (ansi-color-black :foreground ,usgc-reticle-bg :background ,usgc-reticle-bg)
           (ansi-color-blue :foreground ,usgc-reticle-blue :background ,usgc-reticle-blue)
           (ansi-color-bright-blue :foreground ,usgc-reticle-blue :background ,usgc-reticle-blue)
           (ansi-color-cyan :foreground ,usgc-reticle-cyan :background ,usgc-reticle-cyan)
           (ansi-color-green :foreground ,usgc-reticle-green :background ,usgc-reticle-green)
           (ansi-color-magenta :foreground ,usgc-reticle-orange :background ,usgc-reticle-orange)
           (ansi-color-red :foreground ,usgc-reticle-red :background ,usgc-reticle-red)
           (ansi-color-white :foreground ,usgc-reticle-region :background ,usgc-reticle-region)
           (ansi-color-yellow :foreground ,usgc-reticle-yellow :background ,usgc-reticle-yellow)
           (company-tooltip :background ,usgc-reticle-current :foreground ,usgc-reticle-region)
           (company-tooltip-selection :background ,usgc-reticle-region :foreground ,usgc-reticle-blue)
           (company-tooltip-common :foreground ,usgc-reticle-red :weight bold)
           (company-tooltip-annotation :foreground ,usgc-reticle-cyan)
           (corfu-default :background ,usgc-reticle-current :foreground ,usgc-reticle-region)
           (corfu-current :background ,usgc-reticle-region :foreground ,usgc-reticle-blue)
           (corfu-border :background ,usgc-reticle-comment-alt)
           (corfu-bar :background ,usgc-reticle-comment)
           (completions-common-part :foreground ,usgc-reticle-cyan)
           (completions-first-difference :foreground ,usgc-reticle-green :weight bold)
           (consult-highlight-mark :inherit match)
           (consult-highlight-match :inherit match)
           (diff-added :background ,usgc-reticle-green :foreground ,usgc-reticle-bg :extend t)
           (diff-removed :background ,usgc-reticle-maroon :foreground ,usgc-reticle-red :extend t)
           (diff-changed :background ,usgc-reticle-current :foreground ,usgc-reticle-region :extend t)
           (diff-refine-added :background ,usgc-reticle-success :foreground ,usgc-reticle-bg)
           (diff-refine-removed :background ,usgc-reticle-red :foreground ,usgc-reticle-bg)
           (diff-indicator-added :foreground ,usgc-reticle-success)
           (diff-indicator-removed :foreground ,usgc-reticle-red)
           (diff-indicator-changed :foreground ,usgc-reticle-orange)
           (dired-directory :foreground ,usgc-reticle-region :weight bold)
           (dired-flagged :foreground ,usgc-reticle-red)
           (dired-header :foreground ,usgc-reticle-red :weight bold)
           (dired-ignored :foreground ,usgc-reticle-comment)
           (dired-marked :foreground ,usgc-reticle-yellow :weight bold)
           (dired-symlink :foreground ,usgc-reticle-cyan :slant italic)
           (magit-branch-local :foreground ,usgc-reticle-cyan)
           (magit-branch-remote :foreground ,usgc-reticle-green)
           (magit-diff-added :foreground ,usgc-reticle-green :background ,usgc-reticle-bg)
           (magit-diff-added-highlight :foreground ,usgc-reticle-green :background ,usgc-reticle-current)
           (magit-diff-removed :foreground ,usgc-reticle-red :background ,usgc-reticle-bg)
           (magit-diff-removed-highlight :foreground ,usgc-reticle-red :background ,usgc-reticle-current)
           (magit-section-heading :foreground ,usgc-reticle-red :weight bold)
           (magit-section-highlight :background ,usgc-reticle-current :extend t)
           (org-block :foreground ,usgc-reticle-yellow)
           (org-code :foreground ,usgc-reticle-cyan)
           (org-date :foreground ,usgc-reticle-link :underline t)
           (org-document-title :foreground ,usgc-reticle-region :weight bold
                               ,@(when usgc-reticle-enlarge-headings
                                   (list :height usgc-reticle-height-doc-title)))
           (org-done :foreground ,usgc-reticle-success)
           (org-level-1 :foreground ,usgc-reticle-region :weight bold
                        ,@(when usgc-reticle-enlarge-headings
                            (list :height usgc-reticle-height-title-1)))
           (org-level-2 :foreground ,usgc-reticle-red :weight bold
                        ,@(when usgc-reticle-enlarge-headings
                            (list :height usgc-reticle-height-title-2)))
           (org-level-3 :foreground ,usgc-reticle-cyan
                        ,@(when usgc-reticle-enlarge-headings
                            (list :height usgc-reticle-height-title-3)))
           (org-level-4 :foreground ,usgc-reticle-yellow)
           (org-link :foreground ,usgc-reticle-link :underline t)
           (org-quote :foreground ,usgc-reticle-comment :slant italic)
           (org-table :foreground ,usgc-reticle-gold)
           (org-todo :foreground ,usgc-reticle-red :weight bold)
           (markdown-blockquote-face :foreground ,usgc-reticle-comment :slant italic)
           (markdown-code-face :foreground ,usgc-reticle-yellow)
           (markdown-header-face-1 :foreground ,usgc-reticle-region :weight bold
                                   ,@(when usgc-reticle-enlarge-headings
                                       (list :height usgc-reticle-height-title-1)))
           (markdown-header-face-2 :foreground ,usgc-reticle-red :weight bold
                                   ,@(when usgc-reticle-enlarge-headings
                                       (list :height usgc-reticle-height-title-2)))
           (markdown-header-face-3 :foreground ,usgc-reticle-cyan
                                   ,@(when usgc-reticle-enlarge-headings
                                       (list :height usgc-reticle-height-title-3)))
           (markdown-inline-code-face :foreground ,usgc-reticle-cyan)
           (rainbow-delimiters-depth-1-face :foreground ,usgc-reticle-fg)
           (rainbow-delimiters-depth-2-face :foreground ,usgc-reticle-region)
           (rainbow-delimiters-depth-3-face :foreground ,usgc-reticle-red)
           (rainbow-delimiters-depth-4-face :foreground ,usgc-reticle-cyan)
           (rainbow-delimiters-depth-5-face :foreground ,usgc-reticle-yellow)
           (rainbow-delimiters-depth-6-face :foreground ,usgc-reticle-green)
           (rainbow-delimiters-depth-7-face :foreground ,usgc-reticle-orange)
           (rainbow-delimiters-unmatched-face :foreground ,usgc-reticle-red :weight bold)
           (tab-bar :background ,usgc-reticle-bg :foreground ,usgc-reticle-region)
           (tab-bar-tab :background ,usgc-reticle-current :foreground ,usgc-reticle-region :box nil)
           (tab-bar-tab-inactive :background ,usgc-reticle-bg :foreground ,usgc-reticle-comment :box nil)
           (tab-line :background ,usgc-reticle-bg :foreground ,usgc-reticle-region)
           (tab-line-tab-current :background ,usgc-reticle-current :foreground ,usgc-reticle-region :weight bold :box nil)
           (tab-line-tab :background ,usgc-reticle-bg :foreground ,usgc-reticle-comment :box nil)
           (treesit-font-lock-attribute-face :foreground ,usgc-reticle-cyan)
           (treesit-font-lock-bracket-face :foreground ,usgc-reticle-fg)
           (treesit-font-lock-builtin-face :foreground ,usgc-reticle-cyan)
           (treesit-font-lock-comment-face :foreground ,usgc-reticle-comment)
           (treesit-font-lock-constant-face :foreground ,usgc-reticle-gold)
           (treesit-font-lock-constructor-face :foreground ,usgc-reticle-region)
           (treesit-font-lock-delimiter-face :foreground ,usgc-reticle-fg)
           (treesit-font-lock-doc-face :foreground ,usgc-reticle-comment)
           (treesit-font-lock-embedded-face :foreground ,usgc-reticle-cyan)
           (treesit-font-lock-escape-face :foreground ,usgc-reticle-cyan)
           (treesit-font-lock-function-face :foreground ,usgc-reticle-region)
           (treesit-font-lock-keyword-face :foreground ,usgc-reticle-red
                                           ,@(when usgc-reticle-bolder-keywords (list :weight 'bold)))
           (treesit-font-lock-label-face :foreground ,usgc-reticle-orange)
           (treesit-font-lock-number-face :foreground ,usgc-reticle-gold)
           (treesit-font-lock-operator-face :foreground ,usgc-reticle-red)
           (treesit-font-lock-property-face :foreground ,usgc-reticle-cyan)
           (treesit-font-lock-punctuation-face :foreground ,usgc-reticle-fg)
           (treesit-font-lock-string-face :foreground ,usgc-reticle-green)
           (treesit-font-lock-type-face :foreground ,usgc-reticle-cyan)
           (treesit-font-lock-variable-face :foreground ,usgc-reticle-fg)
           (tree-sitter-hl-face:attribute :inherit font-lock-constant-face)
           (tree-sitter-hl-face:comment :inherit font-lock-comment-face)
           (tree-sitter-hl-face:constant :inherit font-lock-constant-face)
           (tree-sitter-hl-face:escape :foreground ,usgc-reticle-cyan)
           (tree-sitter-hl-face:function :inherit font-lock-function-name-face)
           (tree-sitter-hl-face:function.call :foreground ,usgc-reticle-region :weight normal)
           (tree-sitter-hl-face:keyword :inherit font-lock-keyword-face)
           (tree-sitter-hl-face:number :inherit font-lock-number-face)
           (tree-sitter-hl-face:operator :inherit font-lock-operator-face)
           (tree-sitter-hl-face:property :foreground ,usgc-reticle-fg)
           (tree-sitter-hl-face:punctuation :foreground ,usgc-reticle-fg)
           (tree-sitter-hl-face:string :inherit font-lock-string-face)
           (tree-sitter-hl-face:type :inherit font-lock-type-face)
           (tree-sitter-hl-face:type.parameter :foreground ,usgc-reticle-gold)
           (tree-sitter-hl-face:variable :inherit font-lock-variable-name-face)
           (tree-sitter-hl-face:variable.parameter :foreground ,usgc-reticle-orange :weight normal)
           (web-mode-builtin-face :inherit font-lock-builtin-face)
           (web-mode-comment-face :inherit font-lock-comment-face)
           (web-mode-css-property-name-face :foreground ,usgc-reticle-orange)
           (web-mode-function-name-face :foreground ,usgc-reticle-region)
           (web-mode-html-attr-name-face :foreground ,usgc-reticle-cyan)
           (web-mode-html-attr-value-face :foreground ,usgc-reticle-green)
           (web-mode-html-tag-face :foreground ,usgc-reticle-red :weight bold)
           (web-mode-keyword-face :inherit font-lock-keyword-face)
           (web-mode-string-face :inherit font-lock-string-face)
           (orderless-match-face-0 :foreground ,usgc-reticle-region :weight bold)
           (orderless-match-face-1 :foreground ,usgc-reticle-red :weight bold)
           (orderless-match-face-2 :foreground ,usgc-reticle-green :weight bold)
           (orderless-match-face-3 :foreground ,usgc-reticle-cyan :weight bold)
           (vertico-current :background ,usgc-reticle-region :foreground ,usgc-reticle-blue)
           (vertico-group-title :foreground ,usgc-reticle-region :slant italic)
           (vertico-group-separator :foreground ,usgc-reticle-comment :strike-through t)
           (which-func :foreground ,usgc-reticle-region)
           (which-key-key-face :foreground ,usgc-reticle-cyan)
           (which-key-command-description-face :foreground ,usgc-reticle-fg)
           (whitespace-empty :background ,usgc-reticle-maroon :foreground ,usgc-reticle-red)
           (whitespace-hspace :background ,usgc-reticle-bg :foreground ,usgc-reticle-comment)
           (whitespace-indentation :background ,usgc-reticle-bg :foreground ,usgc-reticle-orange)
           (whitespace-line :background ,usgc-reticle-current :foreground ,usgc-reticle-region)
           (whitespace-newline :foreground ,usgc-reticle-comment)
           (whitespace-space :background ,usgc-reticle-bg :foreground ,usgc-reticle-comment)
           (whitespace-tab :background ,usgc-reticle-bg :foreground ,usgc-reticle-comment))))
    (apply #'custom-theme-set-faces
           'usgc-reticle
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

(provide-theme 'usgc-reticle)

;;; usgc-reticle.el ends here
