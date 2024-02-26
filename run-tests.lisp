#|
 This file is a part of mise-en-place
 (c) 2023 Chu the Pup https://dogboner.xyz (chufilthymutt@gmail.com)
 Author: Chu the Pup <chufilthymutt@gmail.com>
|#

(load "mise-en-place.asd")

(load "mise-en-place-tests.asd")

(ql:quickload "mise-en-place-tests")

(in-package #:mise-en-place-tests)

(uiop:quit (if (run-all-tests) 0 1))
