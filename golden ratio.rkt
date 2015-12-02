;golden ratio
(define (incr x) (+ x 1.0))
(define (decr x) (- x 1.0))

(define (golden-ratio level)
  (cond ((= level 0) 1)
        (else (incr (/ 1 (golden-ratio (decr level)))))))

(define (a)(/ (+ 1 (sqrt 5)) 2))


(define (sqrt1 number level)
  (cond ((= level 0) 1)
        (else (+ 1.0 (/ (- number 1.0) (+ 1.0 (sqrt1 number ( - level 1.0))))))))

(define (sqrt2 number level)
  (cond ((= level 0) 1)
        (else (incr (/ (decr number) (incr (sqrt2 number (decr level))))))))
