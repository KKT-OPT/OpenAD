
!$OPENAD XXX File_start [OAD_intrinsics.f90]
MODULE oad_intrinsics
use OAD_active
use w2f__types
IMPLICIT NONE
SAVE
!
!     **** Statements ****
!
END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

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
      INTEGER(w2f__i4) I(1 : 3)
      INTEGER(w2f__i4) MAXI
      type(active) :: T
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      I(1) = 1
      I(2) = 0
      I(3) = (-1)
      MAXI = MAXVAL(I)
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(MAXI)%v
      T%v = (X(MAXI)%v*X(2)%v)
      OpenAD_lin_2 = COS(T%v)
      Y(INT(MAXI))%v = SIN(T%v)
      CALL sax(OpenAD_lin_0,X(MAXI),T)
      CALL saxpy(OpenAD_lin_1,X(2),T)
      CALL sax(OpenAD_lin_2,T,Y(MAXI))
      OpenAD_lin_3 = (-SIN(T%v))
      Y(2)%v = COS(T%v)
      CALL sax(OpenAD_lin_3,T,Y(2))
      END SUBROUTINE
