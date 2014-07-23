(define zero
  (lambda (f) (lambda (x) (x))))

(define (1+ n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;; (1+ zero)
;; (1+ (lambda (f) (lambda (x) (x))))
;; ((lambda (f) (lambda (x) (f (((lambda (g) (lambda (y) (y))) f) x)))))
;; (lambda (f) (lambda (x) (f (lambda (f) (f) x))))
;; (lambda (f) (lambda (x) (f x)))

(define one
  (lambda (f) (lambda (x) (f x))))

;; (1+ one)
;; (1+ (lambda (f) (lambda (x) (f x))))
;; (lambda (f) (lambda (x) (f (((lambda (g) (lambda (y) (g y))) f) x))))
;; (lambda (f) (lambda (x) (f (((lambda (g) (g f) x))))))
;; (lambda (f) (lambda (x) (f (x f))))

(define two
  (lambda (f) (lambda (x) (f (x f)))))
