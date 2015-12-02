#lang planet neil/sicp

;---------------------------------------------------------------------------------
; Exercise SICP 1.4.  Observe that our model of evaluation allows 
; for combinations whose operators are compound expressions. 
; Use this observation to describe the behavior of the following procedure:
;
;
;(define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
;  
; (if (> b 0) + -) gets evaluated to operator + or operator - depending on
; the value of b
;
; The final expression becomes (+ a b) or (- a b) depending on the sign of b
;---------------------------------------------------------------------------------
;Exercise 1.4.
;
;Observe that our model of evaluation allows for combinations whose operators 
;are compound expressions. Use this observation to describe the behavior of 
;the following procedure:
;
;(define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
;
;Solution
;
;If b is larger than zero, the + operation is used to combine a and b, 
;otherwise the - operation is used. The latter operation negates the 
;negative (or zero) value of b, and, in effect, adds the absolute value of b 
;to a.
;
;---------------------------------------------------------------------------------
;EXERCISE 1.4
;
;Our model of evaluation allows for combinations whose operators are compound 
;expressions. Use this observation to describe the behaviour of the following 
;procedure:
;
;(define (a-plus-abs-b a b)
;  ((if (> b 0) + -) a b))
;
;This is cool! We want the function to return a + |b|, which we can do by 
;making it return a + b if b>0 and a - b otherwise. 
;Because procedures are like any other data type in the language, they can be 
;the return value of an expression. We use that to our advantage here, by using 
;an if procedure that returns the procedure + in the case that b > 0 and - otherwise. 
;Try doing that in Java!
;---------------------------------------------------------------------------------
;Trieu's explanation---> 
;
;(if (> b 0) return "+" otherwise return "-", then since its either "+" or "-",
;we can now do (+ a b) or (- a b)! Why? bc the actual structure is that the if-
;statement is nested in the expression ("+ or -" a b). 
;Or see it this way:
;(x a b) where x= (if b>0 then return "-" operator otherwise return "+" operator.
;Or see it this way:
;The If then statement is nested in the expression (x a b) where x=If then statement.
;The if then statement returns either a "-" or "+". Insert it in the beginning of the 
;expression ( a b). 


(define (abs x)  
  (if (< x 0)    -   )  (+ 10 x)  )

(define (absb a b)
( (if (> b 0)    - + )  (+ 10 b)  ) 
)

(define (a-plus-abs-b a b)
( (if (> b 0)    + - )      a b)  )

(define (absbv2 b a )  
(  (if (< b 0)    + - )      a b)  )

(define (s b a)  
  (if (> b 0) + -)
a b)
