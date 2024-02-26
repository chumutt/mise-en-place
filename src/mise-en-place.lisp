#|
 This file is a part of mise-en-place
 (c) 2023 Chu the Pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: Chu the Pup <chufilthymutt@gmail.com>
|#

(in-package #:mise-en-place)

;; Define your project functionality here...

(defun greet (&optional (name "Chu the Pup"))
  (format T "Hello ~a from ~a!~&" name "mise-en-place"))

(defun help ()
  (format T "~&Usage:

  mise-en-place [name]~&"))

(defun %main (argv)
  "Parse CLI args."
  (when (member "-h" argv :test #'equal)
    ;; To properly parse command line arguments, use a third-party library such as
    ;; clingon, unix-opts, defmain, adopt… when needed.
    (help)
    (uiop:quit))
  (greet  (or (first argv)
              "dear lisp user")))

(defun main ()
  "Entry point for the executable.
  Reads command line arguments."
  ;; uiop:command-line-arguments returns a list of arguments (sans the script name).
  ;; We defer the work of parsing to %main because we call it also from the Roswell script.
  (%main (uiop:command-line-arguments)))
