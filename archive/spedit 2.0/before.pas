Procedure Before;
{$I global\sky.pas}
Begin
  Sky(2000);            {��񧤭�� ����}
  SetTextStyle(5,0,9);  {�㪮���� �p��� 9 p����p�}
  SetTextJustify(CenterText,CenterText);   {�p��離� � 業�p� ������}
  SetColor(Yellow);                        {���� 梥�}
  OutTextXY(GetMaxX div 2,(GetMaxY div 3)-10,'Sprite Editor');
  SetTextStyle(3,0,2);  {SansSerif �p��� 2 p����p�}
  SetColor(Green);      {����� 梥�}
  OutTextXY(GetMaxX div 2,(GetMaxY div 2)+10,'Version 2.0');
  SetTextStyle(1,0,2);  {Triplex �p��� 2 p����p�}
  SetColor(Cyan);       {��p�����p��� 梥�}
  OutTextXY(GetMaxX div 2,GetMaxY-50,'Copyright (c) by CyberSoft, 2001');
  SetColor(Red);        {�p��� 梥�}
  OutTextXY(GetMaxX div 2,GetMaxY-25,'ALL RIGHTS RESERVED!!!');
  SetTextStyle(7,0,4);  {Euro �p��� 2 p����p�}
  REPEAT                {���� �������}
  SetColor(LightRed);   {������ 梥�}
  OutTextXY(GetMaxX div 2,GetMaxY-130,'PRESS ANY KEY');
  Delay(250);           {����p��� 1/4 ᥪ㭤�}
  SetColor(0);          {���p�訢���� ������}
  OutTextXY(GetMaxX div 2,GetMaxY-130,'PRESS ANY KEY');
  Delay(250);           {��� ���� ����p��� ��� p��������}
  until keypressed;     {�� ������ ������}
End;
