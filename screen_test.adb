-- Simple example of the use of NT_Console. From the command line the console
-- can be instanstiated for screen sizes other than the ANSI standard 80 x 25.
-- Author    : David Haley
-- Created   : 17/04/2005
-- Last Edit : 04/05/2020

with Ada.Text_Io; use Ada.Text_IO;
with Ada.Command_Line; use Ada.Command_Line;
with Nt_Console;

procedure Screen_Test is
   
   procedure Corners (X, Y : in Positive) is
         
      package My_Screen is new NT_Console (X, Y);
      use My_Screen;
      
      Ch : Character;
         
   begin -- Corners
      Clear_Screen (Light_Blue);
      Set_Background (Black);
      Set_Foreground (Red);
      Goto_Xy (X_Pos'First,Y_Pos'First);
      Put ('1');
      Set_Foreground (Red);
      Goto_Xy (X_Pos'Last,Y_Pos'First);
      Put ('2');
      Set_Foreground (White);
      Goto_Xy (X_Pos'Last,Y_Pos'Last);
      Put ('3');
      Set_Background (White);
      Set_Foreground (Black);
      Goto_Xy (X_Pos'First,Y_Pos'Last);
      Put ('4');
      Goto_XY (X_Pos'First, Y_Pos'Last / 2);
      Set_Background (Black);
      Set_Foreground (Gray);
      Put ("Screen size" & Positive'Image (X + 1) & " *" &
             Positive'Image (Y + 1));
      Goto_XY (X_Pos'First, Y_Pos'Last / 2 + 1);
      Bleep;
      Put_Line ("Press any key to end test");
      Ch := Get_Key;
      Clear_Screen;
   end Corners;
         
   X : Positive := 79;
         
   Y : Positive := 24;
     
begin -- Screen_Test
   if Argument_Count = 2 then
      X := Positive'Value (Argument (1));
      Y := Positive'Value(Argument (2));
   end if; -- Argument_Count = 2
   Corners (X, Y);
end Screen_Test;      
