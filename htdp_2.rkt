;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdp_2) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;;;; data definitions + functions to use these new data definitions
;;;; interval / enumeration / itemization
;;;;

;;;; interval
;; SeatNum is an integer[1, 32]
;; interp: seat numbers in a row, 1 and 32 are aisle seats
(define SN1  1)    ;aisle
(define SN2 12)    ;middle
#;
(define (fn-for-SeatNum sn)
  (... sn))

;; functions:
;; SeatNum -> boolean
;; produce true if given seat number is on the aisle (1 or 32)
(check-expect (aisle? 1) true)
(check-expect (aisle? 22) false)
(check-expect (aisle? 32) true)
;(define (aisle? sn) true)    ;stub
; <template from SeatNum>
(define (aisle? sn)
  (or (= sn 1)
      (= sn 32)))



;;;; enumeration
;; LetterGrade is one of:
;;  - "A"
;;  - "B"
;;  - "C"
;; interp. the letter grade in a course
;; <examples are redundent for enumerations>
#;
(define (fn-for-letter-grade lg)
  (cond [(string=? lg "A") (...)]
        [(string=? lg "B") (...)]
        [(string=? lg "C") (...)]))

;; template rules used:
;; - one of: 3 cases
;; - atomic distinct value; "A"
;; - atomic distinct value: "B"
;; - atomic distinct value: "C"

;; functions:
;; LetterGrade -> LetterGrade
;; produces the next higher grade of a give grade
(check-expect (bump-up "C") "B")
(check-expect (bump-up "B") "A")
(check-expect (bump-up "A") "A")
;(define (bump-up lg) "A")     ;stub
;<template from LetterGrade>
(define (bump-up lg)
  (cond [(string=? lg "A") "A"]
        [(string=? lg "B") "A"]
        [(string=? lg "C") "B"]))



;;;; itemization
;; CountDown is one of:
;;  - false
;;  - natural[1, 10]
;;  - "complete"
;; interp.
;;   false          means contdown has not started
;;   natural[1. 10] means countdown is running and how many seconds left
;;   "complete"     means countdown is over
(define CD1 false)
(define CD2 10)
(define CD3 "complete")
#;
(define (fn-for-contdown c)
   (cond [(false? c) (...)]
         [(and (number? c) (<= 1 c) (<= c 10)) (... c)]
         [(string=? c "complete") (...)]))     ; could also be done withe an else-statement

;; template rules used:
;; - one of: 3 cases
;; - atomic distinct: false
;; - atomic non-distinct: natural[1, 10]
;; - atomic distinct: "complete"

;; functions:
;; CountDown -> image
;; produces an image of the current status of the countdown
(check-expect (status false) (rectangle 10 10 "solid" "red"))
(check-expect (status "complete") (rectangle 10 10 "solid" "green"))
;(define (status c) (rectangle 10 10 "solid" "red"))     ;stub
;<use template from CountDown>
(define (status c)
   (cond [(false? c) (rectangle 10 10 "solid" "red")]
         [(and (number? c) (<= 1 c) (<= c 10)) (rectangle 10 (* c 10) "solid" "yellow")]
         [(string=? c "complete") (rectangle 10 10 "solid" "green")])) 


 

