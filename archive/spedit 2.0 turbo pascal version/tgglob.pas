{************************************************}
{                                                }
{   ��࡮ �����                                  }
{   �������� ��६���� ��� TG-䠩���          }
{                                                }
{************************************************}

unit TGGlob;

interface

const
  { ��࠭��� }
  ActPg: Integer = 1;
  VisPg: Integer = 0;

  { ViewPort ��� VPSprite }
  XminSpr: Integer = 0;
  XmaxSpr: Integer = 79;
  YminSpr: Integer = 0;
  YmaxSpr: Integer = 349*80;
  MinSprMap: Byte = 255;
  MaxSprMap: Byte = 255;

  {================================================= ���������� ��� ����� }

  { ����ﭨ� �ࠩ⮢�� ��誨 }
  SprMoOK: Boolean = FALSE;
  SprMoMoves: Boolean = FALSE;

  { ViewPort ��� SprMo }
  SprMoXmin: Integer = 0;
  SprMoXmax: Integer = 79;
  SprMoYmin: Integer = 0;
  SprMoYmax: Integer = 349*80;
  SprMoMinMap: Byte = 255;
  SprMoMaxMap: Byte = 255;

  { ��������� ��᫥����� ������ ��誨 }
  MoX: Word = 320;
  MoY: Word = 175;

  {================================================= ���������� ��� ������}
  { ��६����� ��� ����� �६��� }
  OScrTime: LongInt = 0;
implementation
end.