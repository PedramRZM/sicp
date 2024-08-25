;for small numbers, basically if square of the guess is smaller than 0.001, it considers the guess a good enough guess
; (good-enough? 0.01 0.000000000001) #t
; for big numbers, we might get into an infinite recursion as tolerance is not scaled up to radicands thus threshold is never hit

(define (sqrt-iter guess x)
    (if (good-enough? guess x)
        (guess)
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (= (improve guess x) guess))



(sqrt-iter 2 4)