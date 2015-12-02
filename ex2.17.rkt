#lang planet neil/sicp
;ex 2.17

(define (last-pair items)
  (if (null? (cdr items))
       items
       (last-pair (cdr items))))
