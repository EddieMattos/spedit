{*************************}Program SpriteEditor;{*************************}
{*                                                                       *}
{*      Copyright (c) by CyberSoft Programming, 2001                     *}
{*                                                                       *}
{*            ALL RIGHTS RESERVED BY CYBERSOFT                           *}
{*                                                                       *}
{*************************************************************************}

{$X+}
Uses GRAPH,CRT,Image,CS_Graph,TGPCX;

Var
  error          : Integer;       {��� �訡��}
  PrimaryColor   : Byte;          {������ 梥�}
  SecondaryColor : Byte;          {������ 梥�}
  GradSize       : Word;          {����⠡}
  Step           : Byte;          {��� p��⪨}
  minex,miney    : Integer;       {���p������ p���祣� ���⪠ ��p⨭��}
  FileName       : String;        {��� �p���-䠩��}
  Tile1          : TSprite10;
  Tile2          : TSprite20;
  VasSaved       : Boolean;       {�p����� ��p������ ��᫥����� ���������
                                  ��p⨭��}

{$I global\grmode.pas}
{$I before.pas}
{$I init.pas}
{$I run.pas}

BEGIN
  if paramcount=0 then begin
  Write('������ ��� �p���-䠩��:');
  Readln(FileName);
  end else filename := ParamStr(1);
  if filename='' then halt(0);
  GrMode;                       {����祭�� �p�䨪�}
  Before;                       {���⠢��}
  Init;                         {���樠������ ������ � �����⮢�� �p���}
  Repeat
    Run;                         {�믮������ �p��p����}
  until false;
END.
