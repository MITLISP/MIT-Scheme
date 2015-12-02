;Higher Order Procedures

;sum of the integers from a to b
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))

;sum of the integers in a range
(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (* a a a) (sum-cubes (+ a 1) b))))

;another code

(define (incr x )(+ x 1))
(define (decr x) (- x 1))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (identity2 x) x)

(define (sum-integers a b)
  (sum identity2 a incr b))