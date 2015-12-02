#lang planet neil/sicp

;Problem 1

(define position
    (lambda (a v u t)
      (+ (* (/ a 2) (* t t)) (* v t) u))) 

;Problem 2
;square root
(define square (lambda (x) (* x x)))

(define try (lambda (guess x)
		(if (good-enuf? guess x)
			guess
			(try (improve guess x) x))))

(define improve (lambda (guess x)
		(average guess (/ x guess))))

(define average (lambda (a b) (/ (+ a b) 2)))

(define good-enuf? (lambda (guess x)
		(< (abs (- (square guess) x)) 0.001)))

(define sqrt (lambda (x) (try 1.0 x)))

(define root1
  (lambda (a b c)
    (/ (+ (* -1 b) (sqrt (abs (- (* b b) (* 4 a c)))) ) (* 2 a))))

(define root2
  (lambda (a b c)
    (/ (- (* -1.0 b) (sqrt (abs (- (* b b) (* 4.0 a c)))) ) (* 2.0 a))))
