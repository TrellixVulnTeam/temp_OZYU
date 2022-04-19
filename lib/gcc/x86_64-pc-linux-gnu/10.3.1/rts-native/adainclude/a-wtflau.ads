------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--           A D A . W I D E _ T E X T _ I O . F L O A T _ A U X            --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2021, Free Software Foundation, Inc.         --
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

--  This package contains the routines for Ada.Wide_Text_IO.Float_IO that
--  are shared among separate instantiations of this package. The routines
--  in this package are identical semantically to those in Float_IO, except
--  that the default parameters have been removed because they are supplied
--  explicitly by the calls from within the generic template. This package
--  is also used by Ada.Wide_Text_IO.Fixed_IO and Ada.Wide_Text_IO.Decimal_IO.

private generic

   type Num is digits <>;

   with function Scan
     (Str : String;
      Ptr : not null access Integer;
      Max : Integer) return Num;

   with procedure Set_Image
     (V    : Num;
      S    : in out String;
      P    : in out Natural;
      Fore : Natural;
      Aft  : Natural;
      Exp  : Natural);

package Ada.Wide_Text_IO.Float_Aux is

   procedure Get
     (File  : File_Type;
      Item  : out Num;
      Width : Field);

   procedure Put
     (File : File_Type;
      Item : Num;
      Fore : Field;
      Aft  : Field;
      Exp  : Field);

   procedure Gets
     (From : String;
      Item : out Num;
      Last : out Positive);

   procedure Puts
     (To   : out String;
      Item : Num;
      Aft  : Field;
      Exp  : Field);

end Ada.Wide_Text_IO.Float_Aux;