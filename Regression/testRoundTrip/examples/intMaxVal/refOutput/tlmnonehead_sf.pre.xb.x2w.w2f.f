
C$OPENAD XXX File_start [OAD_intrinsics.f90]
      MODULE oad_intrinsics
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [all_globals_mod.f]
      MODULE all_globals_mod
      use w2f__types
      IMPLICIT NONE
      SAVE
C
C     **** Statements ****
C
      END MODULE

C$OPENAD XXX File_start [head.f]
      SUBROUTINE head(X, Y)
      use w2f__types
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      TYPE (OpenADTy_active) X(1 : 2)
      TYPE (OpenADTy_active) Y(1 : 2)
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I(1 : 3)
      INTEGER(w2f__i4) MAXI
      TYPE (OpenADTy_active) T
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
      OpenAD_lin_0 = __value__(X(2))
      OpenAD_lin_1 = __value__(X(MAXI))
      __value__(T) = (__value__(X(MAXI)) * __value__(X(2)))
      OpenAD_lin_2 = COS(__value__(T))
      __value__(Y(INT(MAXI))) = SIN(__value__(T))
      CALL sax(OpenAD_lin_0, __deriv__(X(MAXI)), __deriv__(T))
      CALL saxpy(OpenAD_lin_1, __deriv__(X(2)), __deriv__(T))
      CALL sax(OpenAD_lin_2, __deriv__(T), __deriv__(Y(MAXI)))
      OpenAD_lin_3 = (- SIN(__value__(T)))
      __value__(Y(2)) = COS(__value__(T))
      CALL sax(OpenAD_lin_3, __deriv__(T), __deriv__(Y(2)))
      END SUBROUTINE
