
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
      SUBROUTINE ad_reroute(X1, X2, Y1, Y2)
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
      type(active) :: X1
      type(active) :: X2
      type(active) :: Y1
      type(active) :: Y2
C
C     **** Local Variables and Functions ****
C
      type(active) :: T1
      type(active) :: T2
      type(active) :: T3
      type(active) :: T4
      REAL(w2f__8) OpenAD_Symbol_0
      REAL(w2f__8) OpenAD_Symbol_1
      REAL(w2f__8) OpenAD_Symbol_2
      REAL(w2f__8) OpenAD_Symbol_3
      REAL(w2f__8) OpenAD_acc_0
      REAL(w2f__8) OpenAD_acc_1
      REAL(w2f__8) OpenAD_acc_2
      REAL(w2f__8) OpenAD_acc_3
      REAL(w2f__8) OpenAD_lin_0
      REAL(w2f__8) OpenAD_lin_1
      REAL(w2f__8) OpenAD_lin_2
      REAL(w2f__8) OpenAD_lin_3
      REAL(w2f__8) OpenAD_lin_4
      REAL(w2f__8) OpenAD_lin_5
      REAL(w2f__8) OpenAD_lin_6
      REAL(w2f__8) OpenAD_lin_7
C
C     **** Top Level Pragmas ****
C
C$OPENAD INDEPENDENT(X1)
C$OPENAD INDEPENDENT(X2)
C$OPENAD DEPENDENT(Y1)
C$OPENAD DEPENDENT(Y2)
C
C     **** Statements ****
C


          integer iaddr
          external iaddr
C$OPENAD XXX Template ad_template.f
C$OPENAD XXX Template ad_template.f

         if (our_rev_mode%plain) then
C original function
      T1%v = X1%v
      T2%v = X2%v
      T3%v = (T1%v/T2%v)
      T4%v = (T1%v*T2%v)
      Y1%v = (T3%v*T4%v)
      Y2%v = (T3%v/T4%v)
          end if
          if (our_rev_mode%tape) then
C taping
      T1%v = X1%v
      T2%v = X2%v
      OpenAD_lin_0 = (INT(1_w2f__i8)/T2%v)
      OpenAD_lin_1 = (-(T1%v/(T2%v*T2%v)))
      T3%v = (T1%v/T2%v)
      OpenAD_lin_2 = T2%v
      OpenAD_lin_3 = T1%v
      T4%v = (T1%v*T2%v)
      OpenAD_lin_4 = T4%v
      OpenAD_lin_5 = T3%v
      Y1%v = (T3%v*T4%v)
      OpenAD_lin_6 = (INT(1_w2f__i8)/T4%v)
      OpenAD_lin_7 = (-(T3%v/(T4%v*T4%v)))
      Y2%v = (T3%v/T4%v)
      OpenAD_acc_0 = (OpenAD_lin_3*OpenAD_lin_5+OpenAD_lin_1*OpenAD_lin_
     +4)
      OpenAD_acc_1 = (OpenAD_lin_3*OpenAD_lin_7+OpenAD_lin_1*OpenAD_lin_
     +6)
      OpenAD_acc_2 = (OpenAD_lin_2*OpenAD_lin_7+OpenAD_lin_0*OpenAD_lin_
     +6)
      OpenAD_acc_3 = (OpenAD_lin_2*OpenAD_lin_5+OpenAD_lin_0*OpenAD_lin_
     +4)
      double_tape(double_tape_pointer) = OpenAD_acc_0
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_3
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_1
      double_tape_pointer = double_tape_pointer+1
      double_tape(double_tape_pointer) = OpenAD_acc_2
      double_tape_pointer = double_tape_pointer+1
          end if
          if (our_rev_mode%adjoint) then
C adjoint
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_0 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_1 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_2 = double_tape(double_tape_pointer)
      double_tape_pointer = double_tape_pointer-1
      OpenAD_Symbol_3 = double_tape(double_tape_pointer)
      X1%d = X1%d+Y2%d*(OpenAD_Symbol_0)
      X2%d = X2%d+Y2%d*(OpenAD_Symbol_1)
      Y2%d = 0.0d0
      X1%d = X1%d+Y1%d*(OpenAD_Symbol_2)
      X2%d = X2%d+Y1%d*(OpenAD_Symbol_3)
      Y1%d = 0.0d0
          end if
        end subroutine ad_reroute
