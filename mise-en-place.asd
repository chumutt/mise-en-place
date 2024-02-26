#|
 This file is a part of mise-en-place
 (c) 2023 Chu the Pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: Chu the Pup <chufilthymutt@gmail.com>
|#

(in-package :asdf-user)

(defsystem "mise-en-place"
  :author "Chu the Pup <chufilthymutt@gmail.com>"
  :version "0.0.1"
  :license "GNU GPL-3.0"
  :description ""
  :homepage ""
  :bug-tracker ""
  :source-control (:git "")

  ;; Dependencies.
  :depends-on ()

  ;; Project stucture.
  :serial T
  :components ((:module "src"
                        :serial T
                        :components ((:file "packages")
                                     (:file "mise-en-place"))))

  ;; Build a binary:
  ;; don't change this line.
  :build-operation "program-op"
  ;; binary name: adapt.
  :build-pathname "mise-en-place"
  ;; entry point: here "main" is an exported symbol. Otherwise, use a double ::
  :entry-point "mise-en-place:main")
