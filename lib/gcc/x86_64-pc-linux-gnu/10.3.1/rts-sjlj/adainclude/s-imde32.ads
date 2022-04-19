------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                S Y S T E M . I M G _ D E C I M A L _ 3 2                 --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--            Copyright (C) 2020-2021, Free Software Foundation, Inc.       --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This package contains the routines for supporting the Image attribute for
--  decimal fixed point types up to 32-bit mantissa, and also for conversion
--  operations required in Text_IO.Decimal_IO for such types.

with Interfaces;
with System.Image_D;

package System.Img_Decimal_32 is
   pragma Pure;

   subtype Int32 is Interfaces.Integer_32;

   package Impl is new Image_D (Int32);

   procedure Image_Decimal32
     (V     : Int32;
      S     : in out String;
      P     : out Natural;
      Scale : Integer)
     renames Impl.Image_Decimal;

   procedure Set_Image_Decimal32
     (V     : Int32;
      S     : in out String;
      P     : in out Natural;
      Scale : Integer;
      Fore  : Natural;
      Aft   : Natural;
      Exp   : Natural)
     renames Impl.Set_Image_Decimal;

end System.Img_Decimal_32;
