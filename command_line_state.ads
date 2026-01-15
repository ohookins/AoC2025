with GNAT.Command_Line; use GNAT.Command_Line;

package Command_Line_State is
   -- Expose variables as needed
   Config      : Command_Line_Configuration;
   Day_Option  : Integer := 1;
   Test_Option : Boolean := False;

   procedure Callback (Switch, Param, Section : String);
end Command_Line_State;
