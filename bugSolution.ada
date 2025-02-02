procedure Example_Solution is
   subtype My_Sub_Type is Integer range 1..10;
   My_Variable: My_Sub_Type := 1;
begin
   loop
      exit when My_Variable = 10;
      My_Variable := My_Variable + 1;
   end loop;
exception
   when Constraint_Error =>
      Put_Line("Constraint Error occurred.  This shouldn't happen with proper range checks.");
      -- Add more robust error handling here, such as logging or alternative logic
   when others =>
      Put_Line("An unexpected error occurred.");
end Example_Solution;