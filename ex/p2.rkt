;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname p2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; less-than-five-starter.rkt

; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
; 


;; string -> boolean
;; produces true if string s is less than 5
(check-expect (less? "why") #t)
(check-expect (less? "forever") #f)
;(define (less? s) #t)     ;stub

#;
(define (less? s)     ;template
  (... s))

(define (less? s)
  (< (string-length s) 5))