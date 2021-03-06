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
      type(active) :: T(1:1,1:2)
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
      T(1,1:2)%v = X(1:2)%v
      Y(1:2)%v = T(1,1:2)%v
          end if
          if (our_rev_mode%tape) then
C taping
      T(1,1:2)%v = X(1:2)%v
      Y(1:2)%v = T(1,1:2)%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      T(1,1:2)%d = T(1,1:2)%d+Y(1:2)%d
      Y(1:2)%d = 0.0d0
      X(1:2)%d = X(1:2)%d+T(1,1:2)%d
      T(1,1:2)%d = 0.0d0
          end if
        end subroutine head
