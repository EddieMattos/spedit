{       ��p���頥� p���� ��p�p� � �������� ���p������ �� dx   }
{       ��������� �� ��p����⠫� � dy ��������� �� ��p⨪���.   }
{       ����p������ ��p���� xVal ��������� �� ��p����⠫�    }
{       � yVal ��������� �� ��p⨪���                           }
Procedure movebarx(x1,y1,x2,y2 : Integer; dx : Byte; Var value : Byte);
Var
  xsize,ysize : Integer;
  key         : Char;
Begin
  SetWriteMode(XORPut);         {����� H�-���}
  xsize := (x2-x1) div dx;      {�����p� ��p�p�}
  ysize := y2-y1;
  value := 1;
  Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
  While true do begin       {�롮p �㭪� � ��᪮��筮� 横��}
        key := ReadKey;     {��p����塞 ������� �������}
        if (key=#0) and keypressed then key := ReadKey;
        Case key of          {�롨p��� �㦭�� ����⢨�}
             #27:begin {<Esc>-��室��, �p����p�⥫쭮 ����⠭���� ��p����p�}
               Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
               Value := 0; {H�祣� �� ��p���}
               SetWriteMode(NormalPut);
               Exit;
                 end;
             #13:begin{<Enter>-��室��, �p����p�⥫쭮 ����⠭���� ��p����p�}
               Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
               SetWriteMode(NormalPut);
               Exit;
                 end;
             #75:begin          {< <- >}
               Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
               if Value = 1 then Value := dx else dec(Value);{�����蠥� �� 1 ���祭�� x
                             ��� 㪠�뢠�� ���ᨬ��쭮� x - 横���᪮� ����}
               Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
                 end;
             #77:begin          {< -> >}
               Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
               if Value = dx then Value := 1 else inc(Value);{�����稢��� �� 1 ���祭�� y
                           ��� 㪠�뢠�� �������쭮� x - 横���᪮� ����}
               Rectangle(x1+xsize*(Value-1),y1,x1+xsize*Value,y1+ysize);
                 end;
             end;   {Case }
         end;       {While}
End;

Procedure movebary(x1,y1,x2,y2 : Integer; dy : Byte; Var value : Byte);
Var
  xsize,ysize : Integer;
  key         : Char;
Begin
  SetWriteMode(XORPut);         {����� H�-���}
  xsize := x2-x1;      {�����p� ��p�p�}
  ysize := (y2-y1) div dy;
  value := 1;
  Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
  While true do begin       {�롮p �㭪� � ��᪮��筮� 横��}
        key := ReadKey;     {��p����塞 ������� �������}
        if (key=#0) and keypressed then key := ReadKey;
        Case key of          {�롨p��� �㦭�� ����⢨�}
             #27:begin {<Esc>-��室��, �p����p�⥫쭮 ����⠭���� ��p����p�}
               Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
               Value := 0; {H�祣� �� ��p���}
               SetWriteMode(NormalPut);
               Exit;
                 end;
             #13:begin{<Enter>-��室��, �p����p�⥫쭮 ����⠭���� ��p����p�}
               Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
               SetWriteMode(NormalPut);
               Exit;
                 end;
             #72:begin          {<^>}
               Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
               if Value = 1 then Value := dy else dec(Value);{�����蠥� �� 1 ���祭�� y
                      ��� 㪠�뢠�� ���ᨬ��쭮� y - 横���᪮� ����}
               Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
                 end;
             #80:begin          {<v>}
               Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
               if Value = dy then Value := 1 else inc(Value);{�����稢��� �� 1 ���祭�� y
                      ��� 㪠�뢠�� �������쭮� y - 横���᪮� ����}
               Rectangle(x1,y1+ysize*(Value-1),x1+xsize,y1+ysize*Value);
                 end;
             end;   {Case }
         end;       {While}
End;


Procedure MoveBar(x1,y1,x2,y2 : Integer; dx,dy : Byte; Var xVal,yVal : Byte);
Var
  xsize,ysize : Integer;
  key         : Char;
Begin
  SetWriteMode(XORPut);         {����� H�-���}
  xsize := (x2-x1) div dx;      {�����p� ��p�p�}
  ysize := (y2-y1) div dy;
  xval := 1;                    {H�砫쭮� ���������}
  yval := 1;
  Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
  While true do begin       {�롮p �㭪� � ��᪮��筮� 横��}
        key := ReadKey;     {��p����塞 ������� �������}
        if (key=#0) and keypressed then key := ReadKey;
        Case key of          {�롨p��� �㦭�� ����⢨�}
             #27:begin {<Esc>-��室��, �p����p�⥫쭮 ����⠭���� ��p����p�}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                   xVal := 0; {H�祣� �� ��p���}
                   yVal := 0;
                   SetWriteMode(NormalPut);
                   Exit;
                 end;
             #13:begin{<Enter>-��室��, �p����p�⥫쭮 ����⠭���� ��p����p�}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                   SetWriteMode(NormalPut);
                   Exit;
                 end;
             #72:begin          {<^>}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                   if yVal = 1 then yVal := dy else dec(yVal);{�����蠥� �� 1 ���祭�� y
                   ��� 㪠�뢠�� ���ᨬ��쭮� y - 横���᪮� ����}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                 end;
             #80:begin          {<v>}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                   if yVal = dy then yVal := 1 else inc(yVal);{�����稢��� �� 1 ���祭�� y
                   ��� 㪠�뢠�� �������쭮� y - 横���᪮� ����}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                 end;
             #75:begin          {< <- >}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                   if xVal = 1 then xVal := dx else dec(xVal);{�����蠥� �� 1 ���祭�� x
                   ��� 㪠�뢠�� ���ᨬ��쭮� x - 横���᪮� ����}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                 end;
             #77:begin          {< -> >}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                   if xVal = dx then xVal := 1 else inc(xVal);{�����稢��� �� 1 ���祭�� y
                   ��� 㪠�뢠�� �������쭮� y - 横���᪮� ����}
                   Rectangle(x1+xsize*(xVal-1),y1+ysize*(yVal-1),x1+xsize*xVal,y1+ysize*yVal);
                 end;
             end;   {Case }
         end;       {While}
End;
