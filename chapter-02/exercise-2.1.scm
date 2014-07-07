(load "example-2.1.1.scm")

(define (make-rat n d )
  (let ((g (gcd (abs n) (abs d))))
    (if (< d 0)
        (if (< n 0)
            (cons (/ (abs n) g) (/ (abs d) g))
            (cons (/ (* -1 n) g) (/ (abs d) g)))
    (cons (/ n g) (/ d g)))))
