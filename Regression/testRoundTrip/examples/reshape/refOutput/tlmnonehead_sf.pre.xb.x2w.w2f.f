
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
      TYPE (OpenADTy_active) Y(1 : 4)
C
C     **** Local Variables and Functions ****
C
      TYPE (OpenADTy_active) A(1 : 2, 1 : 2)
      TYPE (OpenADTy_active) B(1 : 4)
      INTEGER(w2f__i4) t__1(1 : 1)
      SAVE t__1
C
C     **** Initializers ****
C
      DATA t__1 / 4 /
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C
C$OPENAD XXX Template ad_template.f
      __value__(A(1 : 2, 1 : 2)) = 0.0
      __value__(A(1, 1)) = __value__(X(1))
      CALL zero_deriv(__deriv__(A(1 : 2, 1 : 2)))
      CALL setderiv(__deriv__(A(1, 1)), __deriv__(X(1)))
      __value__(A(1, 2)) = __value__(X(2))
      CALL setderiv(__deriv__(A(1, 2)), __deriv__(X(2)))
      __value__(B(1 : 4)) = RESHAPE(__value__(A), t__1)
      __deriv__(B(1 : 4)) = RESHAPE(__deriv__(A), t__1)
      __value__(Y(1 : 4)) = __value__(B(1 : 4))
      CALL setderiv(__deriv__(Y(1 : 4)), __deriv__(B(1 : 4)))
      END SUBROUTINE
