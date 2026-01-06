with Ada.Containers.Vectors;
with Ada.Strings.Bounded; use Ada.Strings.Bounded; 

package Day1 is
   procedure Run(Use_Test_Input : Boolean);

   private
   Dial_Location: integer := 50;

   subtype String5 is String(1 .. 5);

   package String_Vectors is new
     Ada.Containers.Vectors
       (Index_Type   => Natural,
        Element_Type => String5);

   function Read_Input(Use_Test_Input : Boolean) return String_Vectors.Vector;
end Day1;