with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Containers; use Ada.Containers;

package body Day1 is
   function Read_Input(Use_Test_Input : Boolean) return String_Vectors.Vector is
      F : File_Type;
      File_Name : String :=
         (if Use_Test_Input
            then "day1/test.txt"
            else "day1/input.txt");
      I : String_Vectors.Vector;
   begin
      Open(F, In_File, File_Name);
      while not End_Of_File(F) loop
         I.Append(To_Bounded_String(Get_Line(F)));
      end loop;
      return I;
   end Read_Input; 

   procedure Run(Use_Test_Input : Boolean) is
      Input : String_Vectors.Vector;
      Operation : Character := 'L';
      Operation_Number : Integer := 0;
      Operation_String : String(1 .. 5);
   begin
      Input := Read_Input(Use_Test_Input);
      Put_Line ("There are "
                  & Count_Type'Image (Input.Length)
                  & " elements in the input");

      -- iterate through the list of dial actions
      for E of Input loop
         Operation := To_String(E)(1);
         --  -- yes this is horrible
         Operation_String := Trim(To_String(E), Both);
         Put_Line(">>>" & Operation_String(2 .. Operation_String'Last) & "<<<");
         --  Operation_Number := Integer'Value(Operation_String(2 .. Operation_String'Last));
         
         if Operation = 'L'
            then Operation_Number := -Operation_Number;
         end if;

         Dial_Location := Dial_Location + Operation_Number;
      end loop;

      Put_Line (Integer'Image(Dial_Location));
   end Run;
end Day1;