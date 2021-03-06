
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
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Parameters and Result ****
C
      type(active) :: X
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) OpenAD_Symbol_12
      REAL(w2f__8) OpenAD_Symbol_13
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y%v = (X%v*X%v)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      OpenAD_lin_0 = X%v
      OpenAD_lin_1 = X%v
      Y%v = (X%v*X%v)
      double_tape(double_tape_pointer) = OpenAD_lin_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_lin_1
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_12 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_13 = double_tape(double_tape_pointer)
      X%d = X%d+Y%d*(OpenAD_Symbol_12)
      X%d = X%d+Y%d*(OpenAD_Symbol_13)
      Y%d = 0.0d0
          end if
        end subroutine foo
C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################

      SUBROUTINE head(X, Y)
          use OAD_tape
          use OAD_rev

C original arguments get inserted before version
C         ! and declared here together with all local variables
C         ! generated by xaifBooster

      use OAD_active
      use w2f__types
      use oad_intrinsics
      use oad_intrinsics
      use oad_intrinsics
      IMPLICIT NONE
C
C     **** Global Variables & Derived Type Definitions ****
C
      INTEGER(w2f__i8) OpenAD_Symbol_0
      INTEGER(w2f__i8) OpenAD_Symbol_1
      INTEGER(w2f__i8) OpenAD_Symbol_10
      INTEGER(w2f__i8) OpenAD_Symbol_11
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
      INTEGER(w2f__i8) OpenAD_Symbol_6
      INTEGER(w2f__i8) OpenAD_Symbol_7
      INTEGER(w2f__i8) OpenAD_Symbol_8
      INTEGER(w2f__i8) OpenAD_Symbol_9
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:2)
      type(active) :: Y
C
C     **** Local Variables and Functions ****
C
      REAL(w2f__8) APX(1 : 2, 1 : 2)
      type(active) :: AX(1:2,1:2)
      EXTERNAL foo
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) J
      REAL(w2f__8) PY
      INTEGER(w2f__i4) OpenAD_Symbol_14
      INTEGER(w2f__i4) OpenAD_Symbol_15
      type(active) :: OpenAD_tyc_0
      type(active) :: OpenAD_tyc_1
      type(active) :: OpenAD_tyc_2
      type(active) :: OpenAD_tyc_3
      type(active) :: OpenAD_tyc_4
      type(active) :: OpenAD_tyc_5


          integer iaddr
          external iaddr
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1, 2, 1
        DO J = 1, 2, 1
          AX(INT(I),INT(J))%v = X(I)%v
          APX(INT(I),INT(J)) = (I*DBLE(4.0))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        DO J = 1,2,1
          CALL foo(AX(I,J),Y)
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(OpenAD_tyc_0,APX(I,J))
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(OpenAD_tyc_1,PY)
          CALL foo(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(APX(I,J),OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(PY,OpenAD_tyc_1)
        END DO
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        DO J = 1,2,1
          AX(INT(I),INT(J))%v = X(I)%v
          APX(INT(I),INT(J)) = (I*DBLE(4.0))
        END DO
      END DO
C$OPENAD XXX Simple loop
      DO I = 1,2,1
        DO J = 1,2,1
          CALL foo(AX(I,J),Y)
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(OpenAD_tyc_0,APX(I,J))
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(OpenAD_tyc_1,PY)
          CALL foo(OpenAD_tyc_0,OpenAD_tyc_1)
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(APX(I,J),OpenAD_tyc_0)
C!! requested inline of 'oad_convert' has no defn
          CALL oad_convert(PY,OpenAD_tyc_1)
        END DO
      END DO
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        J = 1+1*((2-1)/1)
        do while (J.GE.1)
          CALL foo(OpenAD_tyc_4,OpenAD_tyc_5)
          CALL foo(AX(I,J),Y)
          J = J-1
        END DO
        I = I-1
      END DO
      I = 1+1*((2-1)/1)
      do while (I.GE.1)
        J = 1+1*((2-1)/1)
        do while (J.GE.1)
          X(I)%d = X(I)%d+AX(I,J)%d
          AX(I,J)%d = 0.0d0
          J = J-1
        END DO
        I = I-1
      END DO
          end if
        end subroutine head
