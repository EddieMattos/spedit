Procedure ColorMenu;
Begin
  SetFillStyle(9,8);
  Bar(1,1,getmaxx-1,16);
  SetTextStyle(0,0,0);
  SetColor(White);
  SetTextJustify(LeftText,TopText);
  SetColor(Black);
  OutTextXY(1,GetMaxY-8,' <Esc> - ��H�');
  SetColor(White);
  OutTextXY(1,GetMaxY-8,' <Esc> - ��.��H�');
  Outtextxy(10,5,' ������ 梥�                             ������ 梥�');
End;
