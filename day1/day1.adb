with Ada.Text_IO; use Ada.Text_IO;
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
   begin
      Input := Read_Input(Use_Test_Input);
      Put_Line ("There are "
                  & Count_Type'Image (Input.Length)
                  & " elements in the input");
   end Run;
end Day1;