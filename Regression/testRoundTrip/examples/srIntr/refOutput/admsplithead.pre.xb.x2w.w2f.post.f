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
      type(active) :: Y(1:1)
C
C     **** Local Variables and Functions ****
C
      type(active) :: OAD_CTMP0


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
      CALL OAD_S_MIN_D(X(1),X(2),OAD_CTMP0)
      Y(1)%v = OAD_CTMP0%v
          end if
          if (our_rev_mode%tape) then
C taping
C$OPENAD XXX Template ad_template.f
      CALL OAD_S_MIN_D(X(1),X(2),OAD_CTMP0)
      Y(1)%v = OAD_CTMP0%v
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      OAD_CTMP0%d = OAD_CTMP0%d+Y(1)%d
      Y(1)%d = 0.0d0
      CALL OAD_S_MIN_D(X(1),X(2),OAD_CTMP0)
          end if
        end subroutine head