#lang racket

;; A line starting with a semicolon is a "comment".  You write
;; comments in order to explain in English what your code does, and
;; Racket knows to ignore comments since they aren't part of the
;; program.

;; This tells Racket that you want to use words and sentences (which
;; are disabled by default).
(require (planet dyoo/simply-scheme))

;; This tells Racket that it should "know" about all the functions you
;; define in this file.  (Don't worry about this for now.)
(provide (all-defined-out))

;; Exercise 0 - Introduce yourself

#|

This is a comment that spans multiple lines.

1) What is your name? Catharina Barbachan

2) What is your major?: Computer Science

3) Are you a returning student? (i.e. Did you take 61AS last semester?): No

4) What made you to take 61AS?: To learn CS fundamentals

5) Tell us interesting things about yourself.: Nah I'm good

|#

;; Make a followup on the "Hello World!" post on Piazza introducing yourself.


;; Exercise 1 - Define sum-of-squares
;(define (square x) (* x x))
;;;-------------------------------
;
;(define (sum-of-squares x y) (+ (square x) (square y)))
;
;(sum-of-squares 3 4)

;; Additional exercises (interlude)
; ;(cond ((= 32 (* 8 5)) 'right)
;      ((= 36 (* 9 4)) 'wrong!)
;      ((= 40 (* 9 100)) '("very wrong"))
;      (else 'yay))
;
;(define (functionzinha? num1 num2)
;   (* num1 num2))
;
;(if (< 100 (functionzinha? 500 2))
;    '("bigger than a 100")
;    '("smaller than a 100"))

;(cond ((=(* 32 2) 64) 'correct64)
;((=(* 32 6) 64) 'wrong64)
;(else 'noluck))

;(define (mult a b)
;  (* a b))
;
;(mult 32 4)

;(define (ifcheck a b c)
;(if (= c (+ a b))'yay))
;
;(ifcheck 32 50 82)

;(define (andcheck a b c)
;(and (< a b) (> b c)))
;
;(andcheck 42 80 53)

;(define (orcheck a b c)
;(or (=(+ a b) (+ b c)))) 
;
;(orcheck 40 20 40)


;; Exercise 2a - Define can-drive

;(define (can-drive age)
;(if (< age 16)
;'("not yet")
;'("good to go")))
;
;(can-drive 17)


;; Exercise 2b - Define fizzbuzz

;(define (fizzbuzz x)
;  (cond ( (and ( = (remainder x 3) 0) ( = (remainder x 5) 0)) 'fizzbuzz)
;  (( = (remainder x 3) 0) 'fizz)
;  (( = (remainder x 5) 0) 'buzz)))
;
;(fizzbuzz 20)


;; Exercise 3 - Why did the Walrus cross the Serengeti?

#|
Your answer here


|#

;; Exercise 4 - new-if vs if
;
;(define (infinite-loop) (infinite-loop))
;
;(define (new-if test then-case else-case)
;  (if test
;    then-case
;    else-case))
;
;(new-if (= 3 6)
;  (/ 1 0)
;  (/ 4 2))
;;|#

;(define (double x) (+ x x))
;(define (f z) (+ (square (double z)) 1))
;
;(f 3)
;(+ (square (double 3)) 1
;(+ (square (+ 3 3)) 1
;(+ (square 6) 1)
;(+ (* 6 6) 1)
;(+ 36 1)
;= 37


;(define (plural wd)
;  (cond ((equal? (last wd) 'a) (word (bl wd) 'ãozão))
;        ((equal? (last wd) 'e) (word (bl wd) 'ãozão))
;        ((equal? (last wd) 'i) (word (bl wd) 'ãozão))
;        ((equal? (last wd) 'o) (word (bl wd) 'ãozão))
;        ((equal? (last wd) 'u) (word (bl wd) 'ãozão))
;        ((equal? (last wd) 's) (word (bl(bl wd)) 'ãozão))
;        (else (word (bl wd) 'ietona))))
;
;(plural 'januário)


;(define (pigl wd)
;(if (pl-done? wd)
;(word wd 'ay)
;(pigl (word (bf wd) (first wd)))))
;
;(define (pl-done? wd)
;(vowel? (first wd)))
;
;(define (vowel? letter)
;(member? letter '(a e i o u)))
;
;(pigl 'krkn)


; a = 3
; b = 4

;(+ a b (* a b))
;(+ 3 4 (* 3 4))
;(+ 3 4 12)
;(19)

;(= a b) ;false
;
;(if (and (> b a) (< b (* a b)))
;    b
;    a)
;
;(if (and (> 4 3 ) (< 4 (* 3 4)))
;    b
;    a)
;
;(if (and (#true) (< 4 12))
;    b
;    a)
;
;(if (and (#true) (#true))
;    b
;    a)
;
;(if (and #true)
;    b (this is the value that will output)
;    a)

(define a 3)
(define b (+ a 1))
(+ a b (* a b)) ; (+ 3 4 (* 3 4)) -> (+ 3 4 12) -> 19

(cond ((= a 4) 6) ;((= 3 4) 6) #will return false
      ((= b 4) (+ 6 7 a)) ;((= 4 4) (+ 6 7 3)) -> ((#true) 16) #will return true and output 16
      (else 25))

(+ 2 (if (> b a) b a)) ; (+ 2 (if (> 4 3) 4 3)) -> (+2 (#true) (4 #this statement evaluates to true, will return 4) 3) -> (+ 2 4) -> 6

(* (cond ((> a b) a) ; ((> 3 4) 3) -> #false, 3 is not greater than 4
         ((< a b) b) ; ((< 3 4) 4) -> #true, 3 is indeed lesser than 4, will return 4, to be multiplied with the * prefix
         (else -1))
         (+ a 1)) ; ((* 4 (+ 3 1))) -> ((* 4 4)) -> 16


(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2)(- 2 7)))


; return (sum-of-square (insert the two largest numbers here))

(define (sum-of-square x y)
  (+ (* x x) (* y y)))

(define (sumlargest x y z)
  (cond ((and (> x y z) (> y z)) (sum-of-square x y))
        ((and (> x y z) (> z y)) (sum-of-square x z))
        
        ((and (> y x z) (> z x)) (sum-of-square y z))
        ((and (> y x z) (> x z)) (sum-of-square y x))

        ((and (> z y x) (> y x)) (sum-of-square z y))
        ((and (> z y x) (> x y)) (sum-of-square z x))))

(sumlargest 42.0 50.0 60.0)


(define (a-plus-abs-b a b)
  ((if (> b 0) 
       +
       -)
   a b))

; = ((+/- a b));
; if b > 0,
; then add the numbers normally,
; otherwise, subtract both operands (which will result in an adition because unsigned with unsigned = signed)

;(a-plus-abs-b 40 -80)
;
;(define (p) (p))
;
;(define (test x y)
;  (if (= x 0)
;      0
;      y))
;
;(test 0 (p))

; APPLICATIVE ORDER EVAL = evaluate the arguments, and only then apply them to the body of the function
; starts by evaluating 0, then (p), and then apply the test function to the values that were evaluated

; This form of eval will try to evaluate the arguments 0 and (p) before doing anything in the body of the function, thus
; it will evaluate 0, which will evaluate to 0, but when it tries to evaluate (p), (p) calls itself,
; thus making an infinite loop before anything in test's function body is evaluated;

; (if (= 0 0)
;     0
;    (p) ))
;

; NORMAL ORDER EVAL = fully expand and then reduce, doesn't evaluate arguments until they are needed

; This form of eval will fully expand the entire procedure and then start reducing everything, only evaluating things when they are needed
; (if (= 0 0) ; up until here only x is evaluated, and then returns true.
;               since y didn't have a need to be evaluated up until this point,
;               the application doesn't get stuck in an infinite loop.
;     0
;    (p) ))

; ->
; (if (= 0 0)
;     0
;    (p) ))
; (= 0 0) is still true, will return 0, just as applicative order evaluation


; Newton's method of successive approximations

; First, you need to have a guess (named x, for instance) for what you think would be the square root of your quotient
; Then you divide your quotient by the x guess. If the result multiplied by itself (squared)
; results in the guess, then you've found your square root.

;Guess	Quotient
;  
;1	(2/1) = 2 ; not what we want! 2*2 = 4

; If your first result multiplied by itself doesn't result in the quotient, then you need to improve your results
; by averaging your previous result with your previous guess


; Average
;((2 + 1)/2) = 1.5

; And keep averaging your result to improve your guesses until you've found the square root! 1.4142 * 1.4142 = 1.99996164, which, averaged, is 2

;1.5	(2/1.5) = 1.3333	((1.3333 + 1.5)/2) = 1.4167
;  
;1.4167	(2/1.4167) = 1.4118	((1.4167 + 1.4118)/2) = 1.4142
;  
;1.4142	...	...


;(define (sqrt x)
;  (sqrt-iter 1.0 x))
;
;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x) x)))
;
;(define (improve guess x)
;  (average guess (/ x guess)))
;
;(define (average x y)
;  ( / (+ x y) 2))
;
;(define (square x)
;  (* x x))
;
;(define (good-enough? guess x)
;  (< (abs (- (square guess) x)) 0.1))
;
;(sqrt 2)



; Exercise 1.6
; Alyssa P. Hacker doesn't see why if needs to be provided as a special form.
; "Why can't I just define it as an ordinary procedure in terms of cond?" she asks.
; Alyssa's friend Eva Lu Ator claims this can indeed be done, and she defines a new version of if:

;(define (new-if predicate then-clause else-clause)
;  (cond (predicate then-clause)
;        (else else-clause)))
;
;(define (sqrt-iter2 guess x)
;  (new-if (good-enough? guess x)
;          guess
;          (sqrt-iter2 (improve guess x)
;                     x)))
;
;(sqrt-iter2 1.0 2)



; Exercise 1.7
; The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers[...]
; An alternative strategy for implementing good-enough? is to watch how guess changes from one iteration to the next
; and to stop when the change is a very small fraction of the guess. Design a square-root procedure that uses this kind of end test.
; Does this work better for small and large numbers?

; (sqrt 0.00000002) <- this test breaks because of precision



; Exercise 1.8
;


(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  ( / ( + ( / x (square y)) (* 2 y)) 3.0))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 1))

(sqrt 9)

