#lang planet neil/sicp
(define (jello x) (+ 1 x))
(define (hello x)(yello x))
(define (yello x) (if (> x 100)  (hello (+ 1 x)) (jello 1)))
  
(define (h)((h)+50))

(define (yo x) (if (> (h) 100)  ((h))  (jello 1)  ))

(define (x z)(+ z 1))
(define (g x) (+ x 3))

(define (what x)
  (if (< x 10) (+ (g x) 1) (+ x 1000)))

;(define (what x) (+ (g x) x))

(define (why x) ((+ 1 x)
  (if (< x 10) (+ (why x) x) (+ x 1000))))

;(define (loop x) (if (< (loop x) 100)  (+ 1 (loop x)) (+ x 10))))

(y 23)
