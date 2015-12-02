#lang planet neil/sicp
(define ( fun n) 
  (if (< n 3)
  n
  (+ (*   fun (- n 1))
     (* 2 fun (- n 2))
     (* 3 fun (- n 3)))))

(define (x) (* 3 3 (- 4 6)))
(define (y) (* 3 (3 (- 4 6))))

(define (recu-f n)
  (if (< n 3)
      n
      (+ (recu-f (- n 1)) 
         (* 2 (recu-f (- n 2))) 
         (* 3 (recu-f (- n 3))))))


;find factorial using recursion
(define (factorial n)
  (if (= n 1)
      1
      ( * n (factorial (- n 1)))))

(define (f n)
  (if (= n 1)
      1
      (+ n n (f (+ n 2 1)))))