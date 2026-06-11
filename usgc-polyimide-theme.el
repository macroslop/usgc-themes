;;; usgc-polyimide.el --- USGC Polyimide theme -*- lexical-binding: t; -*-

;;; Code:

(deftheme usgc-polyimide)

(defgroup usgc-polyimide nil
  "USGC Polyimide theme options."
  :group 'faces)

(defcustom usgc-polyimide-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'usgc-polyimide)

(defcustom usgc-polyimide-height-title-1 1.3
  "Font size 130%."
  :type 'number
  :group 'usgc-polyimide)

(defcustom usgc-polyimide-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'usgc-polyimide)

(defcustom usgc-polyimide-height-title-3 1.0
  "Font size 100%."
  :type 'number
  :group 'usgc-polyimide)

(defcustom usgc-polyimide-height-doc-title 1.25
  "Font size 125%."
  :type 'number
  :group 'usgc-polyimide)

(defcustom usgc-polyimide-bolder-keywords t
  "Use bold weight for syntax faces."
  :type 'boolean
  :group 'usgc-polyimide)

(let ((colors '((usgc-polyimide-bg "#000000" "#000000" "#000000")
                (usgc-polyimide-fg "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-polyimide-current "#0000FF" "#0000FF" "#0000FF")
                (usgc-polyimide-region "#000066" "#000066" "#000066")
                (usgc-polyimide-comment "#666600" "#666600" "#666600")
                (usgc-polyimide-comment-alt "#999999" "#999999" "#999999")
                (usgc-polyimide-cyan "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-polyimide-green "#00A645" "#00A645" "#00A645")
                (usgc-polyimide-orange "#FF6600" "#FF6600" "#FF6600")
                (usgc-polyimide-pink "#FF0000" "#FF0000" "#FF0000")
                (usgc-polyimide-purple "#006666" "#006666" "#006666")
                (usgc-polyimide-red "#FF0000" "#FF0000" "#FF0000")
                (usgc-polyimide-yellow "#FFFF00" "#FFFF00" "#FFFF00")
                (usgc-polyimide-blue "#0000FF" "#0000FF" "#0000FF")
                (usgc-polyimide-link "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-polyimide-gold "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-polyimide-teal "#006666" "#006666" "#006666")
                (usgc-polyimide-maroon "#660000" "#660000" "#660000")
                (usgc-polyimide-gray "#999999" "#999999" "#999999")
                (usgc-polyimide-success "#00A645" "#00A645" "#00A645")
                (usgc-polyimide-warning "#FF6600" "#FF6600" "#FF6600"))))
  (let ((faces
         '((cursor :background ,usgc-polyimide-green)
           (default :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-fg)
           (error :foreground ,usgc-polyimide-red :weight bold)
           (warning :foreground ,usgc-polyimide-warning)
           (success :foreground ,usgc-polyimide-success)
           (fringe :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-orange)
           (header-line :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-green :box nil)
           (highlight :background ,usgc-polyimide-region :foreground ,usgc-polyimide-cyan)
           (hl-line :background ,usgc-polyimide-region :extend t)
           (link :foreground ,usgc-polyimide-link :underline t)
           (line-number :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-orange)
           (line-number-current-line :background ,usgc-polyimide-blue :foreground "#FFFFFF")
           (minibuffer-prompt :foreground ,usgc-polyimide-orange :weight bold)
           (mode-line :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-green :box nil)
           (mode-line-inactive :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-comment-alt :box nil)
           (region :background ,usgc-polyimide-region :foreground ,usgc-polyimide-cyan :extend t)
           (shadow :foreground ,usgc-polyimide-comment)
           (show-paren-match :foreground ,usgc-polyimide-cyan :weight bold)
           (show-paren-mismatch :background ,usgc-polyimide-maroon :foreground ,usgc-polyimide-red :weight bold)
           (tooltip :background ,usgc-polyimide-region :foreground ,usgc-polyimide-cyan)
           (vertical-border :foreground ,usgc-polyimide-teal)
           (match :background ,usgc-polyimide-yellow :foreground ,usgc-polyimide-bg :weight bold)
           (lazy-highlight :background ,usgc-polyimide-blue :foreground ,usgc-polyimide-cyan)
           (isearch :inherit match)
           (isearch-fail :background ,usgc-polyimide-red :foreground ,usgc-polyimide-bg)
           (trailing-whitespace :background ,usgc-polyimide-warning)
           (font-lock-builtin-face :foreground ,usgc-polyimide-green)
           (font-lock-comment-face :foreground ,usgc-polyimide-comment)
           (font-lock-comment-delimiter-face :foreground ,usgc-polyimide-comment-alt)
           (font-lock-constant-face :foreground ,usgc-polyimide-cyan)
           (font-lock-doc-face :foreground ,usgc-polyimide-comment)
           (font-lock-doc-markup-face :foreground ,usgc-polyimide-comment-alt)
           (font-lock-function-name-face :foreground ,usgc-polyimide-green
                                         ,@(when usgc-polyimide-bolder-keywords (list :weight 'bold)))
           (font-lock-function-call-face :foreground ,usgc-polyimide-green)
           (font-lock-keyword-face :foreground ,usgc-polyimide-orange
                                   ,@(when usgc-polyimide-bolder-keywords (list :weight 'bold)))
           (font-lock-negation-char-face :foreground ,usgc-polyimide-red)
           (font-lock-number-face :foreground ,usgc-polyimide-gold)
           (font-lock-operator-face :foreground ,usgc-polyimide-orange)
           (font-lock-bracket-face :foreground ,usgc-polyimide-fg)
           (font-lock-delimiter-face :foreground ,usgc-polyimide-fg)
           (font-lock-escape-face :foreground ,usgc-polyimide-cyan)
           (font-lock-misc-punctuation-face :foreground ,usgc-polyimide-fg)
           (font-lock-preprocessor-face :foreground ,usgc-polyimide-red)
           (font-lock-property-name-face :foreground ,usgc-polyimide-cyan)
           (font-lock-property-use-face :foreground ,usgc-polyimide-cyan)
           (font-lock-punctuation-face :foreground ,usgc-polyimide-fg)
           (font-lock-regexp-grouping-backslash :foreground ,usgc-polyimide-cyan)
           (font-lock-regexp-grouping-construct :foreground ,usgc-polyimide-gold)
           (font-lock-string-face :foreground ,usgc-polyimide-yellow)
           (font-lock-type-face :foreground ,usgc-polyimide-cyan)
           (font-lock-variable-name-face :foreground ,usgc-polyimide-fg)
           (font-lock-variable-use-face :foreground ,usgc-polyimide-fg)
           (font-lock-warning-face :foreground ,usgc-polyimide-red :weight bold)
           (ansi-color-black :foreground ,usgc-polyimide-bg :background ,usgc-polyimide-bg)
           (ansi-color-blue :foreground ,usgc-polyimide-blue :background ,usgc-polyimide-blue)
           (ansi-color-bright-blue :foreground ,usgc-polyimide-blue :background ,usgc-polyimide-blue)
           (ansi-color-cyan :foreground ,usgc-polyimide-cyan :background ,usgc-polyimide-cyan)
           (ansi-color-green :foreground ,usgc-polyimide-green :background ,usgc-polyimide-green)
           (ansi-color-magenta :foreground ,usgc-polyimide-orange :background ,usgc-polyimide-orange)
           (ansi-color-red :foreground ,usgc-polyimide-red :background ,usgc-polyimide-red)
           (ansi-color-white :foreground ,usgc-polyimide-fg :background ,usgc-polyimide-fg)
           (ansi-color-yellow :foreground ,usgc-polyimide-yellow :background ,usgc-polyimide-yellow)
           (company-tooltip :background ,usgc-polyimide-region :foreground ,usgc-polyimide-cyan)
           (company-tooltip-selection :background ,usgc-polyimide-blue :foreground ,usgc-polyimide-cyan)
           (company-tooltip-common :foreground ,usgc-polyimide-orange :weight bold)
           (company-tooltip-annotation :foreground ,usgc-polyimide-green)
           (corfu-default :background ,usgc-polyimide-region :foreground ,usgc-polyimide-cyan)
           (corfu-current :background ,usgc-polyimide-blue :foreground ,usgc-polyimide-cyan)
           (corfu-border :background ,usgc-polyimide-comment-alt)
           (corfu-bar :background ,usgc-polyimide-comment)
           (completions-common-part :foreground ,usgc-polyimide-green)
           (completions-first-difference :foreground ,usgc-polyimide-yellow :weight bold)
           (consult-highlight-mark :inherit match)
           (consult-highlight-match :inherit match)
           (diff-added :background ,usgc-polyimide-green :foreground ,usgc-polyimide-bg :extend t)
           (diff-removed :background ,usgc-polyimide-maroon :foreground ,usgc-polyimide-red :extend t)
           (diff-changed :background ,usgc-polyimide-blue :foreground ,usgc-polyimide-cyan :extend t)
           (diff-refine-added :background ,usgc-polyimide-green :foreground ,usgc-polyimide-bg)
           (diff-refine-removed :background ,usgc-polyimide-red :foreground ,usgc-polyimide-bg)
           (diff-indicator-added :foreground ,usgc-polyimide-success)
           (diff-indicator-removed :foreground ,usgc-polyimide-red)
           (diff-indicator-changed :foreground ,usgc-polyimide-orange)
           (dired-directory :foreground ,usgc-polyimide-green :weight bold)
           (dired-flagged :foreground ,usgc-polyimide-red)
           (dired-header :foreground ,usgc-polyimide-orange :weight bold)
           (dired-ignored :foreground ,usgc-polyimide-comment-alt)
           (dired-marked :foreground ,usgc-polyimide-yellow :weight bold)
           (dired-symlink :foreground ,usgc-polyimide-cyan :slant italic)
           (magit-branch-local :foreground ,usgc-polyimide-cyan)
           (magit-branch-remote :foreground ,usgc-polyimide-green)
           (magit-diff-added :foreground ,usgc-polyimide-green :background ,usgc-polyimide-bg)
           (magit-diff-added-highlight :foreground ,usgc-polyimide-green :background ,usgc-polyimide-region)
           (magit-diff-removed :foreground ,usgc-polyimide-red :background ,usgc-polyimide-bg)
           (magit-diff-removed-highlight :foreground ,usgc-polyimide-red :background ,usgc-polyimide-region)
           (magit-section-heading :foreground ,usgc-polyimide-orange :weight bold)
           (magit-section-highlight :background ,usgc-polyimide-region :extend t)
           (org-block :foreground ,usgc-polyimide-yellow)
           (org-code :foreground ,usgc-polyimide-cyan)
           (org-date :foreground ,usgc-polyimide-link :underline t)
           (org-document-title :foreground ,usgc-polyimide-gold :weight bold
                               ,@(when usgc-polyimide-enlarge-headings
                                   (list :height usgc-polyimide-height-doc-title)))
           (org-done :foreground ,usgc-polyimide-success)
           (org-level-1 :foreground ,usgc-polyimide-orange :weight bold
                        ,@(when usgc-polyimide-enlarge-headings
                            (list :height usgc-polyimide-height-title-1)))
           (org-level-2 :foreground ,usgc-polyimide-green :weight bold
                        ,@(when usgc-polyimide-enlarge-headings
                            (list :height usgc-polyimide-height-title-2)))
           (org-level-3 :foreground ,usgc-polyimide-cyan
                        ,@(when usgc-polyimide-enlarge-headings
                            (list :height usgc-polyimide-height-title-3)))
           (org-level-4 :foreground ,usgc-polyimide-yellow)
           (org-link :foreground ,usgc-polyimide-link :underline t)
           (org-quote :foreground ,usgc-polyimide-comment-alt :slant italic)
           (org-table :foreground ,usgc-polyimide-gold)
           (org-todo :foreground ,usgc-polyimide-red :weight bold)
           (markdown-blockquote-face :foreground ,usgc-polyimide-comment-alt :slant italic)
           (markdown-code-face :foreground ,usgc-polyimide-yellow)
           (markdown-header-face-1 :foreground ,usgc-polyimide-orange :weight bold
                                   ,@(when usgc-polyimide-enlarge-headings
                                       (list :height usgc-polyimide-height-title-1)))
           (markdown-header-face-2 :foreground ,usgc-polyimide-green :weight bold
                                   ,@(when usgc-polyimide-enlarge-headings
                                       (list :height usgc-polyimide-height-title-2)))
           (markdown-header-face-3 :foreground ,usgc-polyimide-cyan
                                   ,@(when usgc-polyimide-enlarge-headings
                                       (list :height usgc-polyimide-height-title-3)))
           (markdown-inline-code-face :foreground ,usgc-polyimide-cyan)
           (rainbow-delimiters-depth-1-face :foreground ,usgc-polyimide-fg)
           (rainbow-delimiters-depth-2-face :foreground ,usgc-polyimide-green)
           (rainbow-delimiters-depth-3-face :foreground ,usgc-polyimide-cyan)
           (rainbow-delimiters-depth-4-face :foreground ,usgc-polyimide-orange)
           (rainbow-delimiters-depth-5-face :foreground ,usgc-polyimide-yellow)
           (rainbow-delimiters-depth-6-face :foreground ,usgc-polyimide-red)
           (rainbow-delimiters-depth-7-face :foreground ,usgc-polyimide-blue)
           (rainbow-delimiters-unmatched-face :foreground ,usgc-polyimide-red :weight bold)
           (tab-bar :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-green)
           (tab-bar-tab :background ,usgc-polyimide-region :foreground ,usgc-polyimide-fg :box nil)
           (tab-bar-tab-inactive :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-comment-alt :box nil)
           (tab-line :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-green)
           (tab-line-tab-current :background ,usgc-polyimide-region :foreground ,usgc-polyimide-fg :weight bold :box nil)
           (tab-line-tab :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-comment-alt :box nil)
           (treesit-font-lock-attribute-face :foreground ,usgc-polyimide-cyan)
           (treesit-font-lock-bracket-face :foreground ,usgc-polyimide-fg)
           (treesit-font-lock-builtin-face :foreground ,usgc-polyimide-green)
           (treesit-font-lock-comment-face :foreground ,usgc-polyimide-comment)
           (treesit-font-lock-constant-face :foreground ,usgc-polyimide-cyan)
           (treesit-font-lock-constructor-face :foreground ,usgc-polyimide-green)
           (treesit-font-lock-delimiter-face :foreground ,usgc-polyimide-fg)
           (treesit-font-lock-doc-face :foreground ,usgc-polyimide-comment)
           (treesit-font-lock-embedded-face :foreground ,usgc-polyimide-cyan)
           (treesit-font-lock-escape-face :foreground ,usgc-polyimide-cyan)
           (treesit-font-lock-function-face :foreground ,usgc-polyimide-green)
           (treesit-font-lock-keyword-face :foreground ,usgc-polyimide-orange
                                           ,@(when usgc-polyimide-bolder-keywords (list :weight 'bold)))
           (treesit-font-lock-label-face :foreground ,usgc-polyimide-red)
           (treesit-font-lock-number-face :foreground ,usgc-polyimide-gold)
           (treesit-font-lock-operator-face :foreground ,usgc-polyimide-orange)
           (treesit-font-lock-property-face :foreground ,usgc-polyimide-cyan)
           (treesit-font-lock-punctuation-face :foreground ,usgc-polyimide-fg)
           (treesit-font-lock-string-face :foreground ,usgc-polyimide-yellow)
           (treesit-font-lock-type-face :foreground ,usgc-polyimide-cyan)
           (treesit-font-lock-variable-face :foreground ,usgc-polyimide-fg)
           (tree-sitter-hl-face:attribute :inherit font-lock-constant-face)
           (tree-sitter-hl-face:comment :inherit font-lock-comment-face)
           (tree-sitter-hl-face:constant :inherit font-lock-constant-face)
           (tree-sitter-hl-face:escape :foreground ,usgc-polyimide-cyan)
           (tree-sitter-hl-face:function :inherit font-lock-function-name-face)
           (tree-sitter-hl-face:function.call :foreground ,usgc-polyimide-green :weight normal)
           (tree-sitter-hl-face:keyword :inherit font-lock-keyword-face)
           (tree-sitter-hl-face:number :inherit font-lock-number-face)
           (tree-sitter-hl-face:operator :inherit font-lock-operator-face)
           (tree-sitter-hl-face:property :foreground ,usgc-polyimide-fg)
           (tree-sitter-hl-face:punctuation :foreground ,usgc-polyimide-fg)
           (tree-sitter-hl-face:string :inherit font-lock-string-face)
           (tree-sitter-hl-face:type :inherit font-lock-type-face)
           (tree-sitter-hl-face:type.parameter :foreground ,usgc-polyimide-gold)
           (tree-sitter-hl-face:variable :inherit font-lock-variable-name-face)
           (tree-sitter-hl-face:variable.parameter :foreground ,usgc-polyimide-orange :weight normal)
           (web-mode-builtin-face :inherit font-lock-builtin-face)
           (web-mode-comment-face :inherit font-lock-comment-face)
           (web-mode-css-property-name-face :foreground ,usgc-polyimide-orange)
           (web-mode-function-name-face :foreground ,usgc-polyimide-green)
           (web-mode-html-attr-name-face :foreground ,usgc-polyimide-cyan)
           (web-mode-html-attr-value-face :foreground ,usgc-polyimide-yellow)
           (web-mode-html-tag-face :foreground ,usgc-polyimide-orange :weight bold)
           (web-mode-keyword-face :inherit font-lock-keyword-face)
           (web-mode-string-face :inherit font-lock-string-face)
           (orderless-match-face-0 :foreground ,usgc-polyimide-green :weight bold)
           (orderless-match-face-1 :foreground ,usgc-polyimide-orange :weight bold)
           (orderless-match-face-2 :foreground ,usgc-polyimide-yellow :weight bold)
           (orderless-match-face-3 :foreground ,usgc-polyimide-cyan :weight bold)
           (vertico-current :background ,usgc-polyimide-blue :foreground ,usgc-polyimide-cyan)
           (vertico-group-title :foreground ,usgc-polyimide-green :slant italic)
           (vertico-group-separator :foreground ,usgc-polyimide-comment :strike-through t)
           (which-func :foreground ,usgc-polyimide-green)
           (which-key-key-face :foreground ,usgc-polyimide-cyan)
           (which-key-command-description-face :foreground ,usgc-polyimide-fg)
           (whitespace-empty :background ,usgc-polyimide-maroon :foreground ,usgc-polyimide-red)
           (whitespace-hspace :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-comment)
           (whitespace-indentation :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-orange)
           (whitespace-line :background ,usgc-polyimide-region :foreground ,usgc-polyimide-cyan)
           (whitespace-newline :foreground ,usgc-polyimide-comment-alt)
           (whitespace-space :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-comment)
           (whitespace-tab :background ,usgc-polyimide-bg :foreground ,usgc-polyimide-comment))))
    (apply #'custom-theme-set-faces
           'usgc-polyimide
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

(provide-theme 'usgc-polyimide)

;;; usgc-polyimide.el ends here
