{       ����� p���� � �������� ���p������ � p����p�� �祩�� size    }
Procedure Grad(x1,y1,x2,y2 : Integer;  size : Byte);
Var
  i            : Byte;
  xsize, ysize : Word;
Begin
  xsize := (x2-x1) div size; {���-�� �祥� �� x}
  ysize := (y2-y1) div size; {���-�� �祥� �� y}
  For i := 1 to xsize do line(x1,y1+i*size,x2,y1+i*size);{�뢮� �����}
  For i := 1 to ysize do line(x1+i*size,y1,x1+i*size,y2);
  Rectangle(x1,y1,x2,y2);{��������� p�����}
End;
