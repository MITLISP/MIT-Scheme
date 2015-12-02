#lang planet neil/sicp


(define (sum x  y)(+ x y))


(define (pi-sum a b) (define (pi-term x)
(/ 1.0 (* x (+ x 2)))) (define (pi-next x)
      (+ x 4))
    (+ pi-term a pi-next b))



;(define (pi-next x)
;  (+ x 4))

;(define (pi-term x)
;(/ 1.0 (* x (+ x 2))))

;(define (pi-sum a b)    (sum pi-term a pi-next b))




;(define (bigsum x y z)
;  (define (sam y z)(+ y z))
; (+ x (sam y z)))