#|
 This file is a part of mise-en-place
 (c) 2023 Chu the Pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: Chu the Pup <chufilthymutt@gmail.com>
|#

(in-package :asdf-user)

(defsystem "mise-en-place-tests"
  :description "Test suite for the mise-en-place system"
  :author "Chu the Pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :depends-on (:mise-en-place
               :fiveam)
  :license "GNU GPL-3.0"
  :serial T
  :components ((:module "tests"
                        :serial T
                        :components ((:file "packages")
                                     (:file "test-mise-en-place"))))

  ;; The following would not return the right exit code on error, but still 0.
  ;; :perform (test-op (op _) (symbol-call :fiveam :run-all-tests))
  )
