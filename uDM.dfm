object dm: Tdm
  OldCreateOrder = False
  Height = 556
  Width = 746
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 632
    Top = 376
  end
  object dwc1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 552
    Top = 448
  end
  object dbConn: TFDConnection
    Params.Strings = (
      'Server=KOLESNIK'
      'User_Name=sa'
      'Password=hHTAUOOp7'
      'Database=Teplosnab'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object fdm1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 640
    Top = 448
  end
  object qryClients: TFDQuery
    Connection = dbConn
    Left = 128
    Top = 24
  end
  object dsClients: TDataSource
    DataSet = qryClients
    Left = 184
    Top = 24
  end
end
