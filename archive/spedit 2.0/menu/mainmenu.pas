{       �p�p�ᮢ뢠�� ������� ����      }
Procedure MainMenu;
Begin
  SetFillStyle(InterLeaveFill,DarkGray);{������� �񬭮-�p� 梥⮬ ������ �⪮�}
  Bar(1,1,getmaxx-1,16);           {�pאַ㣮�쭨� ��� 䮭� ����}
  SetTextStyle(0,0,0);            {��⠭���� �⠭��p⭮�� ���p�筮�� �p���}
  SetColor(White);                {���� 梥� �㪢}
  SetTextJustify(LeftText,TopText); {�p��離� ����� ���p�}
  OutTextXY(1,GetMaxY-8,' <Esc> - ��H�');
  Outtextxy(10,5,'  ����         �p����       ����       �p�ᬮ�p      ����⠡       ��室');
End;
