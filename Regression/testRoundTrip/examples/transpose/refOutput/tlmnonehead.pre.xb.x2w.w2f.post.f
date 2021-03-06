
C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: A(1:2,1:2)
      type(active) :: B(1:2,1:2)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      A(1:2,1:2)%v = 0.0
      A(1,1)%v = X(1)%v
      CALL zero_deriv(A(1:2,1:2))
      CALL setderiv(A(1,1),X(1))
      A(1,2)%v = X(2)%v
      CALL setderiv(A(1,2),X(2))
      B(1:2,1:2)%v = TRANSPOSE(A%v)
      B(1:2,1:2)%d = TRANSPOSE(A%d)
      Y(1)%v = B(1,1)%v
      CALL setderiv(Y(1),B(1,1))
      Y(2)%v = B(2,1)%v
      CALL setderiv(Y(2),B(2,1))
      END SUBROUTINE
