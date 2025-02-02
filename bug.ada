procedure Example is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable: My_Sub_Type := 1;
begin
   My_Variable := My_Variable + 1;
   if My_Variable > 10 then
      My_Variable := 1; -- Resetting the variable if it exceeds the range
   end if;
   loop
      exit when My_Variable = 10;
      My_Variable := My_Variable + 1;
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error occurred");
end Example;