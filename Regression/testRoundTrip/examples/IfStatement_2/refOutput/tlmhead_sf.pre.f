!$openad xxx file_start [OAD_intrinsics.f90]
      module OAD_intrinsics
      end module
!$openad xxx file_start [all_globals_mod.f]
      module all_globals_mod

      end module

!$openad xxx file_start [head.f]
C$openad XXX Template ad_template.f
      subroutine head(x,y)
        use OAD_intrinsics
        double precision, dimension(1), intent(in) :: x
        double precision, dimension(1), intent(out) :: y
C$openad INDEPENDENT(x)
          y(1)=2.
          if (x(1)>0.) then
            y(1)=x(1)
            if (x(1)>1.) then
              y(1)=y(1)
            else
              if (x(1)>0.) then
                y(1)=x(1)
              end if
            end if
          end if
          y(1) = y(1)*y(1)
C$openad DEPENDENT(y)
      end subroutine
