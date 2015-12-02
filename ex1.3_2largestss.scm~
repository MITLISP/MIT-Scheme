#lang planet neil/sicp

(define (square x) (* x x))
(define (ss y x) (+ (square x) (square y)))


(define  (2largestss x y z) 
  (cond ((and (> z x)(> y x))(ss z y))
        ((and (> x y)(> z y))(ss x z))
        ((and (> x z)(> y z))(ss x y))))

(define (test x y z)
  (cond ((and (> z x)(> y x))(ss z y))))