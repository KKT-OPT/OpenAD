! ========== begin copyright notice ==============
! This file is part of 
! ---------------
! xaifBooster
! ---------------
! Distributed under the BSD license as follows:
! Copyright (c) 2005, The University of Chicago
! All rights reserved.
!
! Redistribution and use in source and binary forms, 
! with or without modification, are permitted provided that the following conditions are met:
!
!    - Redistributions of source code must retain the above copyright notice, 
!      this list of conditions and the following disclaimer.
!    - Redistributions in binary form must reproduce the above copyright notice, 
!      this list of conditions and the following disclaimer in the documentation 
!      and/or other materials provided with the distribution.
!    - Neither the name of The University of Chicago nor the names of its contributors 
!      may be used to endorse or promote products derived from this software without 
!      specific prior written permission.
!
! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
! EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
! OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
! SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
! INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
! PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
! INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
! LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
! OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
! 
! General Information:
! xaifBooster is intended for the transformation of 
! numerical programs represented as xml files according 
! to the XAIF schema. It is part of the OpenAD framework. 
! The main application is automatic 
! differentiation, i.e. the generation of code for 
! the computation of derivatives. 
! The following people are the principal authors of the 
! current version: 
! 	Uwe Naumann
!	Jean Utke
! Additional contributors are: 
!	Andrew Lyons
!	Peter Fine
!
! For more details about xaifBooster and its use in OpenAD please visit:
!   http://www.mcs.anl.gov/openad
!
! This work is partially supported by:
! 	NSF-ITR grant OCE-0205590
! ========== end copyright notice ==============
program driver

  implicit none 

  external head

  double precision,dimension(:),allocatable :: x,x0,y,y0 
  double precision h
  integer n,m
  integer i,j,k

  open(2,action='read',file='params.conf')
  read(2,'(I5,/,I5,/,F8.1)') n,m,h
  close(2)

  allocate(x(n))
  allocate(x0(n))
  allocate(y(m))
  allocate(y0(m))

  do i=1,n
     x0(i)=sin(i*.3D0)
  end do

  open(2,file='tmpOutput/dd.out')
  write(2,*) "DD"
  do j=1,n   
     x(j)=x0(j)
  end do
  call head( &
       x(1),x(2),x(3),x(4),x(5),x(6), & 
       y0(1),y0(2),y0(3),y0(4),y0(5),y0(6),y0(7),y0(8),y0(9),y0(10),y0(11),y0(12), & 
       y0(13),y0(14),y0(15),y0(16),y0(17),y0(18),y0(19),y0(20),y0(21),y0(22),y0(23),y0(24), & 
       y0(25),y0(26),y0(27), y0(28) & 
       )
  do i=1,n
     do j=1,n
        x(j)=x0(j)
        if (i==j) then 
           x(j)=x0(j)+h
        end if
     end do
     call head( &
          x(1),x(2),x(3),x(4),x(5),x(6), & 
          y(1),y(2),y(3),y(4),y(5),y(6),y(7),y(8),y(9),y(10),y(11),y(12), & 
          y(13),y(14),y(15),y(16),y(17),y(18),y(19),y(20),y(21),y(22),y(23),y(24), & 
          y(25),y(26),y(27), y(28) & 
          )
     do k=1,m
        write(2,'(A,I3,A,I3,A,EN26.16E3)') "F(",k,",",i,")=",(y(k)-y0(k))/h
     end do
  end do
  close(2)

  deallocate(x)
  deallocate(x0)
  deallocate(y)
  deallocate(y0)

end program driver

