------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                  System.Atomic_Operations.Test_And_Set                   --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--                 Copyright (C) 2019-2021, Free Software Foundation, Inc.  --
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

with System.Atomic_Primitives; use System.Atomic_Primitives;

package body System.Atomic_Operations.Test_And_Set is

   -------------------------
   -- Atomic_Test_And_Set --
   -------------------------

   function Atomic_Test_And_Set
     (Item : aliased in out Test_And_Set_Flag) return Boolean is
   begin
      return Boolean (Atomic_Test_And_Set (Item'Address));
   end Atomic_Test_And_Set;

   ------------------
   -- Atomic_Clear --
   ------------------

   procedure Atomic_Clear
     (Item : aliased in out Test_And_Set_Flag) is
   begin
      Atomic_Clear (Item'Address);
   end Atomic_Clear;

   ------------------
   -- Is_Lock_Free --
   ------------------

   function Is_Lock_Free (Item : aliased Test_And_Set_Flag) return Boolean is
      pragma Unreferenced (Item);
   begin
      return True;
   end Is_Lock_Free;

end System.Atomic_Operations.Test_And_Set;
