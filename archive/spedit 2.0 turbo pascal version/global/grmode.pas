Procedure GrMode;
Var
  grDriver  : Integer;
  grMode    : Integer;
  ErrCode   : Integer;
Begin
  grDriver := VGA;                     {�p����p VGA}
  grMode := VGAMED;                     { 640x350 }
  InitGraph(grDriver, grMode,'');      {����祭�� p�����}
  ErrCode := GraphResult;              {��� �訡��}
  if ErrCode <> grOk then begin
     WriteLN('ERROR = ',ErrCode,': ',GraphErrorMSG(ErrCode));
     Halt(ErrCode);                    {�p� �訡�� ���}
  end;
End;
