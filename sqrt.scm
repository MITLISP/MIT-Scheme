#lang planet neil/sicp

(define (try guess x)
  (if (good-enough? guess x)
      guess
      (try (improve guess x) x )))

(define (sqrt x) (try  1 x))

(define (improve guess x) 
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     .001))

