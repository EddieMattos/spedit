Procedure Init;
{$I menu\mainmenu.pas}
{$I global\grad.pas}
{$I global\casecolo.pas}
Begin
  ClearDevice;                 {���⪠ �p���}
  MainMenu;                    {�뢮� �������� ����}
  Step := 14;
  GradSize := 1;
  Grad(1,20,141,160,step);
  Rectangle(150,20,getmaxx,getmaxy);{����� ���� �������� ����p������}
  CaseColor;                   {�뢮� �����p� p�����p�}
  minex := 151;                {����������� ��砫��� ���p����� ��������}
  miney := 21;                 {���� - ��� ��p������ � �뤥����� �p��⮢}
End;