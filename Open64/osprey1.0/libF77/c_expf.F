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

C $Header: /m_home/m_utkej/Argonne/cvs2svn/cvs/Open64/osprey1.0/libF77/c_expf.F,v 1.1.1.1 2002-05-22 20:09:11 dsystem Exp $ 

	complex function c_exp(z)
	real z(2)
C fix bug 7656 -- the idea here is to convert the whole operation
C into double precision before converting the result back to single
C presicion
	double precision expx, r, i, ztmp(2)
	ztmp(1) = z(1)
	ztmp(2) = z(2)
	expx = dexp(ztmp(1))
	r = expx * cos(ztmp(2))
	i = expx * sin(ztmp(2))
	c_exp = dcmplx(r, i)
	return
	end
