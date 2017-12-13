module OAD_intrinsics
end module
function foo(i)
  use OAD_intrinsics
  real :: i,foo
  foo = 2*i
end function
subroutine oad_s_foo(i,foo)
  use OAD_intrinsics
  real :: i
  real,intent(out) :: foo
  foo = 2*i
end subroutine oad_s_foo

program p
  use OAD_intrinsics
  type t
   real, dimension(2) :: i
   integer :: idx=2
  end type
  real y, foo
  type(t) :: aT
  real :: oad_ctmp0
  aT%i(1)=2.0
  call oad_s_foo(aT%i(aT%idx),oad_ctmp0)
  y = oad_ctmp0
  print *,y
end program