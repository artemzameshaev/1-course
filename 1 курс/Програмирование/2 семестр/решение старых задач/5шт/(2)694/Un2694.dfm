object Form1: TForm1
  Left = 1115
  Top = 163
  Width = 356
  Height = 161
  Caption = 'F(2)694'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 51
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' n'
  end
  object Edit_n: TEdit
    Left = 88
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 72
    object OpenTexFile1: TMenuItem
      Caption = 'Open_Tex_File'
      object Openfile1: TMenuItem
        Caption = 'Open_file'
        OnClick = Openfile1Click
      end
    end
    object ZapMatr1: TMenuItem
      Caption = 'Zap_Matr'
      object Zap1: TMenuItem
        Caption = 'Zap'
        OnClick = Zap1Click
      end
    end
    object VivodMatr1: TMenuItem
      Caption = 'Vivod_Matr'
      object Vivod1: TMenuItem
        Caption = 'Vivod'
        OnClick = Vivod1Click
      end
    end
    object CloseextFile1: TMenuItem
      Caption = 'Close_Text_File'
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 112
  end
end
