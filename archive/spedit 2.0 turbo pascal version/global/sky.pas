{       ����� ��񧤭�� ���� � stars ��񧤠��          }
{       ���� - ��砩�� �窨 ��砩�� 梥⮬       }
Procedure sky(stars:Integer);
Var
   i : Integer;
Begin
  for i := 0 to stars do putpixel(Random(getmaxx),Random(getmaxy),Random(Getmaxcolor));
End;