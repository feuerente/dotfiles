(setq user-full-name "feuerente"
      user-mail-address "feuerente@github.com")

;; TODO Big font not working
(setq doom-font (font-spec :family "Fira Code" :size 13 :weight 'semi-light)
     doom-variable-pitch-font (font-spec :family "Fira Sans" :size 14))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type 'relative)

(map! :leader
      (:prefix ("d" . "diff")
       :desc "ediff" "e" #'ediff
       :desc "ediff3" "E" #'ediff3
       :desc "Diff buffer with file" "c" #'diff-buffer-with-file
       :desc "ediff current file" "C" #'ediff-current-file))

;; TODO Why the fuck does this not work?
;; (use-package! undo-tree)
;; (global-undo-tree-mode)

;; (map! :leader
;;       :desc "Undo tree visualize" "U" #'undo-tree-visualize)

(map! :leader
      (:prefix ("t" . "toggle")
       :desc "Toggle truncate lines"          "t" #'toggle-truncate-lines))

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Avy search in all windows in this frame
(setq avy-all-windows t)

;; emmet-mode
;;(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markdown mode
;;(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation

;; projectile
(setq projectile-project-search-path '("/data/projects/" "/data/repos"))

;; View LaTeX in external exitor
(map! :map LaTeX-mode-map
      :localleader
      :desc "View" "v" #'TeX-view)

;; Live preview of LaTeX
(map! :map LaTeX-mode-map
      :localleader
      :desc "Live-View" "l" #'latex-preview-pane-mode)
