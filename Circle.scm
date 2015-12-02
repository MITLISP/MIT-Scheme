#lang planet neil/sicp

(define (circle1 x y) 
  (plot x y)
  (circle1 (- x (* y dt))
          (+ y (* x dt))))

(define (  loop x y  z) (if (> x 100) y (  loop  (+ x        1) (+ x            y)  z) ))
(define (circle x y dt) (if (> x 100) y (circle  (- x (* y dt)) (+ y     (* x dt)) dt) ))

(define (loop2 x      ) (if (> x 100 )      x  (+ x 1) ))
  
(define (loop3 x ) (+ x 1) )