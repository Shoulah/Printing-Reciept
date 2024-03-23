object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 32
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 18
    Width = 265
    Height = 21
    TabOrder = 1
    Text = 'ComboBox1'
  end
  object Memo1: TMemo
    Left = 313
    Top = 18
    Width = 314
    Height = 274
    Lines.Strings = (
      #1589#1610#1583#1604#1610#1577' '#1583'/'#1571#1581#1605#1583' '#1588#1608#1604#1581
      '----------------------------------'
      'Abimol T      9.00'
      'Panadol T   25.25'
      'Coveram T 50.00'
      '                   --------'
      'Total       255.00LE')
    TabOrder = 2
  end
end
