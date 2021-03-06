(declare (extended-bindings) (not constant-fold) (not safe))

(define a (##not 123))
(define b (##not a))
(define c "")
(define d 1.5)
(define e (##make-vector 2 999))
(define f (##list 1 2 3))
(define g (##bignum.make 3 #f #f))
(define h (##bignum.make 3 (##fixnum->bignum 4) #f))
(define i (##ratnum-make 11 3))
(define j (##ratnum-make 2 3))
(define k (##cpxnum-make 11 3))
(define l (##make-frame (##continuation-ret (##continuation-capture (lambda (x) x)))))
(define m 'a)
(define n (quote b))
(define o (##make-uninterned-symbol "uninterned" 80))
(define p a:)
(define q (##make-uninterned-keyword "uninterned" 80))
(define r (##values 1 2 3 4 5 6))
(define s (##make-values 2 999))
(define t (##box 0))

(define (test x)
  (println (##box? x))
  (println (if (##box? x) "box" "not box")))

(test 0)
(test 1)
(test a)
(test b)
(test c)
(test d)
(test e)
(test f)
(test (##cdr f))
(test g)
(test h)
(test i)
(test j)
(test k)
(test l)
(test m)
(test o)
(test p)
(test q)
(test r)
(test s)
(test t)
