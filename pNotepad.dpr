program pNotepad;

uses
  Vcl.Forms,
  uEditor in 'uEditor.pas' {fmNotepad};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmNotepad, fmNotepad);
  Application.Run;
end.
