C#########################################################
C This file is part of OpenAD released under the LGPL.   #
C The full COPYRIGHT notice can be found in the top      #
C level directory of the OpenAD distribution             #
C#########################################################
C
C$OPENAD XXX File_start [head.f]
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
      type(active) :: X(1:2)
      type(active) :: Y(1:2)
C
C     **** Local Variables and Functions ****
C
      type(active) :: A(1:2,1:2)
      type(active) :: B(1:2,1:2)
      type(active) :: OpenAD_Symbol_0(1:2,1:2)
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
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      A(1:2,1:2)%v = 0.0
      A(1,1)%v = X(1)%v
      A(1,2)%v = X(2)%v
      B(1:2,1:2)%v = TRANSPOSE(A%v)
      Y(1)%v = B(1,1)%v
      Y(2)%v = B(2,1)%v
          end if
          if (our_rev_mode%tape) then
C taping
      A(1:2,1:2)%v = 0.0
      A(1,1)%v = X(1)%v
      A(1,2)%v = X(2)%v
      B(1:2,1:2)%v = TRANSPOSE(A%v)
      Y(1)%v = B(1,1)%v
      Y(2)%v = B(2,1)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      B(2,1)%d = B(2,1)%d+Y(2)%d
      Y(2)%d = 0.0d0
      B(1,1)%d = B(1,1)%d+Y(1)%d
      Y(1)%d = 0.0d0
      OpenAD_Symbol_0%d = TRANSPOSE(B(1:2,1:2)%d)
      A%d = A%d+OpenAD_Symbol_0%d
      B(1:2,1:2)%d = 0.0d0
      X(2)%d = X(2)%d+A(1,2)%d
      A(1,2)%d = 0.0d0
      X(1)%d = X(1)%d+A(1,1)%d
      A(1,1)%d = 0.0d0
      A(1:2,1:2)%d = 0.0d0
          end if
        end subroutine head
