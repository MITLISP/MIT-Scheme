(define (main a b c)
  (define (sub d)
    (+ a b c d))
  (sub (+ 10 a)))

(define (roots a b c)
  (define (roots1 d)
    (+ (/ (+ (- b) d) (* 2 a))
       (/ (- (- b) d) (* 2 a)) ))
        (roots1 (sqrt (- (* b b) (* 4 a c)))))

(define (roots3 a b c)
  ((lambda (d)
     (+ a b c d))
     (+ 10 a) ))



(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (+ pi-term a pi-next b))

;ex 1.29
(define (inc x) (+ 1 x))
(define (dec x) (- x 1))
(define (round-to-next-even x) 
   (+ x (remainder x 2))) 
(define (simpson f a b n) 
   (define fixed-n (round-to-next-even n)) 
   (define h (/ (- b a) fixed-n)) 
   (define (simpson-term k) 
     (define y (f (+ a (* k h)))) 
     (if (or (= k 0) (= k fixed-n)) 
         (* 1 y) 
         (if (even? k) 
             (* 2 y) 
             (* 4 y)))) 
   (* (/ h 3) (+ simpson-term 0 inc fixed-n)))

(define (double x) (* 2 x))
(define twice double)

(define you (lambda (x)(* x x)))
(define (you1 x) (* x x))
