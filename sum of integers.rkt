;Higher Order Procedures

;sum of the integers from a to b
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))