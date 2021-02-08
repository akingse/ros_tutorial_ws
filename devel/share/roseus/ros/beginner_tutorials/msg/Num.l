;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Num)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Num (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::NUM")
  (make-package "BEGINNER_TUTORIALS::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass beginner_tutorials::Num
  :super ros::object
  :slots (_num _first_name _last_name _age _score ))

(defmethod beginner_tutorials::Num
  (:init
   (&key
    ((:num __num) 0)
    ((:first_name __first_name) "")
    ((:last_name __last_name) "")
    ((:age __age) 0)
    ((:score __score) 0)
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _first_name (string __first_name))
   (setq _last_name (string __last_name))
   (setq _age (round __age))
   (setq _score (round __score))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:first_name
   (&optional __first_name)
   (if __first_name (setq _first_name __first_name)) _first_name)
  (:last_name
   (&optional __last_name)
   (if __last_name (setq _last_name __last_name)) _last_name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; string _first_name
    4 (length _first_name)
    ;; string _last_name
    4 (length _last_name)
    ;; uint8 _age
    1
    ;; uint32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; string _first_name
       (write-long (length _first_name) s) (princ _first_name s)
     ;; string _last_name
       (write-long (length _last_name) s) (princ _last_name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; uint32 _score
       (write-long _score s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _first_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _first_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _last_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _last_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _score
     (setq _score (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Num :md5sum-) "379cbe21d44c48c3d9a5a30aa0ddaafb")
(setf (get beginner_tutorials::Num :datatype-) "beginner_tutorials/Num")
(setf (get beginner_tutorials::Num :definition-)
      "int64 num
string first_name
string last_name
uint8 age
uint32 score

")



(provide :beginner_tutorials/Num "379cbe21d44c48c3d9a5a30aa0ddaafb")


