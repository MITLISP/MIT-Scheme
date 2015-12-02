;recursive
(define (function n)
  (cond ((< n 3)
         n)
        (else (+ (function (- n 1))
                 (* 2 (function (- n 2)))
                 (* 3 (function (- n 3)))))))

;iterative but doesnt terminate at zero
(define (f1 n)
  (iter 0 1 2 n))
(define (iter a b c count)
  (if (= count 0)
      a
  (iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))

;iterative but terminates at zero
(define (f n) (fi n 0 1 2)) 
  
(define (fi i a b c) 
  (cond ((< i 0) i) 
        ((= i 0) a) 
        (else (fi (- i 1) b c (+ c (* 2 b) (* 3 a)))))) 

;my own function to help understand above
;f(n) = n, if n<=0
;f(n) = f(n-1), otherwise
(define (fmine n)
  (cond ((<= n 0) 0)
        ((= n 1) 1)
        (else (+ n (fmine (- n 1))))))
;try my hand at 1 term iteration
(define (ftemp n)(fiter 0 1 1 n))
(define (fiter a b c count)
  (if (= count 0) a
      (fiter b c (+ a) (- count 1))))

(define (ftest n)(ftestiter 1 n)) 
(define (ftestiter a count)                    
     (if (= count 0) 
       a 
       (ftestiter (+ a) (- count 1)))) 
