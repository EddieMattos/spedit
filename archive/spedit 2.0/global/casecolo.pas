{       �뢮��� �����p� ��� �롮p� 梥�        }
Procedure CaseColor;
Var
  i : Integer;
Begin
  For i := 0 to 15 do begin   {16 ����p���� 横��}
      SetFillStyle(1,i);      {ᯫ�譠� ������� i-�� 梥⮬}
      Bar(3,173+i*9,138,183+i*9);{���p�襭� �pאַ㣮�쭨�}
   end;
  Rectangle(2,171,139,184+i*9);{������ p�����}
End;
