;Increment/Decrement program written by Trieu
;Video Lecture 2
;Peano Arithmetic


(define (incr x)(+ x 1))
(define (decr x)(- x 1))

;RECURSIVE FUNCTION but ITERATIVE PROCESS
(define (plusrecursive x y)
  (if (= x 0) y
      (incr (plusrecursive (decr x) y)))) 

;RECURSIVE FUNCTION and RECURSIVE PROCESS
(define (plusiterative x y)
  (if (= x 0) y
      (plusiterative (decr x) (incr y))))







