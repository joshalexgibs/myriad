#lang racket
(provide myriad)
(require 2htdp/image)

#;
(define (myriad m)  ;stub
  (... m))

;; Natural -> Image
;; Produce Image of 4 triangles forming a square per each step in range of input Number


(define (myriad m)
  (for ([i m])
    (display
     (overlay
      (overlay/offset (triangle 50 "outline" "black")
                      4 -4
                      (rotate 90 (triangle 50 "outline" "black")))
      (overlay/offset (rotate 180 (triangle 50 "outline" "black"))
                      -4 4
                      (rotate 270 (triangle 50 "outline" "black")))
      (rotate 45
              (overlay
               (overlay/offset (triangle 50 "outline" "black")
                               4 -4
                               (rotate 90 (triangle 50 "outline" "black")))
               (overlay/offset (rotate 180 (triangle 50 "outline" "black"))
                               -4 4
                               (rotate 270 (triangle 50 "outline" "black")))))))))

#;
(define (myriad-dep m)     ;attempted to automate an overlay of the "square made of triangles" to conintually add squares rotated halfway of the previous square
  (if (= m 1 )
      (overlay
       (overlay/offset (triangle 50 "outline" "black")
                       4 -4
                       (rotate 90 (triangle 50 "outline" "black")))
       (overlay/offset (rotate 180 (triangle 50 "outline" "black"))
                       -4 4
                       (rotate 270 (triangle 50 "outline" "black"))))
      (display
       (overlay
        (for ([ i (in-range 1 m )])
          (circle 1 "solid" "white")
          (rotate (/ 90 (* 2 i ) )
                  (overlay
                   (overlay/offset (triangle 50 "outline" "black")
                                   4 -4
                                   (rotate 90 (triangle 50 "outline" "black")))
                   (overlay/offset (rotate 180 (triangle 50 "outline" "black"))
                                   -4 4
                                   (rotate 270 (triangle 50 "outline" "black"))))))))))

;; Function call via:
;; (myriad m) , where 'm' is a natural number