/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2.1 of the GNU Lesser General Public License 
  as published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU Lesser General Public 
  License along with this program; if not, write the Free Software 
  Foundation, Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, 
  USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


/* $Header: /m_home/m_utkej/Argonne/cvs2svn/cvs/Open64/osprey1.0/libF77/c_div.c,v 1.1.1.1 2002-05-22 20:09:11 dsystem Exp $ */
#include <stdlib.h>
#include "cmplx.h"

complex __cdiv(float areal, float aimag, float breal, float bimag)
{
  float ratio, den;
  float abr, abi;
  complex c;

  if( (abr = breal) < 0.0F)
    abr = - abr;
  if( (abi = bimag) < 0.0F)
    abi = - abi;
  if( abr <= abi ) {
    ratio = breal / bimag ;
    den = bimag * (1 + ratio*ratio);
    c.real = (areal*ratio + aimag) / den;
    c.imag = (aimag*ratio - areal) / den;
  } else {
    ratio = bimag / breal ;
    den = breal * (1 + ratio*ratio);
    c.real = (areal + aimag*ratio) / den;
    c.imag = (aimag - areal*ratio) / den;
  }
  return c;
}

void c_div(complex *c, complex *a, complex *b)
{
  *c = __cdiv(a->real, a->imag, b->real, b->imag);
}
