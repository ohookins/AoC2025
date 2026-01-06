with Ada.Text_IO; use Ada.Text_IO;

package body Day1 is
   function Read_Input(Use_Test_Input : Boolean) return String_Vectors.Vector is
      F : File_Type;
      File_Name : String :=
         (if Use_Test_Input
            then "test.txt"
            else "input.txt");
      I : String_Vectors.Vector;
   begin
      Open(F, In_File, File_Name);
      while not End_Of_File(F) loop
         I.Append(Get_Line(F));
      end loop;
      return I;
   end Read_Input; 

   procedure Run(Use_Test_Input : Boolean) is
   begin
      Put_Line ("Hello world from day 1!" & 
               (if Use_Test_Input then " (using test input)" else ""));
   end Run;
end Day1;