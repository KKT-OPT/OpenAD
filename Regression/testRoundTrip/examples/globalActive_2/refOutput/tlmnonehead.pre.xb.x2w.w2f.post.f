
C$OPENAD XXX File_start [head.f]
      MODULE globals
      use OAD_active
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Global Variables & Derived Type Definitions ****
C
      type(active) :: AGLOBAL
      REAL(w2f__8) APASSIVEGLOBAL
C
C     **** Statements ****
C
      END MODULE

      SUBROUTINE head(X, Y)
      use OAD_active
      use w2f__types
      use oad_intrinsics
      use globals
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      APASSIVEGLOBAL = 2.0D00
      OpenAD_lin_0 = X(2)%v
      OpenAD_lin_1 = X(1)%v
      AGLOBAL%v = (X(1)%v*X(2)%v)
      OpenAD_lin_2 = APASSIVEGLOBAL
      Y(1)%v = (AGLOBAL%v*APASSIVEGLOBAL)
      CALL sax(OpenAD_lin_0,X(1),AGLOBAL)
      CALL saxpy(OpenAD_lin_1,X(2),AGLOBAL)
      CALL sax(OpenAD_lin_2,AGLOBAL,Y(1))
      END SUBROUTINE
