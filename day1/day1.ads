with Ada.Strings; use Ada.Strings;
with Ada.Strings.Bounded;
with Ada.Containers.Vectors;

package Day1 is
   procedure Run(Use_Test_Input : Boolean);

   private
   Dial_Location: integer := 50;

   -- this seems a little insane but the (1 .. 5) mechanism didn't work
   -- for me
   package BStr is new Ada.Strings.Bounded.Generic_Bounded_Length (Max => 5);
   use BStr;

   -- along similar lines, we need to instantiate the generic vector
   -- specifically for our bounded string type
   package String_Vectors is new
     Ada.Containers.Vectors
       (Index_Type   => Natural,
        Element_Type => Bounded_String);

   function Read_Input(Use_Test_Input : Boolean) return String_Vectors.Vector;
end Day1;