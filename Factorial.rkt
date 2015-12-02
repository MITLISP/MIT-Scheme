;Factorial

;recursive
(define (factorial n)
 (if (< n 2) n
      (* n (factorial (- n 1)))))

;iterative
(define (factorial2 n)
  (fact-iter n 1))

(define (fact-iter count result)
  (cond ((= count 0) result)
      (else (fact-iter (- count 1) (* result count)))))
