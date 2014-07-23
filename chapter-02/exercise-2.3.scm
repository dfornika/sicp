;; Given the following definitions of cons and car:
(define (cons x y)
  (lambda (m) (m x y))

(define (car z)
  (z (lambda (p q) p)))

;; Show that (car (cons x y)) returns x for all x and y.
(car (cons x y))
(car (lambda (m) (m x y)))
((lambda (m) (m x y)) (lambda (p q) p))
((lambda (p q) p) x y)
(x)

;; What is the corresponding definition of cdr?
(define (cdr x)
  (z (lambda (p q ) q)))
