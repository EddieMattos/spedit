{$I menu\colormenu.pas}
{$I global\changeco.pas}
Procedure SetColors;
Var c,cc : Byte;
Begin               {�롮� 梥⮢}
      ColorMenu;        {���� "����"}
      Movebar(0,1,getmaxx-1,16,2,1,c,cc);
      Case c of
      1:ChangeColor(PrimaryColor);        {�롮p �������� 梥�}
      2:ChangeColor(SecondaryColor);      {�롮p 䮭����� 梥�}
      end;                                {Case}
      SetColor(Black);
      OutTextXY(1,GetMaxY-8,' <Esc> - ��.��H�');
      MainMenu;
end;