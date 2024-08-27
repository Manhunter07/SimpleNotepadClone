unit uEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.Clipbrd;

type
  TfmNotepad = class(TForm)
    MainMenu: TMainMenu;
    ActionList: TActionList;
    actFileNew: TAction;
    actFileOpen: TAction;
    actFileSave: TAction;
    actFileSaveAs: TAction;
    actFileClose: TAction;
    actEditCopy: TAction;
    actEditPaste: TAction;
    actEditCut: TAction;
    actEditSelectAll: TAction;
    actEditSelectNone: TAction;
    actViewStatusbar: TAction;
    miFile: TMenuItem;
    miEdit: TMenuItem;
    miView: TMenuItem;
    miViewStatusbar: TMenuItem;
    miEditCopy: TMenuItem;
    miEditCut: TMenuItem;
    miEditPaste: TMenuItem;
    miEditN1: TMenuItem;
    miEditSelectAll: TMenuItem;
    miEditSelectNone: TMenuItem;
    miFileNew: TMenuItem;
    miFileOpen: TMenuItem;
    miFileSave: TMenuItem;
    miFileSaveAs: TMenuItem;
    miFileClose: TMenuItem;
    mmText: TMemo;
    StatusBar: TStatusBar;
    PopupMenu: TPopupMenu;
    miCopy: TMenuItem;
    miCut: TMenuItem;
    miPaste: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    actEditUndo: TAction;
    miEditN2: TMenuItem;
    miEditUndo: TMenuItem;
    procedure mmTextChange(Sender: TObject);
    procedure actEditCopyExecute(Sender: TObject);
    procedure actEditCutExecute(Sender: TObject);
    procedure actEditPasteExecute(Sender: TObject);
    procedure actEditSelectAllExecute(Sender: TObject);
    procedure actEditSelectNoneExecute(Sender: TObject);
    procedure actViewStatusbarExecute(Sender: TObject);
    procedure actFileCloseExecute(Sender: TObject);
    procedure actFileNewExecute(Sender: TObject);
    procedure actFileSaveExecute(Sender: TObject);
    procedure actFileOpenExecute(Sender: TObject);
    procedure actFileSaveAsExecute(Sender: TObject);
    procedure actEditUndoExecute(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure miEditClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FileName: String;
  public
    { Public-Deklarationen }
  end;

var
  fmNotepad: TfmNotepad;

implementation

{$R *.dfm}

procedure TfmNotepad.actEditCopyExecute(Sender: TObject);
begin
  mmText.CopyToClipboard;
end;

procedure TfmNotepad.actEditCutExecute(Sender: TObject);
begin
  mmText.CutToClipboard;
end;

procedure TfmNotepad.actEditPasteExecute(Sender: TObject);
begin
  mmText.PasteFromClipboard;
end;

procedure TfmNotepad.actEditSelectAllExecute(Sender: TObject);
begin
  mmText.SelectAll;
end;

procedure TfmNotepad.actEditSelectNoneExecute(Sender: TObject);
begin
  mmText.SelLength := 0;
end;

procedure TfmNotepad.actEditUndoExecute(Sender: TObject);
begin
  mmText.Undo;
end;

procedure TfmNotepad.actFileCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmNotepad.actFileNewExecute(Sender: TObject);
begin
  FileName := '';
  mmText.Lines.Clear;
end;

procedure TfmNotepad.actFileOpenExecute(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    FileName := OpenDialog.FileName;
    mmText.Lines.LoadFromFile(FileName);
  end;
end;

procedure TfmNotepad.actFileSaveAsExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    FileName := SaveDialog.FileName;
    mmText.Lines.SaveToFile(FileName);
  end;
end;

procedure TfmNotepad.actFileSaveExecute(Sender: TObject);
begin
  if FileName = '' then
  begin
    actFileSaveAs.Execute;
  end else
  begin
    mmText.Lines.SaveToFile(FileName);
  end;
end;

procedure TfmNotepad.actViewStatusbarExecute(Sender: TObject);
begin
  StatusBar.Visible := not StatusBar.Visible;
end;

procedure TfmNotepad.miEditClick(Sender: TObject);
begin
  miEditCopy.Enabled := mmText.SelLength <> 0;
  miEditCut.Enabled := mmText.SelLength <> 0;
  miEditPaste.Enabled := Clipboard.AsText <> '';
  miEditSelectAll.Enabled := mmText.SelLength <> Length(mmText.Lines.Text);
  miEditSelectNone.Enabled := mmText.SelLength <> 0;
  miEditUndo.Enabled := mmText.CanUndo;
end;

procedure TfmNotepad.mmTextChange(Sender: TObject);
begin
  StatusBar.SimpleText := IntToStr(mmText.Lines.Count - 1) + ' lines';
end;

procedure TfmNotepad.PopupMenuPopup(Sender: TObject);
begin
  miCopy.Enabled := mmText.SelLength <> 0;
  miCut.Enabled := mmText.SelLength <> 0;
  miPaste.Enabled := Clipboard.AsText <> '';
end;

end.
