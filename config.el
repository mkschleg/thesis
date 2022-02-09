


;; You need to load org first, but you should already have that...
(use-package ox-latex
  :demand t
  :after ox
  :config


  ;;;;;
  ;; Thesis Latex Config
  ;; [EXTRA] allows for LATEX_HEADER to be added after main header.
  ;;;;;
  (add-to-list 'org-latex-classes
               '("thesis"
                 "
\\providecommand{\\main}{.}
\\documentclass[12pt]{report}          % for default format
\\input{thesis_header.tex} % thesis header has all the details needed for the ualberta.sty and formatting junk
[EXTRA]
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]
                  "
                 ("\\chapter{%s}" . "\\chapter*{%s}")
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\mboxparagraph{%s}" . "\\mboxparagraph*{%s}")
                 ("\\mboxsubparagraph{%s}" . "\\mboxsubparagraph*{%s}"))))


(use-package org-ref
  :ensure t
  :custom
  (bibtex-completion-bibliography '("~/org/bib/full_library.bib"))
  (reftex-default-bibliography '("~/org/bib/full_library.bib"))
  (org-ref-default-bibliography '("~/org/bib/full_library.bib"))
  :config
  (require 'org-ref-ivy)

  (setq org-ref-insert-link-function 'org-ref-insert-link-hydra/body
        org-ref-insert-cite-function 'org-ref-cite-insert-ivy
        org-ref-insert-label-function 'org-ref-insert-label-link
        org-ref-insert-ref-function 'org-ref-insert-ref-link
        org-ref-cite-onclick-function (lambda (_) (org-ref-citation-hydra/body)))
  (define-key org-mode-map (kbd "C-c ]") 'org-ref-insert-link))


