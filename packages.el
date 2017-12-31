;;; packages.el --- primary-clipboard layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author:  <risto>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `primary-clipboard-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `primary-clipboard/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `primary-clipboard/pre-init-PACKAGE' and/or
;;   `primary-clipboard/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst primary-clipboard-packages
  '((xclip :location elpa)))

(defun primary-clipboard/init-xclip ()
  ;; Sets ups copy/paste from PRIMARY clipboard
  (require 'xclip)
  (xclip-mode 1)
  (setq x-select-enable-clipboard t)

  (setq interprogram-cut-function 'xclip-select-text)
  (setq interprogram-paste-function 'xclip-selection-value)

  ;; To get the middle mouse button to paste from the PRIMARY clipboard, use:
  ;; (xterm-mouse-mode -1)
  )
