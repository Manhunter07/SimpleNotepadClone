object fmNotepad: TfmNotepad
  Left = 0
  Top = 0
  Caption = 'Notepad'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mmText: TMemo
    Left = 0
    Top = 0
    Width = 447
    Height = 182
    Align = alClient
    PopupMenu = PopupMenu
    TabOrder = 0
    OnChange = mmTextChange
    ExplicitLeft = 56
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 182
    Width = 447
    Height = 19
    Panels = <>
    SimplePanel = True
    ExplicitLeft = 232
    ExplicitTop = 120
    ExplicitWidth = 0
  end
  object MainMenu: TMainMenu
    Left = 328
    Top = 16
    object miFile: TMenuItem
      Caption = 'File'
      object miFileNew: TMenuItem
        Action = actFileNew
      end
      object miFileOpen: TMenuItem
        Action = actFileOpen
      end
      object miFileSave: TMenuItem
        Action = actFileSave
      end
      object miFileSaveAs: TMenuItem
        Action = actFileSaveAs
      end
      object miFileClose: TMenuItem
        Action = actFileClose
      end
    end
    object miEdit: TMenuItem
      Caption = 'Edit'
      OnClick = miEditClick
      object miEditCopy: TMenuItem
        Action = actEditCopy
      end
      object miEditCut: TMenuItem
        Action = actEditCut
      end
      object miEditPaste: TMenuItem
        Action = actEditPaste
      end
      object miEditN1: TMenuItem
        Caption = '-'
      end
      object miEditSelectAll: TMenuItem
        Action = actEditSelectAll
      end
      object miEditSelectNone: TMenuItem
        Action = actEditSelectNone
      end
      object miEditN2: TMenuItem
        Caption = '-'
      end
      object miEditUndo: TMenuItem
        Action = actEditUndo
      end
    end
    object miView: TMenuItem
      Caption = 'View'
      object miViewStatusbar: TMenuItem
        Action = actViewStatusbar
        AutoCheck = True
      end
    end
  end
  object ActionList: TActionList
    Left = 264
    Top = 16
    object actEditCopy: TAction
      Category = 'Edit'
      Caption = 'Copy'
      ShortCut = 16451
      OnExecute = actEditCopyExecute
    end
    object actFileNew: TAction
      Category = 'File'
      Caption = 'New'
      ShortCut = 16462
      OnExecute = actFileNewExecute
    end
    object actFileOpen: TAction
      Category = 'File'
      Caption = 'Open...'
      ShortCut = 16463
      OnExecute = actFileOpenExecute
    end
    object actEditCut: TAction
      Category = 'Edit'
      Caption = 'Cut'
      ShortCut = 16472
      OnExecute = actEditCutExecute
    end
    object actFileSave: TAction
      Category = 'File'
      Caption = 'Save'
      ShortCut = 16467
      OnExecute = actFileSaveExecute
    end
    object actFileSaveAs: TAction
      Category = 'File'
      Caption = 'Save as...'
      OnExecute = actFileSaveAsExecute
    end
    object actFileClose: TAction
      Category = 'File'
      Caption = 'Close'
      OnExecute = actFileCloseExecute
    end
    object actEditPaste: TAction
      Category = 'Edit'
      Caption = 'Paste'
      ShortCut = 16470
      OnExecute = actEditPasteExecute
    end
    object actEditSelectAll: TAction
      Category = 'Edit'
      Caption = 'Select all'
      ShortCut = 16449
      OnExecute = actEditSelectAllExecute
    end
    object actEditSelectNone: TAction
      Category = 'Edit'
      Caption = 'Select none'
      OnExecute = actEditSelectNoneExecute
    end
    object actViewStatusbar: TAction
      Category = 'View'
      AutoCheck = True
      Caption = 'Statusbar'
      Checked = True
      OnExecute = actViewStatusbarExecute
    end
    object actEditUndo: TAction
      Category = 'Edit'
      Caption = 'Undo'
      ShortCut = 16474
      OnExecute = actEditUndoExecute
    end
  end
  object PopupMenu: TPopupMenu
    OnPopup = PopupMenuPopup
    Left = 200
    Top = 16
    object miCopy: TMenuItem
      Action = actEditCopy
    end
    object miCut: TMenuItem
      Action = actEditCut
    end
    object miPaste: TMenuItem
      Action = actEditPaste
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'
    Left = 200
    Top = 72
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'
    Left = 272
    Top = 72
  end
end
