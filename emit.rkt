#lang racket

(require "parse-tsv.rkt")
(require "structure-data.rkt")
(require "filters.rkt")
(require "gen-doc.rkt")
(require scribble/render)

(define f (parse-tsv/file (build-path "metadata" "summary.tsv")))
(define g (convert-to-struct (strip-header f)))

(define l1 (builds g))
;(define l1 (take (builds g) 5))
(define l2 (build-fails g))
;(define l2 (take (build-fails g) 5))

(define the-doc (generate-document l1 l2))

(render (list the-doc) 
        (list "index.html")
        #:dest-dir output-dir
        #:style-extra-files (list "style-changes.css")
        )
