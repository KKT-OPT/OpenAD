C
C
C  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.
C
C  This program is free software; you can redistribute it and/or modify it
C  under the terms of version 2.1 of the GNU Lesser General Public License 
C  as published by the Free Software Foundation.
C
C  This program is distributed in the hope that it would be useful, but
C  WITHOUT ANY WARRANTY; without even the implied warranty of
C  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
C
C  Further, this software is distributed without any warranty that it is
C  free of the rightful claim of any third person regarding infringement 
C  or the like.  Any license provided herein, whether implied or 
C  otherwise, applies only to this software file.  Patent licenses, if
C  any, provided herein do not apply to combinations of this program with 
C  other software, or any other product whatsoever.  
C
C  You should have received a copy of the GNU Lesser General Public 
C  License along with this program; if not, write the Free Software 
C  Foundation, Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, 
C  USA.
C
C  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
C  Mountain View, CA 94043, or:
C
C  http://www.sgi.com
C
C  For further information regarding this notice, see:
C
C  http://oss.sgi.com/projects/GenInfo/NoticeExplan
C
C

C $Header: /m_home/m_utkej/Argonne/cvs2svn/cvs/Open64/osprey1.0/libF77/z_sqrtf.F,v 1.1.1.1 2002-05-22 20:09:13 dsystem Exp $ 

	double complex function z_sqrt(z)
	double precision z(2), mag, r, i

	mag = abs(dcmplx(z(1), z(2)))
	if (mag .eq. 0.0) then
	  z_sqrt = (0.0, 0.0)
	  return
	else 
	  if (z(1) .gt. 0.0) then
	    r = sqrt(0.5 * (mag + z(1)))
	    i = (z(2) / r) * 0.5
	  else
	    i = sqrt(0.5 * (mag - z(1)))
	    if (z(2) .lt. 0.0) i = -i
 	    r = (z(2) / i) * 0.5
	  end if
	  z_sqrt = dcmplx(r, i)
	  return
	end if
	end
