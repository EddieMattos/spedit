Procedure FileMenu;
Begin
  SetFillStyle(InterLeaveFill,DarkGray);{������� �񬭮-�p� 梥⮬ ������ �⪮�}
  Bar(1,1,getmaxx-1,16);           {�pאַ㣮�쭨� ��� 䮭� ����}
  SetTextStyle(0,0,0);            {��⠭���� �⠭��p⭮�� ���p�筮�� �p���}
  SetTextJustify(LeftText,TopText); {�p��離� ����� ���p�}
  SetColor(Black);
  OutTextXY(1,GetMaxY-8,' <Esc> - ��H�');
  SetColor(White);
  OutTextXY(1,GetMaxY-8,' <Esc> - ��.��H�');
  Outtextxy(10,5,'        ���p㧨�� �p���                           ���p����� �p���');
End;
