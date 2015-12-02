;Exponent

;recursive
(define (expo b n)
  (if (= n 0) 1
      (* b (expo b (- n 1)))))

;iterative
(define (expo2 b n)
  (expo-iter b n 1))
(define (expo-iter b counter product)
  (if (= counter 0) product
      (expo-iter b
                 (- counter 1)
                 (* b product))))

;successive iteration
(define (square x) (* x x))

(define (fast-expo b n)
  (cond ((= n 0) 1)
        ((even32 n)(square (fast-expo b (/ n 2))))
        (else (* b (fast-expo b (- n 1))))))
(define (even32 n)
  (= (remainder n 2) 0))