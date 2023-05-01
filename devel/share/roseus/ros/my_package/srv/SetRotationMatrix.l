;; Auto-generated. Do not edit!


(when (boundp 'my_package::SetRotationMatrix)
  (if (not (find-package "MY_PACKAGE"))
    (make-package "MY_PACKAGE"))
  (shadow 'SetRotationMatrix (find-package "MY_PACKAGE")))
(unless (find-package "MY_PACKAGE::SETROTATIONMATRIX")
  (make-package "MY_PACKAGE::SETROTATIONMATRIX"))
(unless (find-package "MY_PACKAGE::SETROTATIONMATRIXREQUEST")
  (make-package "MY_PACKAGE::SETROTATIONMATRIXREQUEST"))
(unless (find-package "MY_PACKAGE::SETROTATIONMATRIXRESPONSE")
  (make-package "MY_PACKAGE::SETROTATIONMATRIXRESPONSE"))

(in-package "ROS")





(defclass my_package::SetRotationMatrixRequest
  :super ros::object
  :slots (_r11 _r12 _r13 _r21 _r22 _r23 _r31 _r32 _r33 ))

(defmethod my_package::SetRotationMatrixRequest
  (:init
   (&key
    ((:r11 __r11) 0.0)
    ((:r12 __r12) 0.0)
    ((:r13 __r13) 0.0)
    ((:r21 __r21) 0.0)
    ((:r22 __r22) 0.0)
    ((:r23 __r23) 0.0)
    ((:r31 __r31) 0.0)
    ((:r32 __r32) 0.0)
    ((:r33 __r33) 0.0)
    )
   (send-super :init)
   (setq _r11 (float __r11))
   (setq _r12 (float __r12))
   (setq _r13 (float __r13))
   (setq _r21 (float __r21))
   (setq _r22 (float __r22))
   (setq _r23 (float __r23))
   (setq _r31 (float __r31))
   (setq _r32 (float __r32))
   (setq _r33 (float __r33))
   self)
  (:r11
   (&optional __r11)
   (if __r11 (setq _r11 __r11)) _r11)
  (:r12
   (&optional __r12)
   (if __r12 (setq _r12 __r12)) _r12)
  (:r13
   (&optional __r13)
   (if __r13 (setq _r13 __r13)) _r13)
  (:r21
   (&optional __r21)
   (if __r21 (setq _r21 __r21)) _r21)
  (:r22
   (&optional __r22)
   (if __r22 (setq _r22 __r22)) _r22)
  (:r23
   (&optional __r23)
   (if __r23 (setq _r23 __r23)) _r23)
  (:r31
   (&optional __r31)
   (if __r31 (setq _r31 __r31)) _r31)
  (:r32
   (&optional __r32)
   (if __r32 (setq _r32 __r32)) _r32)
  (:r33
   (&optional __r33)
   (if __r33 (setq _r33 __r33)) _r33)
  (:serialization-length
   ()
   (+
    ;; float32 _r11
    4
    ;; float32 _r12
    4
    ;; float32 _r13
    4
    ;; float32 _r21
    4
    ;; float32 _r22
    4
    ;; float32 _r23
    4
    ;; float32 _r31
    4
    ;; float32 _r32
    4
    ;; float32 _r33
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _r11
       (sys::poke _r11 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r12
       (sys::poke _r12 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r13
       (sys::poke _r13 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r21
       (sys::poke _r21 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r22
       (sys::poke _r22 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r23
       (sys::poke _r23 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r31
       (sys::poke _r31 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r32
       (sys::poke _r32 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r33
       (sys::poke _r33 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _r11
     (setq _r11 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r12
     (setq _r12 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r13
     (setq _r13 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r21
     (setq _r21 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r22
     (setq _r22 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r23
     (setq _r23 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r31
     (setq _r31 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r32
     (setq _r32 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r33
     (setq _r33 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_package::SetRotationMatrixResponse
  :super ros::object
  :slots (_angle ))

(defmethod my_package::SetRotationMatrixResponse
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_package::SetRotationMatrix
  :super ros::object
  :slots ())

(setf (get my_package::SetRotationMatrix :md5sum-) "e26b0831b5184f4a3c0b59f189c892e6")
(setf (get my_package::SetRotationMatrix :datatype-) "my_package/SetRotationMatrix")
(setf (get my_package::SetRotationMatrix :request) my_package::SetRotationMatrixRequest)
(setf (get my_package::SetRotationMatrix :response) my_package::SetRotationMatrixResponse)

(defmethod my_package::SetRotationMatrixRequest
  (:response () (instance my_package::SetRotationMatrixResponse :init)))

(setf (get my_package::SetRotationMatrixRequest :md5sum-) "e26b0831b5184f4a3c0b59f189c892e6")
(setf (get my_package::SetRotationMatrixRequest :datatype-) "my_package/SetRotationMatrixRequest")
(setf (get my_package::SetRotationMatrixRequest :definition-)
      "float32 r11
float32 r12
float32 r13
float32 r21
float32 r22
float32 r23
float32 r31
float32 r32
float32 r33
---
float32 angle
")

(setf (get my_package::SetRotationMatrixResponse :md5sum-) "e26b0831b5184f4a3c0b59f189c892e6")
(setf (get my_package::SetRotationMatrixResponse :datatype-) "my_package/SetRotationMatrixResponse")
(setf (get my_package::SetRotationMatrixResponse :definition-)
      "float32 r11
float32 r12
float32 r13
float32 r21
float32 r22
float32 r23
float32 r31
float32 r32
float32 r33
---
float32 angle
")



(provide :my_package/SetRotationMatrix "e26b0831b5184f4a3c0b59f189c892e6")


