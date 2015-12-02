#lang planet neil/sicp

;((lambda (number)(* 2 number)) 5)

;(define (sum-integers1 a b) (+ (lambda (x) x)
;a (lambda (x) (+ x 1)) b))

(define (square x) (* x x))


;sum higher order procedure
(define (sum term a next b) 
   (if (> a b) 
       0 
       (+ (term a) 
          (sum term (next a) next b))))  

;sum of integers
(define (sum-integers1 a b) 
  (sum (lambda (x) x) a 
       (lambda (x) (+ x 1)) b))

;sum of squares
(define (sum-squares1 a b)
  (sum square 
       a 
       (lambda (x) (+ x 1)) 
       b))

;pi sum
(define (pi-sum1 a b)
  (sum (lambda (x) (/ 1 (square x))) 
       a
       (lambda (x) (+ x 2)) 
       b))