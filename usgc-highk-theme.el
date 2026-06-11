;;; usgc-highk.el --- USGC HighK theme -*- lexical-binding: t; -*-

;;; Code:

(deftheme usgc-highk)

(defgroup usgc-highk nil
  "USGC HighK theme options."
  :group 'faces)

(defcustom usgc-highk-enlarge-headings t
  "Use different font sizes for some headings and titles."
  :type 'boolean
  :group 'usgc-highk)

(defcustom usgc-highk-height-title-1 1.3
  "Font size 130%."
  :type 'number
  :group 'usgc-highk)

(defcustom usgc-highk-height-title-2 1.1
  "Font size 110%."
  :type 'number
  :group 'usgc-highk)

(defcustom usgc-highk-height-title-3 1.0
  "Font size 100%."
  :type 'number
  :group 'usgc-highk)

(defcustom usgc-highk-height-doc-title 1.25
  "Font size 125%."
  :type 'number
  :group 'usgc-highk)

(defcustom usgc-highk-bolder-keywords t
  "Use bold weight for syntax faces."
  :type 'boolean
  :group 'usgc-highk)

(let ((colors '((usgc-highk-bg "#FFFFFF" "#FFFFFF" "#FFFFFF")
                (usgc-highk-fg "#000000" "#000000" "#000000")
                (usgc-highk-current "#00FF00" "#00FF00" "#00FF00")
                (usgc-highk-region "#00FF00" "#00FF00" "#00FF00")
                (usgc-highk-comment "#999999" "#999999" "#999999")
                (usgc-highk-comment-alt "#666600" "#666600" "#666600")
                (usgc-highk-cyan "#006666" "#006666" "#006666")
                (usgc-highk-green "#00A645" "#00A645" "#00A645")
                (usgc-highk-orange "#FF6600" "#FF6600" "#FF6600")
                (usgc-highk-pink "#660066" "#660066" "#660066")
                (usgc-highk-purple "#000066" "#000066" "#000066")
                (usgc-highk-red "#FF0000" "#FF0000" "#FF0000")
                (usgc-highk-yellow "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-highk-blue "#0000FF" "#0000FF" "#0000FF")
                (usgc-highk-link "#0000FF" "#0000FF" "#0000FF")
                (usgc-highk-gold "#FFBF00" "#FFBF00" "#FFBF00")
                (usgc-highk-teal "#00FFFF" "#00FFFF" "#00FFFF")
                (usgc-highk-maroon "#660000" "#660000" "#660000")
                (usgc-highk-gray "#999999" "#999999" "#999999")
                (usgc-highk-success "#00A645" "#00A645" "#00A645")
                (usgc-highk-warning "#FF6600" "#FF6600" "#FF6600"))))
  (let ((faces
         '((cursor :background ,usgc-highk-blue)
           (default :background ,usgc-highk-bg :foreground ,usgc-highk-fg)
           (error :foreground ,usgc-highk-red :weight bold)
           (warning :foreground ,usgc-highk-warning)
           (success :foreground ,usgc-highk-success)
           (fringe :background ,usgc-highk-bg :foreground ,usgc-highk-red)
           (header-line :background ,usgc-highk-bg :foreground ,usgc-highk-blue :box nil)
           (highlight :background ,usgc-highk-region :foreground ,usgc-highk-fg)
           (hl-line :background ,usgc-highk-region :foreground ,usgc-highk-fg :extend t)
           (link :foreground ,usgc-highk-link :underline t)
           (line-number :background ,usgc-highk-bg :foreground ,usgc-highk-red)
           (line-number-current-line :background ,usgc-highk-region :foreground ,usgc-highk-fg)
           (minibuffer-prompt :foreground ,usgc-highk-blue :weight bold)
           (mode-line :background ,usgc-highk-bg :foreground ,usgc-highk-blue :box nil)
           (mode-line-inactive :background ,usgc-highk-bg :foreground ,usgc-highk-comment :box nil)
           (region :background ,usgc-highk-region :foreground ,usgc-highk-fg :extend t)
           (shadow :foreground ,usgc-highk-comment)
           (show-paren-match :foreground ,usgc-highk-blue :background ,usgc-highk-region :weight bold)
           (show-paren-mismatch :background ,usgc-highk-maroon :foreground ,usgc-highk-red :weight bold)
           (tooltip :background ,usgc-highk-region :foreground ,usgc-highk-fg)
           (vertical-border :foreground ,usgc-highk-comment)
           (match :background ,usgc-highk-yellow :foreground ,usgc-highk-fg :weight bold)
           (lazy-highlight :background ,usgc-highk-yellow :foreground ,usgc-highk-blue)
           (isearch :inherit match)
           (isearch-fail :background ,usgc-highk-red :foreground ,usgc-highk-bg)
           (trailing-whitespace :background ,usgc-highk-warning)
           (font-lock-builtin-face :foreground ,usgc-highk-purple)
           (font-lock-comment-face :foreground ,usgc-highk-comment)
           (font-lock-comment-delimiter-face :foreground ,usgc-highk-comment-alt)
           (font-lock-constant-face :foreground ,usgc-highk-red)
           (font-lock-doc-face :foreground ,usgc-highk-comment)
           (font-lock-doc-markup-face :foreground ,usgc-highk-comment-alt)
           (font-lock-function-name-face :foreground ,usgc-highk-blue
                                         ,@(when usgc-highk-bolder-keywords (list :weight 'bold)))
           (font-lock-function-call-face :foreground ,usgc-highk-blue)
           (font-lock-keyword-face :foreground ,usgc-highk-pink
                                   ,@(when usgc-highk-bolder-keywords (list :weight 'bold)))
           (font-lock-negation-char-face :foreground ,usgc-highk-red)
           (font-lock-number-face :foreground ,usgc-highk-red)
           (font-lock-operator-face :foreground ,usgc-highk-pink)
           (font-lock-bracket-face :foreground ,usgc-highk-fg)
           (font-lock-delimiter-face :foreground ,usgc-highk-fg)
           (font-lock-escape-face :foreground ,usgc-highk-cyan)
           (font-lock-misc-punctuation-face :foreground ,usgc-highk-fg)
           (font-lock-preprocessor-face :foreground ,usgc-highk-orange)
           (font-lock-property-name-face :foreground ,usgc-highk-purple)
           (font-lock-property-use-face :foreground ,usgc-highk-purple)
           (font-lock-punctuation-face :foreground ,usgc-highk-fg)
           (font-lock-regexp-grouping-backslash :foreground ,usgc-highk-cyan)
           (font-lock-regexp-grouping-construct :foreground ,usgc-highk-purple)
           (font-lock-string-face :foreground ,usgc-highk-green)
           (font-lock-type-face :foreground ,usgc-highk-purple)
           (font-lock-variable-name-face :foreground ,usgc-highk-fg)
           (font-lock-variable-use-face :foreground ,usgc-highk-fg)
           (font-lock-warning-face :foreground ,usgc-highk-red :weight bold)
           (ansi-color-black :foreground ,usgc-highk-fg :background ,usgc-highk-fg)
           (ansi-color-blue :foreground ,usgc-highk-blue :background ,usgc-highk-blue)
           (ansi-color-bright-blue :foreground ,usgc-highk-blue :background ,usgc-highk-blue)
           (ansi-color-cyan :foreground ,usgc-highk-teal :background ,usgc-highk-teal)
           (ansi-color-green :foreground ,usgc-highk-green :background ,usgc-highk-green)
           (ansi-color-magenta :foreground ,usgc-highk-pink :background ,usgc-highk-pink)
           (ansi-color-red :foreground ,usgc-highk-red :background ,usgc-highk-red)
           (ansi-color-white :foreground ,usgc-highk-bg :background ,usgc-highk-bg)
           (ansi-color-yellow :foreground ,usgc-highk-yellow :background ,usgc-highk-yellow)
           (company-tooltip :background ,usgc-highk-region :foreground ,usgc-highk-fg)
           (company-tooltip-selection :background ,usgc-highk-yellow :foreground ,usgc-highk-fg)
           (company-tooltip-common :foreground ,usgc-highk-blue :weight bold)
           (company-tooltip-annotation :foreground ,usgc-highk-pink)
           (corfu-default :background ,usgc-highk-region :foreground ,usgc-highk-fg)
           (corfu-current :background ,usgc-highk-yellow :foreground ,usgc-highk-fg)
           (corfu-border :background ,usgc-highk-comment-alt)
           (corfu-bar :background ,usgc-highk-comment)
           (completions-common-part :foreground ,usgc-highk-green)
           (completions-first-difference :foreground ,usgc-highk-blue :weight bold)
           (consult-highlight-mark :inherit match)
           (consult-highlight-match :inherit match)
           (diff-added :background ,usgc-highk-green :foreground ,usgc-highk-bg :extend t)
           (diff-removed :background ,usgc-highk-maroon :foreground ,usgc-highk-red :extend t)
           (diff-changed :background ,usgc-highk-yellow :foreground ,usgc-highk-fg :extend t)
           (diff-refine-added :background ,usgc-highk-current :foreground ,usgc-highk-fg)
           (diff-refine-removed :background ,usgc-highk-red :foreground ,usgc-highk-bg)
           (diff-indicator-added :foreground ,usgc-highk-success)
           (diff-indicator-removed :foreground ,usgc-highk-red)
           (diff-indicator-changed :foreground ,usgc-highk-orange)
           (dired-directory :foreground ,usgc-highk-blue :weight bold)
           (dired-flagged :foreground ,usgc-highk-red)
           (dired-header :foreground ,usgc-highk-pink :weight bold)
           (dired-ignored :foreground ,usgc-highk-comment)
           (dired-marked :foreground ,usgc-highk-orange :weight bold)
           (dired-symlink :foreground ,usgc-highk-cyan :slant italic)
           (magit-branch-local :foreground ,usgc-highk-blue)
           (magit-branch-remote :foreground ,usgc-highk-green)
           (magit-diff-added :foreground ,usgc-highk-green :background ,usgc-highk-bg)
           (magit-diff-added-highlight :foreground ,usgc-highk-green :background ,usgc-highk-region)
           (magit-diff-removed :foreground ,usgc-highk-red :background ,usgc-highk-bg)
           (magit-diff-removed-highlight :foreground ,usgc-highk-red :background ,usgc-highk-region)
           (magit-section-heading :foreground ,usgc-highk-pink :weight bold)
           (magit-section-highlight :background ,usgc-highk-region :extend t)
           (org-block :foreground ,usgc-highk-orange)
           (org-code :foreground ,usgc-highk-cyan)
           (org-date :foreground ,usgc-highk-link :underline t)
           (org-document-title :foreground ,usgc-highk-blue :weight bold
                               ,@(when usgc-highk-enlarge-headings
                                   (list :height usgc-highk-height-doc-title)))
           (org-done :foreground ,usgc-highk-success)
           (org-level-1 :foreground ,usgc-highk-pink :weight bold
                        ,@(when usgc-highk-enlarge-headings
                            (list :height usgc-highk-height-title-1)))
           (org-level-2 :foreground ,usgc-highk-blue :weight bold
                        ,@(when usgc-highk-enlarge-headings
                            (list :height usgc-highk-height-title-2)))
           (org-level-3 :foreground ,usgc-highk-green
                        ,@(when usgc-highk-enlarge-headings
                            (list :height usgc-highk-height-title-3)))
           (org-level-4 :foreground ,usgc-highk-orange)
           (org-link :foreground ,usgc-highk-link :underline t)
           (org-quote :foreground ,usgc-highk-comment :slant italic)
           (org-table :foreground ,usgc-highk-purple)
           (org-todo :foreground ,usgc-highk-red :weight bold)
           (markdown-blockquote-face :foreground ,usgc-highk-comment :slant italic)
           (markdown-code-face :foreground ,usgc-highk-orange)
           (markdown-header-face-1 :foreground ,usgc-highk-pink :weight bold
                                   ,@(when usgc-highk-enlarge-headings
                                       (list :height usgc-highk-height-title-1)))
           (markdown-header-face-2 :foreground ,usgc-highk-blue :weight bold
                                   ,@(when usgc-highk-enlarge-headings
                                       (list :height usgc-highk-height-title-2)))
           (markdown-header-face-3 :foreground ,usgc-highk-green
                                   ,@(when usgc-highk-enlarge-headings
                                       (list :height usgc-highk-height-title-3)))
           (markdown-inline-code-face :foreground ,usgc-highk-cyan)
           (rainbow-delimiters-depth-1-face :foreground ,usgc-highk-fg)
           (rainbow-delimiters-depth-2-face :foreground ,usgc-highk-blue)
           (rainbow-delimiters-depth-3-face :foreground ,usgc-highk-pink)
           (rainbow-delimiters-depth-4-face :foreground ,usgc-highk-green)
           (rainbow-delimiters-depth-5-face :foreground ,usgc-highk-orange)
           (rainbow-delimiters-depth-6-face :foreground ,usgc-highk-purple)
           (rainbow-delimiters-depth-7-face :foreground ,usgc-highk-red)
           (rainbow-delimiters-unmatched-face :foreground ,usgc-highk-red :weight bold)
           (tab-bar :background ,usgc-highk-bg :foreground ,usgc-highk-blue)
           (tab-bar-tab :background ,usgc-highk-region :foreground ,usgc-highk-fg :box nil)
           (tab-bar-tab-inactive :background ,usgc-highk-bg :foreground ,usgc-highk-comment :box nil)
           (tab-line :background ,usgc-highk-bg :foreground ,usgc-highk-blue)
           (tab-line-tab-current :background ,usgc-highk-region :foreground ,usgc-highk-fg :weight bold :box nil)
           (tab-line-tab :background ,usgc-highk-bg :foreground ,usgc-highk-comment :box nil)
           (treesit-font-lock-attribute-face :foreground ,usgc-highk-purple)
           (treesit-font-lock-bracket-face :foreground ,usgc-highk-fg)
           (treesit-font-lock-builtin-face :foreground ,usgc-highk-purple)
           (treesit-font-lock-comment-face :foreground ,usgc-highk-comment)
           (treesit-font-lock-constant-face :foreground ,usgc-highk-red)
           (treesit-font-lock-constructor-face :foreground ,usgc-highk-blue)
           (treesit-font-lock-delimiter-face :foreground ,usgc-highk-fg)
           (treesit-font-lock-doc-face :foreground ,usgc-highk-comment)
           (treesit-font-lock-embedded-face :foreground ,usgc-highk-cyan)
           (treesit-font-lock-escape-face :foreground ,usgc-highk-cyan)
           (treesit-font-lock-function-face :foreground ,usgc-highk-blue)
           (treesit-font-lock-keyword-face :foreground ,usgc-highk-pink
                                           ,@(when usgc-highk-bolder-keywords (list :weight 'bold)))
           (treesit-font-lock-label-face :foreground ,usgc-highk-orange)
           (treesit-font-lock-number-face :foreground ,usgc-highk-red)
           (treesit-font-lock-operator-face :foreground ,usgc-highk-pink)
           (treesit-font-lock-property-face :foreground ,usgc-highk-purple)
           (treesit-font-lock-punctuation-face :foreground ,usgc-highk-fg)
           (treesit-font-lock-string-face :foreground ,usgc-highk-green)
           (treesit-font-lock-type-face :foreground ,usgc-highk-purple)
           (treesit-font-lock-variable-face :foreground ,usgc-highk-fg)
           (tree-sitter-hl-face:attribute :inherit font-lock-constant-face)
           (tree-sitter-hl-face:comment :inherit font-lock-comment-face)
           (tree-sitter-hl-face:constant :inherit font-lock-constant-face)
           (tree-sitter-hl-face:escape :foreground ,usgc-highk-cyan)
           (tree-sitter-hl-face:function :inherit font-lock-function-name-face)
           (tree-sitter-hl-face:function.call :foreground ,usgc-highk-blue :weight normal)
           (tree-sitter-hl-face:keyword :inherit font-lock-keyword-face)
           (tree-sitter-hl-face:number :inherit font-lock-number-face)
           (tree-sitter-hl-face:operator :inherit font-lock-operator-face)
           (tree-sitter-hl-face:property :foreground ,usgc-highk-fg)
           (tree-sitter-hl-face:punctuation :foreground ,usgc-highk-fg)
           (tree-sitter-hl-face:string :inherit font-lock-string-face)
           (tree-sitter-hl-face:type :inherit font-lock-type-face)
           (tree-sitter-hl-face:type.parameter :foreground ,usgc-highk-purple)
           (tree-sitter-hl-face:variable :inherit font-lock-variable-name-face)
           (tree-sitter-hl-face:variable.parameter :foreground ,usgc-highk-orange :weight normal)
           (web-mode-builtin-face :inherit font-lock-builtin-face)
           (web-mode-comment-face :inherit font-lock-comment-face)
           (web-mode-css-property-name-face :foreground ,usgc-highk-orange)
           (web-mode-function-name-face :foreground ,usgc-highk-blue)
           (web-mode-html-attr-name-face :foreground ,usgc-highk-purple)
           (web-mode-html-attr-value-face :foreground ,usgc-highk-green)
           (web-mode-html-tag-face :foreground ,usgc-highk-pink :weight bold)
           (web-mode-keyword-face :inherit font-lock-keyword-face)
           (web-mode-string-face :inherit font-lock-string-face)
           (orderless-match-face-0 :foreground ,usgc-highk-blue :weight bold)
           (orderless-match-face-1 :foreground ,usgc-highk-pink :weight bold)
           (orderless-match-face-2 :foreground ,usgc-highk-green :weight bold)
           (orderless-match-face-3 :foreground ,usgc-highk-orange :weight bold)
           (vertico-current :inherit hl-line)
           (vertico-group-title :foreground ,usgc-highk-blue :slant italic)
           (vertico-group-separator :foreground ,usgc-highk-comment :strike-through t)
           (which-func :foreground ,usgc-highk-blue)
           (which-key-key-face :foreground ,usgc-highk-purple)
           (which-key-command-description-face :foreground ,usgc-highk-fg)
           (whitespace-empty :background ,usgc-highk-maroon :foreground ,usgc-highk-red)
           (whitespace-hspace :background ,usgc-highk-bg :foreground ,usgc-highk-comment)
           (whitespace-indentation :background ,usgc-highk-bg :foreground ,usgc-highk-orange)
           (whitespace-line :background ,usgc-highk-region :foreground ,usgc-highk-fg)
           (whitespace-newline :foreground ,usgc-highk-comment)
           (whitespace-space :background ,usgc-highk-bg :foreground ,usgc-highk-comment)
           (whitespace-tab :background ,usgc-highk-bg :foreground ,usgc-highk-comment))))
    (apply #'custom-theme-set-faces
           'usgc-highk
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

(provide-theme 'usgc-highk)

;;; usgc-highk.el ends here
