with Ada.Text_IO; use Ada.Text_IO;

package body Day1 is
    procedure Run(Use_Test_Input : Boolean) is
    begin
        Put_Line ("Hello world from day 1!" & 
                  (if Use_Test_Input then " (using test input)" else ""));
    end Run;
end Day1;