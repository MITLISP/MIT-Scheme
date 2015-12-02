#lang planet neil/sicp

(/ ( + 5 1 (- 2 3 ( + 6 (/ 1 5) (* 3 (- 6 2) (- 2 7) )))))

(define (square x) (* x x))
(define (ss x) (+ square square))