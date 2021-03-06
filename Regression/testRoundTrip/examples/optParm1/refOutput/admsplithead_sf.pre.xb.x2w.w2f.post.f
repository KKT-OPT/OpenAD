
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
      SUBROUTINE foo(A, B, C, D)
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
      INTEGER(w2f__i8) OpenAD_Symbol_12
      INTEGER(w2f__i8) OpenAD_Symbol_13
      INTEGER(w2f__i8) OpenAD_Symbol_14
      INTEGER(w2f__i8) OpenAD_Symbol_15
      INTEGER(w2f__i8) OpenAD_Symbol_16
      INTEGER(w2f__i8) OpenAD_Symbol_17
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
      type(active) :: A
      type(active) :: B
      OPTIONAL B
      type(active) :: C
      type(active) :: D
      OPTIONAL D
C
C     **** Local Variables and Functions ****
C
      LOGICAL(w2f__i4) t__1
      type(active) :: OpenAD_prp_0
      type(active) :: OpenAD_prp_1
C
C     **** Statements ****
C


          integer iaddr
          external iaddr

         if (our_rev_mode%plain) then
C original function
      C%v = (A%v*2.0D00)
      t__1 = .TRUE.
      IF (.not. PRESENT(B)) THEN
        t__1 = .FALSE.
      ELSE
        IF (.not. PRESENT(D)) THEN
          t__1 = .FALSE.
        ENDIF
      ENDIF
      IF(t__1) THEN
        D%v = (B%v*3.0D00)
      ENDIF
          end if
          if (our_rev_mode%tape) then
C taping
      C%v = (A%v*2.0D00)
      t__1 = .TRUE.
      IF (.not. PRESENT(B)) THEN
        t__1 = .FALSE.
        OpenAD_Symbol_5 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_5
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        IF (.not. PRESENT(D)) THEN
          t__1 = .FALSE.
          OpenAD_Symbol_3 = 1_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_3
          integer_tape_pointer = integer_tape_pointer+1
        ELSE
          OpenAD_Symbol_4 = 0_w2f__i8
          integer_tape(integer_tape_pointer) = OpenAD_Symbol_4
          integer_tape_pointer = integer_tape_pointer+1
        ENDIF
        OpenAD_Symbol_6 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_6
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
      IF(t__1) THEN
        D%v = (B%v*3.0D00)
        OpenAD_Symbol_7 = 1_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_7
        integer_tape_pointer = integer_tape_pointer+1
      ELSE
        OpenAD_Symbol_8 = 0_w2f__i8
        integer_tape(integer_tape_pointer) = OpenAD_Symbol_8
        integer_tape_pointer = integer_tape_pointer+1
      ENDIF
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_0 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_0.ne.0) THEN
        OpenAD_prp_1%d = OpenAD_prp_1%d+D%d*(3.0D00)
        D%d = 0.0d0
        B%d = B%d+OpenAD_prp_1%d
        OpenAD_prp_1%d = 0.0d0
      ENDIF
      integer_tape_pointer = integer_tape_pointer-1
      OpenAD_Symbol_1 = integer_tape(integer_tape_pointer)
      IF (OpenAD_Symbol_1.ne.0) THEN
      ELSE
        integer_tape_pointer = integer_tape_pointer-1
        OpenAD_Symbol_2 = integer_tape(integer_tape_pointer)
        IF (OpenAD_Symbol_2.ne.0) THEN
        ENDIF
      ENDIF
      OpenAD_prp_0%d = OpenAD_prp_0%d+C%d*(2.0D00)
      C%d = 0.0d0
      A%d = A%d+OpenAD_prp_0%d
      OpenAD_prp_0%d = 0.0d0
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
      type(active) :: X(1:3)
      type(active) :: Y(1:3)
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X)
C$OPENAD DEPENDENT(Y)
      interface
        SUBROUTINE foo(A, B, C, D)
        use OAD_active
        use w2f__types
        type(active) :: A
        type(active) :: B
        OPTIONAL B
        type(active) :: C
        type(active) :: D
        OPTIONAL D
        END SUBROUTINE
      end interface


          integer iaddr
          external iaddr
C
C     **** Statements ****
C

         if (our_rev_mode%plain) then
C original function
      CALL foo(A=X(1),C=Y(1))
      CALL foo(X(2),X(3),Y(2),Y(3))
          end if
          if (our_rev_mode%tape) then
C taping
      CALL foo(A=X(1),C=Y(1))
      CALL foo(X(2),X(3),Y(2),Y(3))
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      CALL foo(X(2),X(3),Y(2),Y(3))
      CALL foo(A=X(1),C=Y(1))
          end if
        end subroutine head
