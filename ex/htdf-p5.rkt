;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname p5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; blue-triangle-starter.rkt

; PROBLEM:
; 
; Design a function that consumes a number and produces a blue solid triangle of that size.
; 
; You should use The How to Design Functions (HtDF) recipe, and your complete design should include
; signature, purpose, commented out stub, examples/tests, commented out template and the completed function.

(require 2htdp/image)
;; number -> image
;; produces a triangle of given size
(check-expect (blue-triangle 3) (triangle 3 "solid" "blue"))

;(define (blue-triangle size) (triangle 1 "solid" "blue"))     ;stub
;; instead of an image within the stub I can use "empty-image"
;; (define (blue-triangle size) empty-image)

#;
(define (blue-triangle size)     ;template
  (... size))

(define (blue-triangle size)
  (triangle size "solid" "blue"))