;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname p8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

;; ensure-question-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a string, and adds "?" 
; to the end unless the string already ends in "?".
; 
; For this question, assume the string has length > 0. Follow the HtDF recipe and leave behind commented 
; out versions of the stub and template.
; 


;; string -> string
;; adds '?' to given string IF string doesn't end already with a '?'
(check-expect (ensure-question "why") "why?")
(check-expect (ensure-question "Who?") "Who?")
;(define (ensure-question s) "")     ;stub

#;
(define (ensure-question s)     ;template
  (... s))

(define (ensure-question s)
  (if (string=? "?" (substring s (- (string-length s)  1)))
      s
      (string-append s "?")))

; here I forgot about "substring"