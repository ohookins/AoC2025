-- stdlib imports
with Ada.Text_IO; use Ada.Text_IO;

-- command line parsing
with GNAT.Command_Line; use GNAT.Command_Line;
with Command_Line_State;

-- sadly we must import each package explicitly
with Day1;

procedure Main is
begin
   Define_Switch (Command_Line_State.Config, "-t", Help => "Use test input file");
   Define_Switch (Command_Line_State.Config, "-d:", Help => "Specify the day number");
   Define_Switch (Command_Line_State.Config, "-h", Help => "Display help");
   Getopt (Command_Line_State.Config, Command_Line_State.Callback'Access);

   case Command_Line_State.Day_Option is
      when 1 =>
         Day1.Run (Command_Line_State.Test_Option);
      when others =>
         Put_Line ("Day " & Integer'Image (Command_Line_State.Day_Option) & " is not implemented yet.");
   end case;
end Main;

