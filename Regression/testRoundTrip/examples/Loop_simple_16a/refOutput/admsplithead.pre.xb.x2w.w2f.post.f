C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
      SUBROUTINE foo(X, Y, L, U, S)
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
      INTEGER(w2f__i8) OpenAD_Symbol_2
      INTEGER(w2f__i8) OpenAD_Symbol_3
      INTEGER(w2f__i8) OpenAD_Symbol_4
      INTEGER(w2f__i8) OpenAD_Symbol_5
C
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      type(active) :: Y
      INTEGER(w2f__i4) L
      INTEGER(w2f__i4) U
      INTEGER(w2f__i4) S
C
C     **** Local Variables and Functions ****
C
      INTEGER(w2f__i4) I
      INTEGER(w2f__i4) OpenAD_Symbol_6
      REAL(w2f__8) OpenAD_Symbol_7
      REAL(w2f__8) OpenAD_Symbol_8
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      type(active) :: OpenAD_prp_0


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L, U, S
        IF(I .LT. 5) THEN
          Y%v = (X(I)%v*Y%v)
        ENDIF
      END DO
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Simple loop
      DO I = L,U,S
        IF (I.LT.5) THEN
          OpenAD_lin_0 = Y%v
          OpenAD_lin_1 = X(I)%v
          Y%v = (X(I)%v*Y%v)
          double_tape(double_tape_pointer) = OpenAD_lin_0
          double_tape_pointer = double_tape_pointer+1
          double_tape(double_tape_pointer) = OpenAD_lin_1
          double_tape_pointer = double_tape_pointer+1
        ENDIF
      END DO
      integer_tape(integer_tape_pointer) = L
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = U
      integer_tape_pointer = integer_tape_pointer+1
      integer_tape(integer_tape_pointer) = S
      integer_tape_pointer = integer_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      S = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      U = integer_tape(integer_tape_pointer)
      integer_tape_pointer = integer_tape_pointer-1
      L = integer_tape(integer_tape_pointer)
      I = L+S*ABS((L-U)/S)
      do while (((S.GT.0.0D00).AND.(I.GE.L)).OR.((S.LT.0.0D00).AND.(I.LE
     +.L)))
        IF (I.LT.5) THEN
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_7 = double_tape(double_tape_pointer)
          double_tape_pointer = double_tape_pointer-1
          OpenAD_Symbol_8 = double_tape(double_tape_pointer)
          OpenAD_prp_0%d = OpenAD_prp_0%d+Y%d*(OpenAD_Symbol_7)
          X(I)%d = X(I)%d+Y%d*(OpenAD_Symbol_8)
          Y%d = 0.0d0
          Y%d = Y%d+OpenAD_prp_0%d
          OpenAD_prp_0%d = 0.0d0
        ENDIF
        I = I-S
      END DO
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
C     **** Parameters and Result ****
C
      type(active) :: X(1:5)
      type(active) :: Y(1:4)
C
C     **** Local Variables and Functions ****
C
      EXTERNAL foo
      INTEGER(w2f__i4) OAD_CTMP0
      INTEGER(w2f__i4) OAD_CTMP1
      INTEGER(w2f__i4) OAD_CTMP10
      INTEGER(w2f__i4) OAD_CTMP11
      INTEGER(w2f__i4) OAD_CTMP2
      INTEGER(w2f__i4) OAD_CTMP3
      INTEGER(w2f__i4) OAD_CTMP4
      INTEGER(w2f__i4) OAD_CTMP5
      INTEGER(w2f__i4) OAD_CTMP6
      INTEGER(w2f__i4) OAD_CTMP7
      INTEGER(w2f__i4) OAD_CTMP8
      INTEGER(w2f__i4) OAD_CTMP9
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      Y(1:4)%v = X(1:4)%v
      OAD_CTMP0 = 1
      OAD_CTMP1 = 3
      OAD_CTMP2 = 1
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      OAD_CTMP3 = 3
      OAD_CTMP4 = 1
      OAD_CTMP5 = (-1)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      OAD_CTMP6 = 1
      OAD_CTMP7 = 5
      OAD_CTMP8 = 2
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      OAD_CTMP9 = 5
      OAD_CTMP10 = 1
      OAD_CTMP11 = (-2)
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      Y(1:4)%v = X(1:4)%v
      OAD_CTMP0 = 1
      OAD_CTMP1 = 3
      OAD_CTMP2 = 1
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      OAD_CTMP3 = 3
      OAD_CTMP4 = 1
      OAD_CTMP5 = (-1)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      OAD_CTMP6 = 1
      OAD_CTMP7 = 5
      OAD_CTMP8 = 2
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      OAD_CTMP9 = 5
      OAD_CTMP10 = 1
      OAD_CTMP11 = (-2)
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(X,Y(4),OAD_CTMP9,OAD_CTMP10,OAD_CTMP11)
      CALL foo(X,Y(3),OAD_CTMP6,OAD_CTMP7,OAD_CTMP8)
      CALL foo(X,Y(2),OAD_CTMP3,OAD_CTMP4,OAD_CTMP5)
      CALL foo(X,Y(1),OAD_CTMP0,OAD_CTMP1,OAD_CTMP2)
      X(1:4)%d = X(1:4)%d+Y(1:4)%d
      Y(1:4)%d = 0.0d0
          end if
        end subroutine head
