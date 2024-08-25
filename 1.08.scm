(define (cbrt-iter guess x)
    (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x) x)))

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* guess 2)) 3))

 (define (good-enough? guess x) 
    (< (abs (- (improve guess x) guess)) (* 0.001 guess))) 