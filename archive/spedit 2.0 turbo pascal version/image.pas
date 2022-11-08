{******************************}Unit Image;{*******************************}
{*                                                                        *}
{*          Unit for image routines and work with image files             *}
{*                                                                        *}
{*            Copyright (c) by CyberSoft Programming, 2001                *}
{*                                                                        *}
{*                         ALL RIGHTS RESERVED!!!                         *}
{*                                                                        *}
{**************************************************************************}
{$O+,F+}
Interface
Uses Graph;

Const sz1=9;
      sz2=19;
      sz3=34;

Type
    TSprite1  = array [0..sz1] of Byte;
    TSprite2  = array [0..sz2] of Byte;
    TSprite3  = array [0..sz3] of Byte;
    TSprite10 = array [0..sz1] of TSprite1;
    TSprite20 = array [0..sz2] of TSprite2;
    TSprite35 = array [0..sz3] of TSprite3;


Procedure SaveImage(x1,y1,x2,y2 : Word; filename : String;
                                 Var ErrorCode : Integer);
{���p���� ����p������ �� ���p����⠬ x1,y1,x2,y2 � 䠩�� filename.
 � ��p������� ErrorCode ����p�頥��� 0 � ��砥 �ᯥ譮� ����� 䠩��
 ��� ��� �訡�� �����/�뢮��}

Procedure LoadImage(x,y : Word; filename : String; Masc : Byte;
                                      Var ErrorCode : Integer);
{���뢠�� ����p������ �� 䠩�� filename � ���p������ x,y � p�����
 ��������� Masc.
 � ��p������� ErrorCode ����p�頥��� 0 � ��砥 �ᯥ譮�� �⥭��
 䠩�� ��� ��� �訡�� �����/�뢮��}

Procedure getsprite1(x,y : Integer; Var Tile : TSprite10);
{���뢠�� � �p��� � ��p������� Tile ���p��� 10x10 �祪,
  ������� ������ 梥⮢.}

Procedure getsprite2(x,y : Integer; Var Tile : TSprite20);
{���뢠�� � �p��� � ��p������� Tile ���p��� 20x20 �祪,
  ������� ������ 梥⮢.}

Procedure getsprite3(x,y : Integer; Var Tile : TSprite35);
{���뢠�� � �p��� � ��p������� Tile ���p��� 35x35 �祪,
  ������� ������ 梥⮢.}


Procedure putsprite1(x,y : Integer; Tile : TSprite10);
{�����뢠�� �� ��p������� Tile �� �p�� ���p��� 10�10 �祪,
  ������� ������ 梥⮢.}

Procedure putsprite2(x,y : Integer; Tile : TSprite20);
{�����뢠�� �� ��p������� Tile �� �p�� ���p��� 20�20 �祪,
  ������� ������ 梥⮢.}

Procedure putsprite3(x,y : Integer; Tile : TSprite35);
{�����뢠�� �� ��p������� Tile �� �p�� ���p��� 35�35 �祪,
  ������� ������ 梥⮢.}


Implementation

Procedure SaveImage(x1,y1,x2,y2:Word;filename:String; Var ErrorCode:Integer);
Var
  f      : File;
  p      : Pointer;
  size   : Word;
Begin
  size := ImageSize(x1,y1,x2,y2);
  Assign(f,filename);
  {$I-}
  Rewrite(f,size);
  {$I+}
  ErrorCode := IOResult;
  if ErrorCode <> 0 then exit;
  GetMem(p,size);
  GetImage(x1,y1,x2,y2,p^);
  BlockWrite(f,p,1);
  Close(f);
  FreeMem(p,size);
End;

Procedure LoadImage(x,y : Word; filename : String; Masc : Byte;
                         Var ErrorCode:Integer);
Var
  f      : File;
  p      : Pointer;
  size   : Word;
Begin
  Assign(f,filename);
  {$I-}
  Reset(f,1);
  {$I+}
  ErrorCode := IOResult;
  if ErrorCode <> 0 then exit;
  size := FileSize(f);
  Reset(f,size);
  GetMem(p,size);
  BlockRead(f,p,1);
  Close(f);
  PutImage(x,y,p^,Masc);
End;

Procedure getsprite1(x,y:Integer; Var Tile:TSprite10);
Var
   i,j : Byte;
Begin
  for i := 0 to 9 do
      for j := 0 to 9 do
          Tile[i,j] := getpixel(x+i,y+j);
End;

Procedure getsprite2(x,y:Integer; Var Tile:TSprite20);
Var
   i,j : Byte;
Begin
  for i := 0 to 19 do
      for j := 0 to 19 do
          Tile[i,j] := getpixel(x+i,y+j);
End;

Procedure getsprite3(x,y:Integer; Var Tile:TSprite35);
Var
   i,j : Byte;
Begin
  for i := 0 to 34 do
      for j := 0 to 34 do
          Tile[i,j] := getpixel(x+i,y+j);
End;


Procedure putsprite1(x,y:Integer; Tile:TSprite10);
Var
   i,j : Byte;
Begin
  for i := 0 to 9 do
      for j := 0 to 9 do
          putpixel(x+i,y+j,Tile[i,j]);
End;

Procedure putsprite2(x,y:Integer; Tile:TSprite20);
Var
   i,j : Byte;
Begin
  for i := 0 to 19 do
      for j := 0 to 19 do
          putpixel(x+i,y+j,Tile[i,j]);
End;

Procedure putsprite3(x,y:Integer; Tile:TSprite35);
Var
   i,j : Byte;
Begin
  for i := 0 to 34 do
      for j := 0 to 34 do
          putpixel(x+i,y+j,Tile[i,j]);
End;

END.