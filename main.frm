object MainFRM: TMainFRM
  Left = 358
  Height = 156
  Top = 151
  Width = 573
  Caption = 'Linux Autocheck Disks'
  ClientHeight = 156
  ClientWidth = 573
  OnCreate = FormCreate
  LCLVersion = '6.2'
  object ActivateDeactivateBTN: TButton
    Left = 480
    Height = 25
    Top = 24
    Width = 75
    Caption = 'Activate'
    OnClick = ActivateDeactivateBTNClick
    TabOrder = 0
  end
  object CloseBTN: TButton
    Left = 480
    Height = 25
    Top = 104
    Width = 75
    Caption = 'Close'
    OnClick = CloseBTNClick
    TabOrder = 1
  end
  object ExplainMMO: TMemo
    Left = 8
    Height = 128
    Top = 16
    Width = 454
    BorderStyle = bsNone
    Color = clBackground
    TabOrder = 2
  end
end
