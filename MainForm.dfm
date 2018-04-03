object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 87
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonCallPOForm: TSpeedButton
    Left = 32
    Top = 8
    Width = 321
    Height = 57
    Caption = 'Call PO Form : BPL'
    OnClick = CallPOForm
  end
end
