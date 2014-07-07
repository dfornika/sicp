;; SICP Example 2.1.1
;; Library for handling rational numbers using data abstraction

(define (gcd a b )
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (make-rat n d )
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (+rat x y)
  (make-rat (+ (* (numer x) (denom y))
	       (* (denom x) (numer y)))
	    (* (denom x) (denom y))))

(define (-rat x y)
  (make-rat (- (* (numer x) (denom y))
	       (* (denom x) (numer y)))
	    (* (denom x) (denom y))))

(define (*rat x y)
  (make-rat (* (numer x) (numer y))
	    (* (denom x) (denom y))))

(define (/rat x y)
  (make-rat (* (numer x) (denom y))
	    (* (denom x) (numer y))))

(define (=rat x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom y))))

(define (print-rat x)
  (newline)
  (write (numer x))
  (write-string "/")
  (write (denom x)))
