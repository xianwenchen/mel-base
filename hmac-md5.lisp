(in-package :mel.cipher)

(defun hmac-md5 (text key)
  (flet ((to-octets (x)
           (if (stringp x) (babel:string-to-octets x) x)))
    (let ((hmac (ironclad:make-hmac (to-octets key) :md5)))
      (ironclad:update-hmac hmac (to-octets text))
      (ironclad:hmac-digest hmac))))
