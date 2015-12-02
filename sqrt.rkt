;Square Root

(define (incr x) (+ x 1.0))
(define (decr x) (- x 1.0))

;with incr/decr
(define (sqrt1 number level)
  (cond ((= level 0) 1)
        (else (+ 1.0 (/ (- number 1.0) (+ 1.0 (sqrt1 number ( - level 1.0))))))))

;without incr/decr
(define (sqrt2 number level)
  (cond ((= level 0) 1)
        (else (incr (/ (decr number) (incr (sqrt2 number (decr level))))))))

;close enough
;note: start approx at 1

(define (square x) (* x x))

(define (sqrtapprox number approximation)
  (cond ((close-enough? approximation number) approximation)
        (else (sqrtapprox number (incr (/ (decr number) (incr approximation)))))))

(define (close-enough? approximation number)
  (> .001 (abs (- (square approximation) number))))
