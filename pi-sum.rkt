;pi-sum


(define (sum-integers a b)
  (sum identity a inc b))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))


(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (sum pi-term a pi-next b))

;lambda pi-sum
(define (pi-suml a b)
  (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
       a
       (lambda (x) (+ x 4))
       b))


;lambda plus4
(define (plus4 x) (+ x 4))
(define plus5 (lambda (x) (+ x 4)))