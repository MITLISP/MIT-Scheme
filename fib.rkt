;recursive fib
(define (fib-recursive n)
  (cond ((= n 0) n)
        ((= n 1) n)
        (else (+ (fib-recursive (- n 1))
                 (fib-recursive (- n 2))))))
;iteration
(define (fib-iteration n)
  (fibiter 1 0 n))
(define (fibiter a b count)
    (if (= count 0)
        b
        (fibiter (+ a b) a (- count 1))))
