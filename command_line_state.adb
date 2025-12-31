with GNAT.Command_Line; use GNAT.Command_Line;

package body Command_Line_State is
   procedure Callback (Switch, Param, Section : String) is
   begin
      if Switch = "-t" then
         Test_Option := True;
      elsif Switch = "-d" then
         Day_Option := Integer'Value (Param);
      elsif Switch = "-h" then
         Display_Help (Config);
      end if;
   end Callback;
end Command_Line_State;
