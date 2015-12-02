#lang planet neil/sicp
;EXERCISE 1.5
;
;Ben Bitdiddle has invented a test to determine whether the interpreter he
;is faced with is using applicative-order or normal-order evaluation. He 
;defines the following two procedures:
;
;> (define (p) (p))
; 
;> (define (text x y)
;    (if (= x 0)
;        0
;        y))
;
;Then he evaluates the expression
;
;> (test 0 (p))
;
;What behaviour will Ben observe with an interpreter that uses 
;applicative-order evaluation> What about normal-order?
;
;The procedure p is defined in terms of itself, so if we ever try to 
;evaluate p we will end up in an infinite loop. If we use applicative order 
;application, then both arguments to test are evaluated before we call test 
;with those arguments. Since this involves evaluating p, the interpreter 
;will hang.
;
;On the other hand, if we use normal-order application then we expand out 
;the arguments without evaluating them, to get
;
;(if (= 0 0)
;    0
;    (p))
;
;now when we evaluate this, we first test if (= 0 0), which returns true, 
;so we execute the first statement after the predicate: the second
;statement, which is p, is never evaluated, and the program happily returns 
;0.