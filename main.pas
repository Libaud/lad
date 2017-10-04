unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMainFRM }

  TMainFRM = class(TForm)
    ActivateDeactivateBTN: TButton;
    CloseBTN: TButton;
    ExplainMMO: TMemo;
    procedure ActivateDeactivateBTNClick(Sender: TObject);
    procedure CloseBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    _Activate: boolean;
  public

  end;

var
  MainFRM: TMainFRM;

implementation

{$R *.frm}

const
  FORCEFSCKFILE = '/forcefsck';

{ TMainFRM }

procedure TMainFRM.CloseBTNClick(Sender: TObject);
begin
  Close;
end;

procedure TMainFRM.FormCreate(Sender: TObject);
begin
  if FileExists(FORCEFSCKFILE) then
  begin
    _Activate:= true;
    ActivateDeactivateBTN.Caption:= 'Deactivate';
    ExplainMMO.Lines.Clear;
    ExplainMMO.Lines.Add('If you click on Deactivate button');
    ExplainMMO.Lines.Add('you remove /forcefsck file and');
    ExplainMMO.Lines.Add('indicate to the system that it doesn''t');
    ExplainMMO.Lines.Add('check devices/partion on next boot !');
  end
  else
  begin
    _Activate:= false;
    ActivateDeactivateBTN.Caption:= 'Activate';
    ExplainMMO.Lines.Clear;
    ExplainMMO.Lines.Add('If you click on Activate button');
    ExplainMMO.Lines.Add('you configure /forcefsck file to');
    ExplainMMO.Lines.Add('indicate to the system to check');
    ExplainMMO.Lines.Add('devices/partion on next boot !');
  end;

end;

procedure TMainFRM.ActivateDeactivateBTNClick(Sender: TObject);
var
  _File: TextFile;
begin
  if not _Activate then
  begin
    AssignFile(_File, FORCEFSCKFILE);
    CloseFile(_File);
    ActivateDeactivateBTN.Caption:= 'Deactivate';
  end
  else
  begin
    DeleteFile(FORCEFSCKFILE);
    ActivateDeactivateBTN.Caption:= 'Activate';
  end;
end;

end.

