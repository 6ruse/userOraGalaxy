object FrmMain: TFrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' Oracle'
  ClientHeight = 543
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonGroup1: TButtonGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 147
    Height = 518
    Align = alLeft
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    ButtonHeight = 40
    ButtonOptions = [gboFullSize, gboShowCaptions]
    Images = ImageListGroup
    Items = <
      item
        Action = actReport
        ImageIndex = 0
      end
      item
        Action = actUpdate
        ImageIndex = 1
      end
      item
        Action = actHide
        ImageIndex = 2
      end
      item
        Action = actKillSession
        ImageIndex = 3
      end
      item
        Action = actNewPas
        ImageIndex = 7
      end
      item
        Action = actUnlokedUser
        ImageIndex = 4
      end
      item
        Action = actShowSetting
        ImageIndex = 5
      end
      item
        Action = actClose
        ImageIndex = 6
      end>
    TabOrder = 0
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 524
    Width = 968
    Height = 19
    Panels = <
      item
        Text = #1042' '#1089#1080#1089#1090#1077#1084#1091' '#1074#1086#1096#1077#1083':'
        Width = 300
      end
      item
        Text = #1055#1086#1076#1082#1083#1102#1095#1077#1085' '#1082':'
        Width = 400
      end
      item
        Width = 50
      end>
  end
  object cxPageControl2: TcxPageControl
    Left = 153
    Top = 0
    Width = 815
    Height = 524
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 2
    ClientRectBottom = 524
    ClientRectRight = 815
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1056#1072#1073#1086#1090#1072
      ImageIndex = 0
      object cxPageControl1: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 809
        Height = 494
        ActivePage = cxTabSheet3
        Align = alClient
        Images = ImageListPage
        NavigatorPosition = npLeftTop
        ParentShowHint = False
        ShowFrame = True
        ShowHint = False
        Style = 10
        TabOrder = 0
        OnChange = cxPageControl1Change
        ClientRectBottom = 493
        ClientRectLeft = 1
        ClientRectRight = 808
        ClientRectTop = 21
        object cxTabSheet3: TcxTabSheet
          Caption = #1042#1089#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
          ImageIndex = 0
          object DBGridEh4: TDBGridEh
            Left = 0
            Top = 0
            Width = 807
            Height = 472
            Align = alClient
            AllowedOperations = [alopUpdateEh]
            AutoFitColWidths = True
            Ctl3D = True
            DataGrouping.Color = clBtnFace
            DataGrouping.GroupLevels = <>
            DataGrouping.ParentColor = False
            DataSource = DSAllUer
            EvenRowColor = clBtnFace
            Flat = True
            FooterColor = clBtnFace
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            FooterRowCount = 1
            OddRowColor = clBtnFace
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
            ParentCtl3D = False
            ParentShowHint = False
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            ShowHint = False
            SortLocal = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleHeight = 2
            TitleLines = 2
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'XU$FULLNAME'
                Footers = <
                  item
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Value = #1042#1089#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
                    ValueType = fvtStaticText
                  end>
                Width = 215
              end
              item
                EditButtons = <>
                FieldName = 'XU$LOGINNAME'
                Footers = <>
                Width = 106
              end
              item
                EditButtons = <>
                FieldName = 'CREATE_USER'
                Footers = <>
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|'#1057#1086#1079#1076#1072#1085
                Width = 116
              end
              item
                EditButtons = <>
                FieldName = 'LOCK_DATE'
                Footers = <>
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|'#1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085
                Width = 116
              end
              item
                EditButtons = <>
                FieldName = 'TO_ORADATE(ATL_LASTDATE)'
                Footers = <
                  item
                    FieldName = 'XU$LOGINNAME'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ValueType = fvtCount
                  end>
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|'#1055#1086#1089#1083'. '#1088#1077#1076#1072#1082#1090'.'
                Width = 77
              end
              item
                EditButtons = <>
                FieldName = 'USERTYPE'
                Footers = <>
                ImageList = ImgLstGrid
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|'#1040#1076#1084'.'
                Width = 28
              end
              item
                Alignment = taLeftJustify
                Checkboxes = False
                EditButtons = <>
                FieldName = 'BlockGal'
                Footer.EndEllipsis = True
                Footer.ToolTips = True
                Footer.WordWrap = True
                Footers = <>
                ImageList = ImgLstGrid
                TextEditing = True
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|'#1043#1072#1083'.'
                Width = 28
              end
              item
                Checkboxes = False
                EditButtons = <>
                FieldName = 'BLOCK_ORA'
                Footers = <>
                ImageList = ImgLstGrid
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|ORA'
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'DROP_PASS'
                Footers = <>
                ImageList = ImgLstGrid
                Title.Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'|'#1057#1073#1088'.'
                Width = 28
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = #1040#1082#1090#1080#1074#1085#1099#1077
          ImageIndex = 1
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 0
            Width = 807
            Height = 472
            Align = alClient
            AllowedOperations = [alopUpdateEh]
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = DSActiveUser
            Flat = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            FooterColor = cl3DLight
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
            ParentFont = False
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            SortLocal = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleHeight = 2
            TitleLines = 2
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'USERNAME'
                Footers = <
                  item
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Value = #1042#1089#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
                    ValueType = fvtStaticText
                  end>
                Width = 136
              end
              item
                EditButtons = <>
                FieldName = 'STATUS'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'TYPE'
                Footers = <>
                Width = 59
              end
              item
                EditButtons = <>
                FieldName = 'LOGON_TIME'
                Footers = <>
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'OSUSER'
                Footers = <>
                Width = 72
              end
              item
                EditButtons = <>
                FieldName = 'MACHINE'
                Footers = <>
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'PROGRAM'
                Footers = <
                  item
                    FieldName = 'LOGON_TIME'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ValueType = fvtCount
                  end>
                Width = 72
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1085#1099#1077
          ImageIndex = 2
          object DBGridEh2: TDBGridEh
            Left = 0
            Top = 0
            Width = 807
            Height = 472
            Align = alClient
            AllowedOperations = [alopUpdateEh]
            AutoFitColWidths = True
            DataGrouping.GroupLevels = <>
            DataSource = DSLocUser
            Flat = True
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            FooterColor = cl3DLight
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'Tahoma'
            FooterFont.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghHighlightFocus, dghClearSelection, dghIncSearch, dghPreferIncSearch, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
            ParentFont = False
            ReadOnly = True
            RowDetailPanel.Color = clBtnFace
            SortLocal = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            TitleHeight = 2
            TitleLines = 2
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'USERNAME'
                Footers = <
                  item
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    Value = #1042#1089#1077#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
                    ValueType = fvtStaticText
                  end>
              end
              item
                EditButtons = <>
                FieldName = 'ACCOUNT_STATUS'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'LOCK_DATE'
                Footers = <
                  item
                    FieldName = 'USERNAME'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ValueType = fvtCount
                  end>
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #1055#1088#1080#1084#1077#1085#1103#1077#1084#1099#1077' '#1087#1072#1088#1086#1083#1080
          ImageIndex = 3
          object Panel1: TPanel
            Left = 0
            Top = 392
            Width = 807
            Height = 80
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              Left = 3
              Top = 30
              Width = 41
              Height = 13
              Caption = #1055#1072#1088#1086#1083#1100':'
            end
            object Label2: TLabel
              Left = 231
              Top = 30
              Width = 99
              Height = 13
              Caption = 'Password XEX (MD5)'
            end
            object cxLabel1: TcxLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Align = alTop
              AutoSize = False
              Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1087#1072#1088#1086#1083#1103
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = clSkyBlue
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Arial'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              StyleDisabled.Color = clGradientActiveCaption
              Height = 18
              Width = 801
            end
            object EditPass: TDBEditEh
              Left = 50
              Top = 27
              Width = 175
              Height = 21
              EditButtons = <>
              TabOrder = 1
              Visible = True
            end
            object EditXex: TDBEditEh
              Left = 336
              Top = 27
              Width = 466
              Height = 21
              EditButtons = <>
              TabOrder = 2
              Visible = True
            end
            object cxLabel2: TcxLabel
              Left = 3
              Top = 54
              Cursor = crHandPoint
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              DragCursor = crHandPoint
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = clBtnFace
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -13
              Style.Font.Name = 'Arial'
              Style.Font.Style = [fsUnderline]
              Style.IsFontAssigned = True
              StyleDisabled.Color = clBtnShadow
              OnClick = actSavePassExecute
            end
            object cxLabel3: TcxLabel
              Left = 76
              Top = 54
              Cursor = crHandPoint
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100
              DragCursor = crHandPoint
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = clBtnFace
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -13
              Style.Font.Name = 'Arial'
              Style.Font.Style = [fsUnderline]
              Style.IsFontAssigned = True
              StyleDisabled.Color = clBtnShadow
              OnClick = actCancelPassExecute
            end
            object cxLabel4: TcxLabel
              Left = 143
              Top = 54
              Cursor = crHandPoint
              Caption = #1059#1076#1072#1083#1080#1090#1100
              DragCursor = crHandPoint
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsNone
              Style.Color = clBtnFace
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -13
              Style.Font.Name = 'Arial'
              Style.Font.Style = [fsUnderline]
              Style.IsFontAssigned = True
              StyleDisabled.Color = clBtnShadow
              OnClick = actDelPassExecute
            end
          end
          object ListPas: TListBox
            Left = 0
            Top = 0
            Width = 225
            Height = 392
            Align = alLeft
            ItemHeight = 13
            Items.Strings = (
              '"Galaktika1@"'
              '"Galaktika2@"'
              '"Galaktika3@"'
              '"Galaktika4@"'
              '"Galaktika5@"')
            TabOrder = 1
          end
          object ListXex: TListBox
            Left = 225
            Top = 0
            Width = 582
            Height = 392
            Align = alClient
            ItemHeight = 13
            Items.Strings = (
              '148EBCEA7F1C31344A773E37685816AEDE72DA3124'
              '149F4C9047BB5FEFA014CE1ACA705C65EBFF574DA6'
              '14A5A0FC79831B0B747E8E249802569D88218CF745'
              '1400A76E1471284D237FDC294260899B890FACEB39'
              '14614C60E5680CADB887EC831776B227E540E6CB9E')
            TabOrder = 2
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 1
      object cxPageControl3: TcxPageControl
        Left = 0
        Top = 0
        Width = 815
        Height = 500
        ActivePage = cxTabSheet7
        Align = alClient
        Images = ImageListPage
        Style = 10
        TabOrder = 0
        OnChange = cxPageControl3Change
        ClientRectBottom = 500
        ClientRectRight = 815
        ClientRectTop = 21
        object cxTabSheet7: TcxTabSheet
          Caption = #1055#1086#1095#1090#1072
          ImageIndex = 4
          object Label3: TLabel
            Left = 15
            Top = 56
            Width = 213
            Height = 13
            Caption = #1058#1077#1082#1089#1090' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxLabel5: TcxLabel
            Left = 15
            Top = 22
            AutoSize = False
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1083#1103' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1087#1086#1095#1090#1099
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Color = clSilver
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.Color = clBtnShadow
            Height = 18
            Width = 778
          end
          object MemoMessage: TMemo
            Left = 15
            Top = 75
            Width = 778
            Height = 150
            Lines.Strings = (
              #1044#1086#1073#1088#1086#1075#1086' '#1074#1088#1077#1084#1077#1085#1080' '#1089#1091#1090#1086#1082', %USER%.'
              ''
              #1042#1072#1084' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100': %PASS%'
              ''
              ''
              
                #1059#1074#1072#1078#1072#1077#1084#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080', '#1085#1072#1087#1086#1084#1080#1085#1072#1077#1084', '#1095#1090#1086' '#1087#1072#1088#1086#1083#1100' '#1076#1077#1081#1089#1090#1074#1091#1077#1090' '#1074#1089#1077#1075#1086' '#1086 +
                #1076#1080#1085' '#1076#1077#1085#1100'. '#1045#1089#1083#1080' '#1074#1072#1084' '#1087#1088#1077#1076#1086#1089#1090#1072#1074#1080#1083#1080' '#1087#1072#1088#1086#1083#1100' '#1080' '#1074#1099' '#1085#1077' '#1089#1084#1077#1085#1080#1083#1080' '#1077#1075#1086', '#1080#1083#1080' ' +
                #1087#1086#1088#1072#1073#1086#1090#1072#1083#1080' '
              
                #1089' '#1086#1090#1095#1077#1090#1072#1084#1080' ('#1082' '#1087#1088#1080#1084#1077#1088#1091' '#1040#1082#1090' '#1089#1074#1077#1088#1082#1080') '#1090#1086' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1076#1077#1085#1100' '#1074#1099' '#1085#1077' '#1089#1084#1086 +
                #1078#1077#1090#1077' '#1079#1072#1081#1090#1080' '#1074' '#1055#1050' '#1043#1072#1083#1072#1082#1090#1080#1082#1072'('#1072#1082#1090' '#1089#1074#1077#1088#1082#1080', '#1080' '#1076#1088#1091#1075#1086#1077' '#1055#1054', '#1055#1050' '#1043#1072#1083#1072#1082#1090#1080#1082#1080')' +
                '.'
              #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088' '#1055#1050' '#1043#1072#1083#1072#1082#1090#1080#1082#1072
              #1058#1077#1083': 20-12')
            TabOrder = 1
          end
          object CheckMessage: TCheckBox
            Left = 15
            Top = 248
            Width = 322
            Height = 17
            Caption = #1054#1090#1087#1088#1072#1074#1083#1103#1090#1100' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1103' '#1085#1072' '#1087#1086#1095#1090#1091' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 2
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = #1054#1073#1097#1080#1077
          ImageIndex = 5
          object cxLabel6: TcxLabel
            Left = 15
            Top = 22
            AutoSize = False
            Caption = 
              #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1086#1087#1080#1088#1086#1074#1072#1085#1080#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1074' '#1073#1091#1092#1077#1088' '#1087#1086#1089#1083#1077' '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080' '#1087#1086#1083 +
              #1100#1079#1086#1074#1072#1090#1077#1083#1103
            ParentColor = False
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Color = clSilver
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Arial'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            StyleDisabled.Color = clBtnShadow
            Height = 18
            Width = 778
          end
          object CheckPass: TCheckBox
            Left = 15
            Top = 56
            Width = 322
            Height = 17
            Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1091#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1081' '#1087#1072#1088#1086#1083#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
            TabOrder = 1
            OnClick = CheckPassClick
          end
          object CheckString: TCheckBox
            Left = 15
            Top = 89
            Width = 166
            Height = 17
            Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1089#1090#1088#1086#1082#1091':'
            TabOrder = 2
            OnClick = CheckPassClick
          end
          object EditString: TEdit
            Left = 187
            Top = 87
            Width = 606
            Height = 21
            TabOrder = 3
            Text = #1059#1095#1077#1090#1085#1072#1103' '#1079#1072#1087#1080#1089#1100' '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1072'.'
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = #1051#1086#1075
          ImageIndex = 6
          object RichLog: TcxRichEdit
            Left = 0
            Top = 0
            Align = alClient
            Properties.MemoMode = True
            Properties.OEMConvert = True
            Properties.ScrollBars = ssBoth
            TabOrder = 0
            Height = 479
            Width = 815
          end
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 296
    Top = 256
    object actClose: TAction
      Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      OnExecute = actCloseExecute
    end
    object actSavePass: TAction
      Category = 'Passwords'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnExecute = actSavePassExecute
    end
    object actCancelPass: TAction
      Category = 'Passwords'
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      OnExecute = actCancelPassExecute
    end
    object actDelPass: TAction
      Category = 'Passwords'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = actDelPassExecute
    end
    object actReport: TAction
      Caption = #1054#1090#1095#1077#1090
      Hint = #1054#1090#1095#1077#1090' '#1087#1086' '#1090#1077#1082#1091#1097#1077#1084' '#1076#1072#1085#1085#1099#1084
      OnExecute = actReportExecute
    end
    object actUpdate: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      OnExecute = actUpdateExecute
    end
    object actHide: TAction
      Category = 'TrayIcon'
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100
      OnExecute = actHideExecute
    end
    object actShow: TAction
      Category = 'TrayIcon'
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100
      OnExecute = actShowExecute
    end
    object actKillSession: TAction
      Caption = #1054#1090#1082#1083#1102#1095#1080#1090#1100
      Hint = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1091#1102' '#1089#1077#1089#1089#1080#1102
      OnExecute = actKillSessionExecute
    end
    object actUnlokedUser: TAction
      Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      Hint = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      OnExecute = actUnlokedUserExecute
    end
    object actSendMessage: TAction
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1087#1080#1089#1100#1084#1086
      Hint = #1055#1080#1089#1100#1084#1086' '#1086#1090#1087#1088#1072#1074#1083#1103#1077#1090#1089#1103' '#1087#1086#1089#1083#1077#1076#1085#1077#1084#1091' '#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1085#1086#1084#1091' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1102
      OnExecute = actSendMessageExecute
    end
    object actShowSetting: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'/'#1086#1089#1085'. '#1086#1082#1085#1086
      Checked = True
      OnExecute = actShowSettingExecute
    end
    object actCopyPas: TAction
      Caption = 'actCopyPas'
      OnExecute = actCopyPasExecute
    end
    object actNewPas: TAction
      Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
      OnExecute = actNewPasExecute
    end
    object actNewDB: TAction
      Caption = #1053#1086#1074#1072#1103' '#1041#1044
    end
  end
  object ImageListGroup: TImageList
    Left = 424
    Top = 216
    Bitmap = {
      494C01010800C001C00110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000054698BBE235387F81E55
      8DF31F538CF31E528CF31E518CF31E508CF31D4F8CF31D4E8CF31C4C8CF31B4B
      8CF31B4A8DF3164487F851668BBE0000000000000000DBDBDB24ADADAD52ADAD
      AD52ADADAD52ADADAD52ADADAD52ADADAD52ADADAD52ADADAD52D6D6D629FEFE
      FE01000000000000000000000000000000000000000000000000E1E1E11ECFCF
      CF30D0D0D02FD0D0D02FD0D0D02FD0D0D02FD0D0D02FD0D0D02FD0D0D02FD0D0
      D02FCFCFCF30DDDDDD2200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E4879FF25C0FEFF0CAE
      FEFF0DA8FEFF0AA3FEFF099EFEFF0898FEFF0692FEFF048DFEFF0388FEFF0283
      FEFF007FFEFF007AFEFF133B79FF0000000000000000ADADAD52F8F8F7FFF9F9
      F9FFFBFBFBFFFBFBFBFFFDFDFDFFFEFEFEFFFBFBFBFFF3F3F3FFCDCDCDEAD1D1
      D12EFEFEFE01000000000000000000000000000000009F9FB1641F1FA3FF1F1F
      A3FF1F1FA3FF1F1FA3FF1F1FA3FF1F1FA3FF1F1FA3FF1F1FA3FF1F1FA3FF1F1F
      A3FF1F1FA3FF1F1FA3FF8C8CA57AFEFEFE0100000000AEA0A0FFAE9F9FFFAE9F
      9FFFAE9F9FFFAE9F9FFFAE9F9FFFAE9F9FFFAE9F9FFFAE9F9FFFAE9F9FFFAE9F
      9FFFAE9F9FFFAE9F9FFFAC9E9EFF00000000000000001A477BFF1DBDFEFF10AE
      FEFF10A9FEFF0FA3FEFF0C9FFEFF0A99FEFF0995FEFF0890FEFF068CFEFF0586
      FEFF0482FEFF0084FEFF123E7BFF0000000000000000ADADAD52F7F7F6FFF8F8
      F8FFFAFAFAFFFBFBFBFFFDFDFDFFFEFEFEFFFCFCFCFFF2F2F2FFD3D3D3FFC0C0
      C0F4D0D0D02FFEFEFE010000000000000000000000002121AFF90605C1FF0000
      C2FF0000C9FF0000CEFF0000D9FF1818E4FF1A1AEAFF0C0FEBFF060CECFF1A24
      EFFF2430F1FF3243FBFF2A2FBDFF00000000AEA0A0FFFFFFFFFFF2F5F5FFF4F7
      F7FFF4F7F7FFF3F6F6FFF1F4F4FFF1F4F4FFF0F3F3FFEFF2F2FFEFF2F2FFEFF2
      F2FFF1F4F4FFEEF1F1FFFFFFFFFFAC9E9EFF000000001C487BFF1FBEFEFF10B0
      FEFF13B1FEFF12AFFEFF10ABFEFF10A8FEFF0DA4FEFF0C9EFEFF0992FEFF088E
      FEFF0689FEFF038CFEFF133F7BFF0000000000000000ADADAD52F6F6F6FFF8F8
      F8FFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFEFEFEFFCACACAFFA7A7A7FFF5F5
      F5FFC3C3C2F5D1D1D12EFEFEFE0100000000000000001010ADFF0000B5FF0000
      BEFF0000C3FF6C6CE1FFD8D8F9FFFFFFFFFFFFFFFFFFE3E3FDFF8588F3FF1822
      E9FF1F2BEBFF2D3CEFFF272EC4FF00000000AA9B9BFFFFFFFFFFD5D5D5FFD9D9
      D9FFD5D5D5FFDBDBDBFFEEEEEEFFEBEBEBFFF0F0F0FFEDEDEDFFECECECFFEEEE
      EEFFECECECFFE7E7E7FFFFFFFFFFA89999FF000000001D4C7CFF26D2FEFF16BF
      FEFF18C0FEFF18C0FEFF18C0FEFF18C2FEFF18C0FEFF17BEFEFF13B2FEFF0B9B
      FEFF0890FEFF0593FEFF13417CFF0000000000000000ADADAD52F6F6F5FFF7F7
      F7FFEFEFEFFFBDBDBDFFCACACAFFFDFDFDFFFEFEFEFFBCBCBCFFBBBBBBFFBABA
      BAFFD1D1D1FFD0CFCFEBD6D6D62900000000000000001010AAFF0000B5FF0101
      BBFF8E8EE5FFFFFFFFFFDFDFF6FF9090E9FF8B8BEBFFD4D4F6FFFFFFFFFFADB1
      F8FF202CEBFF2A39EFFF262DC3FF00000000A99A9AFFFFFFFFFFE6E6E6FFEBEB
      EBFFE1E1E1FFE0E0E0FFDCDCDCFFDADADAFFD9D9D9FFE1E1E1FFD7D7D7FFDFDF
      DFFFD8D8D8FFCDCDCDFFFFFFFFFFA89999FF000000001E5A8EFF2CE4FEFF1DD3
      FEFF1ED3FEFF1ED3FEFF1ED3FEFF1ED3FEFF1FD3FEFF1FD3FEFF1FD5FEFF1DCF
      FEFF11ABFEFF0798FEFF154E8EFF0000000000000000ADADAD52E9E9E8FFC6C6
      C6FFB6B6B6FFD6D6D6FFBBBBBBFFD9D9D9FFB6B6B6FFA8A8A8FFC7C7C7FFAAAA
      AAFFBDBDBDFFEDEDEDFFADADAD5200000000000000001212A8FF0101B3FF6969
      D6FFFFFFFFFFADADE9FF0A0ACEFF0000D5FF0000DDFF0202E0FF9597EEFFFFFF
      FFFF9399F6FF1D2BEDFF252CC1FF00000000AA9B9BFFFFFFFFFFD4D4D4FFDADA
      DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFA89999FF000000002370A8FF3AF9FEFF21E9
      FEFF23E9FEFF23E9FEFF23E9FEFF23E9FEFF23E9FEFF23E9FEFF23E9FEFF23EB
      FEFF22E7FEFF11BFFEFF1662A8FF0000000000000000ADADAD52E1E1E1FFCDCD
      CDFFCDCDCDFFD7D7D7FFD9D9D9FFD7D7D7FFD1D1D1FF9B9B9BFFD3D3D3FFCBCB
      CBFFD3D3D3FFF3F3F3FFADADAD5200000000000000001717A6FF1717B9FFD3D3
      F2FFF6F6FCFF3333CFFF1E1ED4FF1F1FDAFF1313DEFF0000E3FF070AE3FFE4E4
      FAFFEBECFEFF2935EEFF2228C0FF00000000AC9D9DFFFFFFFFFFBFBFBFFFBDBD
      BDFFC0C0C0FFC6C6C6FFC5C5C5FFBABABAFFC7C7C7FFB7B7B7FFBEBEBEFFB1B1
      B1FFBEBEBEFFBFBFBFFFFFFFFFFFA89999FF000000002980BFFD6AF1FBFF5AF6
      FDFF5AF3FCFF5AF3FCFF5AF3FCFF5AF3FCFF5AF3FCFF5AF3FCFF58F5FDFF55F1
      FDFF57F6FDFF52EBFCFF227CBFFD0000000000000000ADADAD52DDDDDCFFC9C9
      C9FFC2C2C2FFC9C9C9FFD4D4D4FFD9D9D9FFC3C3C3FFB3B3B3FFC0C0C0FFD5D5
      D5FFDDDDDDFFEEEEEEFFADADAD5200000000000000001B1BA4FF3333BEFFEFEF
      FAFFDCDCF6FF2C2CCBFF3636D4FF3232D9FF3636DFFF3938E6FF1213E6FFB5B6
      F7FFFFFFFFFF333CEEFF1E23BEFF00000000A89999FFFFFFFFFFFCFCFCFFFFFF
      FFFFFEFEFEFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFFFFFFFFFA89999FF00000000ADD0EC5B7DBAEA9286C0
      EC8985C0EC8984C0EC8A82BCE78E83BBE48E83BBE48E8AC1EC835288B5DE639A
      C0FF6091B6FE659DCAB6B3D5F0540000000000000000ADADAD52E0E0E0FFCFCF
      CFFFB7B7B7FFBDBDBDFFB0B0B0FFD0D0D0FFCDCDCDFFAAAAAAFFBEBEBEFFC7C7
      C7FFD0D0D0FFFCFCFCFFADADAD5200000000000000001F1FA3FF3A3ABCFFE3E3
      F5FFEFEFFBFF4343CEFF3D3DD2FF9B9BEBFF9E9EEFFF4949E3FF4A4AE9FFDEDE
      FCFFEFF0FDFF1E24EAFF1C1FBDFF00000000AB9C9CFFFFFFFFFFCFCFCFFFD3D3
      D3FFCFCFCFFFD2D2D2FFDDDDDDFFDBDBDBFFDDDDDDFFDEDEDEFFD6D6D6FFDDDD
      DDFFD9D9D9FFD1D1D1FFFFFFFFFFA89999FF0000000000000000FCFDFD03F4F5
      F70EF2F4F610F6F7F90B00000000000000000000000000000000958689B4BFB6
      B0FFBCA29BFBC8C4C94C000000000000000000000000ADADAD52E5E5E4FFD0D0
      D0FFB3B3B3FFF5F5F4FFBEBEBEFFD1D1D1FFD4D4D4FFCACACAFFAAAAAAFFFBFB
      FBFFFBFBFBFFFBFBFBFFADADAD5200000000000000002424A2FF4141BCFFAAAA
      DEFFFFFFFFFF9F9FE5FF4A4AD0FFEEEEFBFFF4F4FDFF5454E0FF9595EFFFFFFF
      FFFFC5C5F4FF0E10E7FF1617BBFF00000000AC9D9DFFFFFFFFFFD0D0D0FFD7D7
      D7FFD8D8D8FFD8D8D8FFD5D5D5FFD1D1D1FFCBCBCBFFD0D0D0FFCCCDCCFFCECE
      CEFFCFCFCFFFC3C3C3FFFFFFFFFFAA9B9BFF0000000000000000D6C9C745A585
      80DEA68681ECAA8C889E000000000000000000000000000000009F8784B4BBBB
      BBFFBCB2B2FDCEC1BF4E000000000000000000000000ADADAD52DEDEDDFFD6D6
      D6FFD5D5D5FFBFBFBFFFC7C7C7FFD4D4D4FFDCDCDCFFAFAFAFFFECECECFFFAFA
      FAFFFAFAFAFFFBFBFBFFADADAD5200000000000000002828A2FF5959C1FF6161
      C2FFDDDDEEFFFFFFFFFF9393E0FFE1E1F7FFE6E6F9FFA0A0EBFFFFFFFFFFE9E9
      F6FF8383E6FF6363EDFF1717B9FF00000000A89A9AFFFFFFFFFFE1E1E1FFE8E8
      E8FFE7E4E6FFE3E1E3FFDFDDDEFFF7F5F7FFFFFDFEFFF9F9FAFFF9F9FAFFF9FB
      FAFFFFFFFFFFFFFEFFFFFFFFFFFFA89999FF0000000000000000CCC0C054D0C4
      C4FFE8E8E8FF9C8585CEF8F6F60C0000000000000000000000009B8888BAC5C4
      C4FFC5B9B9FFCEC2C351000000000000000000000000ADADAD52DFDFDFFFE6E6
      E6FFDDDDDDFFD7D7D7FFDADADAFFE2E2E2FFE1E1E1FFBFBFBFFFF7F7F6FFF7F7
      F7FFF7F7F7FFF9F9F8FFADADAD5200000000000000002E2EA3FF6B6BC3FF6464
      C3FF7171C6FFAFAFD7FF8585D4FFE7E7F8FFE9E9FAFFA5A5E1FFD0D0E8FF8787
      DEFF7B7BE5FF8D8DEAFF3535BAFF00000000C397AAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC8C7C7FFB0B2B2FFB5A6A6FF0000000000000000E2DBDB34B9A7
      A7EAFBFCFCFFB3A6A6FFB4A2A288FDFDFD0300000000C8BBBB66998989F8E9EB
      EBFFB5A3A3EAE2DBDB34000000000000000000000000ADADAD52DEDEDEFFC1C1
      C1FFCCCCCCFFF4F4F4FFE4E4E4FFCBCBCBFFD3D3D3FFC8C8C8FFF4F4F4FFF5F5
      F4FFF5F5F5FFF6F6F6FFADADAD5200000000000000003737A5FF7878C3FF7676
      C4FF7676C8FF7171C7FF7B7BCFFFF1F1FBFFF6F6FDFF8383D8FF8080D7FF8989
      E0FF8F8FE1FF9696E5FF4444BAFF0000000027A74AFF54E682FF92EAB4FF5AE4
      99FF7DEFB4FF5AF0A9FF67F8BBFF71FFC9FF7CFFD0FF35F39FFF00E879FF28E8
      8AFF009D00FFFFFFFFFFFFFFFFFFA99999FF000000000000000000000000B09C
      9CA6E4DCDCFFF7F8F8FFBEB1B1FEAA9696D3A59191D1B1A2A2F8E6E8E8FFE2DB
      DBFFAB9696B100000000000000000000000000000000ADADAD52E9E8E7FFE7E7
      E6FFCACACAFFE3E3E3FFB6B6B6FFEFEFEEFFEBEBEBFFF1F1F0FFF2F2F1FFF2F2
      F2FFF2F2F2FFF4F4F4FFADADAD5200000000000000005353A6D9ACACDEFFAAAA
      DBFFACACDEFFAFAFE1FFB3B3E5FFB0B0E4FFB3B3E7FFBDBDEDFFBFBFEEFFC3C3
      EFFFC5C5F0FFD1D1F7FFA3A3C0CC0000000044A65DFF8DF4AAFF36D875FFF3FF
      F9FF9AF3C5FFFDFFFFFFA8FBD6FFA5FDDAFFD8FFF2FF4AF5A7FF00E66DFF00DD
      56FF00A308FFFFFFFFFF998485FF00000000000000000000000000000000F2EF
      EF1AB49F9FB9E0D7D7FFFEFEFEFFF9FCFCFFF7FBFBFFF9FDFDFFDED5D5FFAE97
      97C7EFEBEB2000000000000000000000000000000000ADADAD52EAEAEAFFE9E9
      E8FFEBEBEAFFEDEDECFFEEEEEDFFEFEFEEFFF0F0EFFFF1F1F0FFF1F1F0FFF2F2
      F1FFF2F2F1FFF4F4F3FFADADAD520000000000000000BBBBDF4C6666AEB36363
      ABC16363AAC16464ABC16464ABC16565ACC16666ACC16666ACC16666ACC16666
      ACC16767ADC16868AFB7C6C6DF3F0000000059AD6EFF09C839F618C755F00DC6
      42F20DD048F20DDB6BF20DDF65F20DE56AF20DE268F20DE173F21FDD7DF20ED2
      5EF10DE85BF2D38EADFF00000000000000000000000000000000000000000000
      0000F7F5F510CCBEBE7FBEAAAAE3C7B7B7F7C6B5B5F7BEA9A9E2C9B9B987F3EF
      EF1B0000000000000000000000000000000000000000E0E0E01FADADAD52ADAD
      AD52ADADAD52ADADAD52ADADAD52ADADAD52ADADAD52ADADAD52ADADAD52ADAD
      AD52ADADAD52ADADAD52DBDBDB24000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E01F85858585868686838686
      8683868686838585858385858583858585838585858385858583858585838383
      838483838384D6D6D62900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB4F1DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004099
      BFBF0077AAFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B150FCFCFCFFFBFBFBFFF9F9
      F9FFF9F9F9FFF7F7F7FFF7F7F7FFF7F7F7FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFFCFCFCFF9E9E9E69000000000000000000000000000000006D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFCB4F1DFFFECF4DFFCB4F
      1DFF00000000000000000000000000000000F9F9F906E9E9E916E5E5E51AE5E5
      E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5E51AE5E5
      E51AE5E5E51AE5E5E51AE9E9E916F9F9F9060000000000000000000000007FBB
      D5800079ACFF0079ACFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B150FCFCFCFFB6B6B6FFB8B8
      B8FFB6B6B6FFC3C3C3FFC0C0C0FFC9C9C9FFC4C4C4FFC0C0C0FFC9C9C9FFE4E4
      E4FFF9F9F9FF9E9E9E690000000000000000000000006D6D6DFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFCB4F1DFFFECF4DFFFECF4DFFFECF
      4DFFCB4F1DFF000000000000000000000000B2B2A85CA1A19076A1A19076B1B1
      A758E5E5E51AB1B1A758A1A19076A1A19076A1A19076A1A19076B1B1A758E5E5
      E51AB1B1A758A1A19076A1A19076B2B2A85C0000000000000000000000000000
      0000007CAFFF00B8EBFF007CAFFF000000000000000000000000000000000000
      000000000000000000000000000000000000B1B1B150FCFCFCFFBDBDBDFFBBBB
      BBFFBFBFBFFFBCBCBCFFB2B2B2FFC3C3C3FFBDBDBDFFBEBEBEFFC2C2C2FFE3E3
      E3FFFBFBFBFF9E9E9E690000000000000000000000006D6D6DFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFCB4F1DFFFECF4DFFFECF4DFFFECF4DFFFECF
      4DFFFECF4DFFCB4F1DFF0000000000000000B2B2A072F9F9E9FFF3F3E3FFAEAE
      9AB599998778C0C0ADC3F3F3E3FFF3F3E3FFF3F3E3FFF3F3E3FFC0C0ADC39999
      8778AEAE9AB5F3F3E3FFF9F9E9FFB2B2A0720000000000000000000000000000
      00007FBED88000A6D9FF00B9ECFF007FB2FF0000000000000000000000000000
      000000000000000000000000000000000000B2B2B250FCFCFCFFE4E4E4FFE7E7
      E7FFE7E7E7FFE7E7E7FFE6E6E6FFE8E8E8FFEBEBEBFFECECECFFEBEBEBFFECEC
      ECFFFCFCFCFF9F9F9F690000000000000000000000006D6D6DFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFCB4F1DFFFFF1AAFFFFF1AAFFFECF4DFFFFE55FFFFECF
      4DFFFFF1AAFFFFF1AAFFCB4F1DFF00000000BFBFAD6FF4F4E6FFE9E9DAFFEFEF
      E0FFF4F4E6FFEFEFE0FFE9E9DAFFE9E9DAFFE9E9DAFFE9E9DAFFEFEFE0FFF4F4
      E6FFEFEFE0FFE9E9DAFFF4F4E6FFBFBFAD6F0000000000000000000000000000
      0000000000000082B5FF00BBEEFF00B9ECFF0082B5FF00000000000000000000
      000000000000000000000000000000000000B2B2B250FCFCFCFFD6D6D6FFDADA
      DAFFD3D3D3FFD7D7D7FFD3D3D3FFE0E0E0FFECECECFFE9E9E9FFEBEBEBFFE9E9
      E9FFFCFCFCFF9F9F9F69000000000000000000000000000000006D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFFCB4F1DFFCB4F1DFFFFE55FFFFFE55FFFFFE5
      5FFFCB4F1DFFCB4F1DFF0000000000000000C3C3B16EF5F5E8FFEBEBDEFFEBEB
      DEFFEBEBDEFFEBEBDEFFEBEBDEFFEBEBDEFFEBEBDEFFEBEBDEFFEBEBDEFFEBEB
      DEFFEBEBDEFFEBEBDEFFF5F5E8FFC3C3B16E0000000000000000000000000000
      0000000000007FC2DB8007ABDCFF06BAEBFF0ABDEDFF0086B9FF000000000000
      000000000000000000000000000000000000B2B2B250FCFCFCFFBDBDBDFFBEBE
      BEFFBCBCBCFFBEBEBEFFBCBCBCFFDBDBDBFFE1E1E1FFBEBEBEFFC2C2C2FFC4C4
      C4FFFCFCFCFF9F9F9F690000000000000000000000006D6D6DFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFCB4F1DFFFFE55FFFFFE55FFFFFE5
      5FFFCB4F1DFF000000000000000000000000C7C7B56DF7F7ECFFEEEEE3FFEEEE
      E3FFEEEEE3FFEEEEE3FFEEEEE3FFEEEEE3FFEEEEE3FFEEEEE3FFEEEEE3FFEEEE
      E3FFEEEEE3FFEEEEE3FFF7F7ECFFC7C7B56D0000000040A7CDBF008ABDFF008A
      BDFF008ABDFF008ABDFF099DCEFF05B0E2FF0BB8E8FF19C1EEFF008ABDFF0000
      000000000000000000000000000000000000B2B2B250FCFCFCFFF2F2F2FFF6F6
      F6FFEDEDEDFFF5F5F5FFF5F5F5FFF1F1F1FFE8E8E8FFDBDBDBFFCFCFCFFFCFCF
      CFFFFCFCFCFFA0A0A0690000000000000000000000006D6D6DFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFCB4F1DFFFFE55FFFFFE55FFFFFE5
      5FFFCB4F1DFF000000000000000000000000CBCBBA6BF8F8EFFFF1F1E8FFF1F1
      E8FFF1F1E8FFF1F1E8FFF1F1E8FFF1F1E8FFF1F1E8FFF1F1E8FFF1F1E8FFF1F1
      E8FFF1F1E8FFF1F1E8FFF8F8EFFFCBCBBA6B000000007FC6DF801DB4E0FF1CC1
      EEFF1CC1EEFF1CC1EEFF15BCEAFF0BB3E3FF00AADDFF0EB6E5FF2BC6EFFF008E
      C1FF00000000000000000000000000000000B2B2B250FCFCFCFFDEDEDEFFE1E1
      E1FFDBDBDBFFE0E0E0FFDEDEDEFFE9E9E9FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9
      F9FFFCFCFCFFA0A0A0690000000000000000000000006D6D6DFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFCB4F1DFFFFF1AAFFFFF1AAFFFFF1
      AAFFCB4F1DFF000000000000000000000000CFCFBE6AFAFAF4FFF5F5EEFFF5F5
      EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5EEFFF5F5
      EEFFF5F5EEFFF5F5EEFFFAFAF4FFCFCFBE6A00000000000000000093C6FF33CB
      F2FF33CAF2FF39CFF4FF47D7FAFF50DDFEFF50DDFEFF49D8FBFF46D7FAFF3ECC
      F1FF0093C6FF000000000000000000000000B2B2B250FCFCFCFFBFBFBFFFC0C0
      C0FFBEBEBEFFC0C0C0FFBEBEBEFFE1E1E1FFE6E6E6FFD8D8D8FFDADADAFFD1D1
      D1FFFCFCFCFFA0A0A069000000000000000000000000000000006D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFCB4F1DFFCB4F1DFFCB4F
      1DFF00000000000000000000000000000000D2D2C169FCFCF7FFF8F8F3FFF8F8
      F3FFF8F8F3FFF8F8F3FFF8F8F3FFF8F8F3FFF8F8F3FFF8F8F3FFF8F8F3FFF8F8
      F3FFF8F8F3FFF8F8F3FFFCFCF7FFD2D2C16900000000000000007FCAE48038BE
      E5FF6FE5FFFF6FE5FFFF6FE5FFFFA6F2FFFFDDFFFFFFDDFFFFFFDDFFFFFFDDFF
      FFFFA6E5F2FF0097CAFF0000000000000000B2B2B250FCFCFCFFF7F7F7FFF8F8
      F8FFF3F3F3FFF8F8F8FFF7F7F7FFF8F8F8FFFBFBFBFFFBFBFBFFF7F7F7FFF3F3
      F3FFFCFCFCFFA0A0A0690000000000000000000000006D6D6DFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
      D2FF6D6D6DFF000000000000000000000000D5D5C568FDFDFAFFFBFBF7FFFBFB
      F7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFBF7FFFBFB
      F7FFFBFBF7FFFBFBF7FFFDFDFAFFD5D5C568000000000000000000000000009B
      CEFF8AECFFFF8AECFFFF8AECFFFF8AECFFFF67D8F3FF23AFDAFF009BCEFF009B
      CEFF009BCEFF009BCEFF40B4DABF00000000B2B2B250FCFCFCFFD6D6D6FFDBDB
      DBFFD6D6D6FFD8D8D8FFDBDBDBFFDADADAFFFCFCFCFFC6C6C6FFCCCCCCFFC9C9
      C9FFDADADAFFA3A3A3660000000000000000000000006D6D6DFFD2D2D2FFD2D2
      D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
      D2FF6D6D6DFF000000000000000000000000D8D8C768FEFEFDFFFDFDFBFFFDFD
      FBFFFDFDFBFFFDFDFBFFFDFDFBFFFDFDFBFFFDFDFBFF6666B3FF333398FF3333
      98FF333398FF333398FF333399FF63639DC30000000000000000000000007FCE
      E88052C9E9FFA4F2FFFFA4F2FFFFA4F2FFFFA4F2FFFF7BDDF4FF009FD2FF0000
      000000000000000000000000000000000000B2B2B250FCFCFCFFE7E7E7FFEBEB
      EBFFEBEBEBFFECECECFFEBEBEBFFE8E8E8FFFBFBFBFFCBCBCBFFE8E8E8FFFCFC
      FCFFA4A4A4C7E7E7E7180000000000000000000000006D6D6DFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFF6D6D6DFF000000000000000000000000DADAC967FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3333ACFF5E5EF7FF5E5E
      F7FF5E5EF7FF5E5EF7FF5E5EF7FF2C2CA1E10000000000000000000000000000
      000000A2D5FFBBF7FFFFBBF7FFFFBBF7FFFFBBF7FFFFBBF7FFFF8CE2F4FF00A2
      D5FF00000000000000000000000000000000B2B2B250FCFCFCFFD5D5D5FFDBDB
      DBFFCCCCCCFFD7D7D7FFD5D5D5FFD3D3D3FFF7F7F7FFCFCFCFFFFCFCFCFFAEAE
      AEC6EBEBEB1400000000000000000000000000000000000000006D6D6DFF6D6D
      6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D
      6DFF00000000000000000000000000000000E5E5D84DDCDCCB66DCDCCB66DCDC
      CB66DCDCCB66DCDCCB66DCDCCB66DCDCCB66DCDCCB666666B2C22C2CAFE02C2C
      AFE02C2CAFE02C2CAFE02C2CAFE06060C2A80000000000000000000000000000
      00007FD1EB8068D1ECFFCFFCFFFFCFFCFFFFCFFCFFFFCFFCFFFFCFFCFFFF9BE6
      F5FF00A5D8FF000000000000000000000000B1B1B151FCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF7F7F7FFDADADAFFB1B1B1CAF1F1
      F10E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000A8DBFFDDFFFFFFDDFFFFFFDDFFFFFFDDFFFFFFDDFFFFFFDDFF
      FFFFA6E9F6FF00A8DBFF000000000000000000000000BFBFBFF9BEBEBEF4BEBE
      BEF4BEBEBEF4BEBEBEF4BEBEBEF4BEBEBEF4C0C0C0F7BBBBBBC4E7E7E7180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007FD4ED8017B3E0FF37BFE6FF58CCEBFF6FD5EEFF6FD5EEFF58CC
      EBFF37BFE6FF17B3E0FF40BFE5BF00000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008001800FC003FFFF8001800780008001
      8001800380010000800180018001000080018001800100008001800180010000
      800180018001000080018001800100008001800180010000C3C3800180010000
      C3C3800180010000C1C3800180010000C083800180010000E007800180010001
      E007800180010003F00F8001FFFFFFFF0003FFDFFFFFE7FF0003C00F0000E3FF
      000380070000F1FF000380030000F0FF000380010000F87F0003C0030000F83F
      000380070000801F000380070000800F000380070000C0070003C00F0000C003
      000380070000E001000380070000E01F000380070000F00F0007C00F0000F007
      000FFFFFFFFFF803801FFFFFFFFFF80100000000000000000000000000000000
      000000000000}
  end
  object ImageListPage: TImageList
    Left = 376
    Top = 360
    Bitmap = {
      494C01010800E801E80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8D8
      D827D2D2D22DD2D2D22DD2D2D22DDDDDDD220000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8E6E623A09C
      9891918D89A6908C89A7908C89A7908C89A7908C89A7908C89A5A5A3A26BDFDF
      DF20FEFEFE01000000000000000000000000000000000000000000000000FCFC
      FC03DADADA30606060DF6A6A6AF56E6E6EF96D6D6DFABFBFBF62D2D2D2437272
      72F26F6F6FF76A6A6AF4606060DFDADADA30000000000000000099B3877E479D
      56FD479E58FD429D56FD419952FD607D4DBAFDFDFD0200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5DADB80D5DADB80D5DADB80D5DADB800000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA08A09A96F8CBCB
      CBFFCDCDCDFFD3D3D3FFDADADAFFE1E1E1FFE8E8E8FFEAEAEAFF999490FDAAA7
      A4E9B6B6B64CFBFBFB040000000000000000000000000000000000000000D2D2
      D2455F5F5FF08E8E8EFEA9A9A9FFAEAEAEFF979797FF717171FF787878FF9797
      97FFAEAEAEFFB0B0B0ED949494EF686868D7FCFCFC03EAEAEA15769961AC5FB7
      7DFF62B073FF3FA760FF43B97AFF4D783AD7E5E5E51AE7E7E718E7E7E718E7E7
      E718E7E7E718E7E7E718E8E8E817F6F6F6090000000000000000000000000000
      00006D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFFD5DADB8000000000000000000000
      00000000000000000000000000000000000000000000E5E3E12FC4C4C3FFCCCC
      CCFFCECECEFFD8D8D8FFE2E2E2FFEBEBEBFFF5F5F5FFF4F4F4FF969492FFF7F7
      F7FFBDBBB9F9A7A6A564FBFBFB04000000000000000000000000E5E5E54A7575
      75F96D6D6DFFD3D3CEFF7E7E7EFF454545FF464646FF515151FF515151FF4646
      46FF424242FF7A7A7AC8C4C4C4FF707070EFA29C96AF99918AFA577A3FFD6FC1
      8DFF7ABF8CFF46AF6CFF46BE82FF3D6527FE8A8079FA8D847CFA90877FFA928A
      82FA958C85FA978F88FA8A817AF2CFCFCE360000000000000000D5DADB800000
      0000000000006D6D6DFF989795FF989795FF6D6D6DFF00000000000000000000
      00000000000000000000000000000000000000000000E4E2E130C9C9C8FFCCCC
      CCFFCECECEFFD7D7D7FFE1E1E1FFEBEBEBFFF4F4F4FFF5F5F5FFA19F9DFFFEFE
      FEFFF7F7F7FFB9B7B5F9B7B7B64BFEFEFE010000000000000000B0B0B0EA8181
      81FF868686FFD3D3CEFFCDCDCDFF464646FFBDBDBDFFCECECEFFC2C2C2FFADAD
      ADFF454545FF919191EBC4C4C4FF858585F79A938DD8D4D2D0FF6C8F57FF7FCA
      9DFF91CDA5FF4CB675FF49C288FF477031FFACA7A2FFB6B0ACFFCCC7C3FFD3CF
      CCFFDBD7D5FFE4E1DFFFB0A9A4FFC2C0BF4E00000000000000006D6D6DFFD5DA
      DB8000000000000000006D6D6DFFD2CDC9FF6D6D6DFF00000000000000000000
      00000000000000000000000000000000000000000000E4E2E130CCCCCBFFCCCC
      CCFFCCCCCCFFD6D6D6FFDFDFDFFFE8E8E8FFF1F1F1FFF6F6F6FFEBEBEBFFE1DE
      DDFFFEFEFEFFF3F3F3FFA5A19FEBDDDDDD220000000000000000B2B2B2EAB6B6
      B6FF797979FFD3D3CEFF7B7B7BFF4D4D4DFF656565FF929292FF797979FF6565
      65FF4D4D4DFF6A6A6AF9C4C4C4FF7B7B7BF0697A4CEA4C8947FF458D44FF9BD3
      AEFFA7D9B9FF4FBA7EFF4AC58BFF3E863AFF407931FF5F7245FFCFCAC6FFD6D2
      CFFFDFDCD9FFE6E3E1FFB1AAA5FFC2C0BF4E00000000000000006D6D6DFF6D6D
      6DFFD5DADB80D5DADB806D6D6DFFD2CDC9FF6D6D6DFFD5DADB80000000000000
      000000000000000000000000000000000000F9F9F906C6C5C34BB1B1B0FFAEAE
      AEFFAEAEAEFFB5B5B5FFBBBBBBFFC3C3C3FFCBCBCBFFD0D0D0FFD3D3D3FFCFCF
      CFFFBCBAB8FFD2CFCDFFACA6A2FD9F9D9B750000000000000000B4B4B4EAEDED
      EDFF919191FF919191FFE8E8E8FFDDDDDDFFC1C1C1FF898989FF888888FFD8D8
      D8FFDDDDDDFFC4C4C4FF919191FF9E9E9E8A82876CE15AAD6FFFBCDFC5FFC4E4
      CEFFBEE4CDFF52C188FF4DC992FF53D5A4FF429E55FFA3AB91FFD5D1CEFFDFDB
      D8FFE5E2E0FFE8E6E4FFB2ACA7FFC2C0BF4E00000000000000006D6D6DFF9897
      95FF6D6D6DFF6D6D6DFF989795FFD2CDC9FF989795FF6D6D6DFFD5DADB800000
      000000000000000000000000000000000000B0B0B0AFCBCBCBFFCFCFCFFFCFCF
      CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
      CFFFB8B8B8FFC7C7C7FFEEEEEEFF8F8B87B50000000000000000B6B6B6EAF3F3
      F3FFE0E0E0FFA8A8A8FF8B8B8BFF9E9E9EFF878787FFB1B1B1FFB1B1B1FF8484
      84FF9E9E9EFF868686FEBABABA75F6F6F60B9B958ED8B5C3A4FF6ABB86FFD2EC
      DBFFD3EEDEFF54C58DFF4FCE99FF49AE70FF707F5FFFD8D4D1FFDFDDDAFFE9E7
      E6FFE6E3E1FFECEAE9FFB4AEA9FFC2C0BF4E00000000000000006D6D6DFF9897
      95FFD2CDC9FFD2CDC9FFD2CDC9FFD2CDC9FFD2CDC9FF989795FF6D6D6DFFD5DA
      DB80D5DADB80D5DADB800000000000000000B9B9B9ED74796EFF3D5523FF5069
      36FF647D4AFF6E8858FF829B68FF829B68FF799B67FF70865AFF829B68FFA2B3
      90FFD2D2D2FFB2B2B2FFE7E7E7FF8F8A87B80000000000000000B8B8B8EAF4F4
      F4FFEAEAEAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFC9C9C9FFBDBDBDFFBFBF
      BFFFE2E2E2FFA5A5A5EA00000000000000009C958FD8F4F3F2FFA8BA96FF76C8
      99FFE2F4EBFF55CC97FF4DBA80FF94A680FFC9C9C9FFA5A5A4FFF1F0EFFFE6E4
      E2FFEBE9E8FFF1F0EEFFB6B0ACFFC2C0BF4E0000000000000000000000006D6D
      6DFF6D6D6DFF6D6D6DFF9D9C9AFFDEDBD6FFDEDBD6FFDEDBD6FF9D9C9AFF6D6D
      6DFF6D6D6DFF6D6D6DFFD5DADB8000000000ACACACEE4C5840FF264B00FF264B
      00FF264B00FF07874DFF1A3C05FF264B00FF117234FF065C33FF264B00FF5471
      36FFC8C8C8FFA9A9A9FFDEDEDEFF8F8A87B80000000000000000BABABAEAF5F5
      F5FFEEEEEEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC2C2C2FFC2C2
      C2FFE3E3E3FFA7A7A7EA00000000000000009C9590D8FAF9F9FFF4F3F2FF9DB3
      89FF7BCFA4FF56C691FF849B6DFFC5BFBAFFD4CFCCFFC8C8C8FFB8B7B7FFEDEB
      EAFFF1F0EFFFF6F6F5FFB9B4AFFFC2C0BF4E0000000000000000000000000000
      000000000000000000006D6D6DFF9F9E9CFFE4E1DDFFE4E1DDFFE4E1DDFFE4E1
      DDFFE4E1DDFF9F9E9CFF6D6D6DFF000000009F9F9FEE454F3CFF087240FF056C
      3FFF143E0DFF00CC84FF03683FFF1E3C00FF039E62FF00BC79FF046D40FF1B64
      3CFFBDBDBDFF9F9F9FFFD7D7D7FF8F8A87B80000000000000000BBBBBBEAF6F6
      F6FFEBEBEBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC3C3C3FFBCBCBCFFC0C0
      C0FFE5E5E5FFAAAAAAEA00000000000000009C9590D8FFFFFFFFFAFAF9FFEAEA
      E9FF7B9166FF7E9E67FFD6D2CEFFD1CDC9FFD2CECBFFDEDBD8FFCCCCCBFFCDCD
      CCFFF8F7F6FFFCFCFCFFBAB5B1FFC2C0BF4E0000000000000000000000000000
      00000000000000000000000000006D6D6DFFA2A1A0FFECEAE7FFA2A1A0FF6D6D
      6DFF6D6D6DFFA2A1A0FF6D6D6DFF00000000969696EF454C3FFF218B5AFF0AA1
      66FF00AF71FF019961FF00BF7BFF0D3512FF00BC79FF0A6231FF087340FF2671
      47FFBBBBBBFF989898FFD0D0D0FF8F8A87B80000000000000000BCBCBCEAF7F7
      F7FFE7E7E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDEDEFFC3C3
      C3FFE6E6E6FFACACACEA00000000000000009C9590D8FFFFFFFFFBFBFBFFC2C2
      C2FFF3F2F1FFE8E5E3FFE1DEDCFFDEDBD8FFDFDCD9FFE4E1DFFFECEAE9FFD6D6
      D6FFE4E4E4FFFFFFFFFFBAB5B1FFC2C0BF4E0000000000000000000000000000
      0000000000000000000000000000000000006D6D6DFFF4F2F0FF6D6D6DFF0000
      0000000000006D6D6DFF6D6D6DFF00000000999999F051544CFF757D6DFF697F
      6BFF02C57FFF275A40FF12925FFF00B072FF048152FF1E2B10FF132105FF3E49
      32FFBEBEBEFF969696FFD1D1D1FF8F8A87B80000000000000000BEBEBEEAF8F8
      F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBFFEAEAEAFFAEAEAEEA00000000000000009C9590D8FFFFFFFFD7D7D7FFFFFF
      FFFFFAF9F9FFF2F1F0FFEDECEAFFEBE9E7FFECEAE8FFEFEEECFFF5F4F4FFFDFD
      FDFFE4E4E4FFF2F2F2FFBAB5B1FFC2C0BF4E0000000000000000000000000000
      0000000000000000000000000000000000006D6D6DFFFAFAF9FF6D6D6DFFD5DA
      DB8000000000000000006D6D6DFF000000009B9B9BF1565754FF9C9F9AFF989B
      96FF5F9A83FF8A8D87FF7D9689FF01CD85FF39705AFF80847DFF7C8079FF585C
      54FFBFBFBFFF9B9B9BFFD7D7D7FF8F8A87B80000000000000000CBCBCBBFE1E1
      E1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBFFCFCFCFFFC8C8C8A100000000000000009D9590D8EEEEEEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFAF9F9FFF8F7F7FFF8F8F7FFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F3F3FFBAB6B2FFC4C2C14C0000000000000000000000000000
      0000000000000000000000000000000000006D6D6DFFA9A9A9FFA9A9A9FF6D6D
      6DFFD5DADB80000000000000000000000000A1A1A1F25E5E5EFFB5B5B5FFBABA
      BAFFBABABAFFBABABAFFB6B6B6FF48AA87FF9C9E9EFFAAAAAAFFA6A6A6FF5757
      57FFC4C4C4FF9F9F9FFFD9D9D9FF9A9591A70000000000000000F3F3F32AC7C7
      C7D1D0D0D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0E0FFC2C2
      C2FFC0C0C0C3F6F6F61B0000000000000000A7A09AAFD5D2CFFED6D3D0FED6D3
      D0FED6D3D0FED6D3D0FED6D3D0FED6D3D0FED6D3D0FED6D3D0FED6D3D0FED6D3
      D0FED6D3D0FED6D3D0FEA7A19CF5EAE9E81C0000000000000000000000000000
      000000000000000000000000000000000000000000006D6D6DFF6D6D6DFF6D6D
      6DFF6D6D6DFF000000000000000000000000A1A1A1F0B8B8B8FF595959FF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF6666
      66FFD9D9D9FF9B9B9BFFAEAAA7FDDDDBD936000000000000000000000000FDFD
      FD07E8E8E855CFCFCFAEC3C3C3D6B8B8B8FBB7B7B7F9C2C2C2CDCCCCCCA9E9E9
      E946FEFEFE030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACAC7BA5A5A5F2ADADADF5ACAC
      ABF7ACACABF7ACACABF7ACACABF7ACACABF7ACACABF7ACACABF7ACACABF7ACAC
      ABF7898988E4C3C0BE5BF2F1F017000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000484848B7424242BD515151AE505050AFA0CEF8AF859D
      B2AF505050AF515151AE464646B969696996F4F8FC12E2EAF22ED1A99781BB65
      3CE4BB6135F5BB5E33F8B95D35F5B75D34ECC89E8E8DE3EBF32CF4F8FC120000
      00000000000000000000000000000000000000000000000000002B2AA6DA4040
      A2BF0000000000000000242498DB23289ADC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000095C3E28555A7D8E9519AD1E0B5CBE056000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF000000FF79BBFBFF5176
      96FF000000FF000000FF000000FF050505FA73ADE3C55D77A3FFC2714DFFFFB9
      62FFFFBA63FFFFB661FFFFBA61FFFFB05CFFB56243FF5B7FAFFF79AEE1C10000
      00000000000000000000000000000000000000000000000096FF31A7FFFF68D8
      FFFF3A3A74C5272769D85ACDFFFF45B9FFFF2121B1DE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006EBFE8C986E9F9FF4DD9F5FF4397CEF3AFC5DB5D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000454545BA000000FF2A1C12FF1F0F03FF93E8FFFF75B0
      E1FF000000FF0B0400FF0E1315FF6D6D6D972B8BE5FF93AACAFFE9AA6BFFFFB5
      60FFFEAB5DFFFEA257FFFE9D52FFFF9A4EFFEA8C54FF96AECDFF2882DDFF0000
      0000000000000000000000000000000000000000000000038DFF0474FFFF50C2
      FFFF5FB2FFFF50AEFFFF5AC5FFFF3986FFFF0F0489FFA14236D1984541D29547
      48D8984A49D6852323F0CFB6B57DEDE7E6350000000000000000000000000000
      000000000000000000006ABAE6CFA1E6F8FF38D2F2FF47D6F6FF4298CEF5AABF
      D762F3F6FB0DF3F6FB0D0000000000000000DFD4D17DA97C79FFB07E7BFFBE92
      8FFFC19696FFF6C0C1FFEFD0CEFD897872FF323231FF41464EFF9FF5FFFFAAF4
      FFFF403C3CFB685A50C97D75709F00000000C9B0A474B38375FFFED7A8FFFFCA
      72FFFFC265FFFFB85EFFFFAB56FFFEA559FFFEB984FFAE7261FEC2ACA3760000
      00000000000000000000000000000000000000000000000000003F3F9AC0045B
      FFFF1B7BFFFF2995FFFF376DFFFF200769FFFFFFF0FFFFFFFFFFF6F8FCFFE7DC
      DBFFD1C5C1FFC9C3BEFFA57D79FF9F6764E30000000000000000000000000000
      00000000000000000000B4D9F15C5FB0E3CE99E2F6FF53DCF5FF46D9F6FF3F94
      CEF4478ED3E8488FD6E8B6CAE25300000000D0BBB997995E58FFDAD5D5FFE4DC
      DAFFF4F1F2FFFCFFFDFFFFFFFFFF98B2C6FF00194FFF004676FF9EE0FFFF8FC3
      E9FF003C68FFD7E3EC280000000000000000FEFEFE01D3997C84DD9378FDFFEC
      B8FFC6B277FFC7AA71FFC7A16CFFFFD09CFFDA886BFCD09A8080FEFEFE010000
      00000000000000000000000000000000000000000000000000003F3F9AC0005F
      FCFF00ABF8FF627DFFFF426AF5FF0E076CFFFFFFE6FFF1E8E5FFEEE6E7FFEEE6
      E6FFD2C0BCFFA88D88FF92524DF7CBB9B58BE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFC2D7E5FF68B7E2FF64BEE5FF5ED9F2FF4EDB
      F6FF5BDDF7FF55D8F5FF3483CEFFA2B6D0FFD8C5C376A07772FFC3B7B0FFC8AC
      ACFFD5C2C0FFFEE3DEFF9FA4B1FF001149FF002757FF5C97C8FFA3E0FFFF84C5
      FFFF206496FF00467BFFF9FBFD060000000000000000FDFCFC03C1856798828F
      AAFE67A0DBFF73A4D8FF6CA4DCFF838BA0FEC0866B95FDFCFC03000000000000
      00000000000000000000000000000000000000000000000089FF03BAFFFF0A9A
      F1FF09A1FFFF00B0FFFFAFACF4FF7188FDFF0B1398FFFCE7CDFFE3D3CFFFE1D2
      D2FFF9FBFAFFECEFEDFF8D4543ECE0D7D54EC9C9C9FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF93C8EAFF89DDF4FF6AE0
      F6FF73E2F7FF5FDFF6FF55DAF6FF4084CEFFEDE6E53C967169FF965959FFC1B5
      AFFFC2AAA5FFCCB4B1FFE2CDC5FFD3D8DBFF003C71FFB4E8FFFF92D7FFFFBFED
      FFFF87C5EBFF00548CFFE1EDF31E000000000000000000000000B1ADB17475A7
      D8FEB1D6F7FFB2DAFFFFB4D7F8FF7BA4C9FEB78D64ECE3CFBD64000000000000
      00000000000000000000000000000000000000000000000082FF0AD4FFFF0BC3
      FFFF4F1066FF4230A5FF96A4FFFF929CFDFF1A1A8BFFEACDB4FFD8C9C3FFF5FD
      FAFFFAFFFFFFA04C4EFFE5DFDC41FDFDFD03C9C9C9FFFCFCFCFFC9C9C9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF78BEE7FFA9EEF9FF7EE6
      F8FF9AE8F8FF7ED1F0FF80E2F6FF499DDAFF00000000EDE7E63ABA9C96BFA363
      57FFF2D7CCFFF6E6DBFFFFFFFBFFCD4934FF084D7EFF92E0FFFFA0D8FFFFF9FF
      FFFFD5E8F4FF005B9AFF000000000000000000000000000000006991BAA1AAC7
      E3FFA9CFF2FF85ACD2FF76A0C9FF8EB0CFFFA0968CD1D4B699FFBB8C5FF4DFC9
      B4710000000000000000000000000000000000000000000000000A008FFF1414
      76EB00000000F5E3C96600007BFF15188BFFFFFFF1FFFFFDF2FFFFFFFFFF9042
      3FFF842324F0FAF9F90B0000000000000000C9C9C9FFFCFCFCFFC9C9C9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFAAD3EEFF5EC1EAFFA3F0
      FBFF80D4F0FF7EC7ECFF57A6DEFFA3BDD7FF0000000000000000000000000000
      0000376A95FF3577ABFF4C6888FF000000001A5582F4004483FF2980B1FFFFFF
      FFFF73AFD2FF2871A8D7000000000000000000000000000000004D75AEB74977
      ABFF5A8CC0FF275789FF0A3A6DFF0D3561FF768FAAA2C1976EDCF5EEE7FFD5B8
      9DFFBA8A5DF7DCC4AD7D00000000000000000000000000000000000000000000
      0000000000000000000000000000B5BEC7A84278A6FF267CB9FF934746BF0000
      000000000000000000000000000000000000C9C9C9FFFCFCFCFFC9C9C9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF9FCDECFF6FC9
      ECFFC9F3FBFF63BFE8FFBFDAEFFFE8E8E8FF0000000000000000000000004F7D
      A5CB8CD1FFFF99EBFFFF8DD8FFFF2A486CDAD1E2ED2E03669EFF00609AFF419B
      CBFF006BA8FFB1D5E74E0000000000000000000000000000000095A8C271084B
      96FF064A8CFF19548DFF7D736AFFB68658FFB88758FFD5B89DFFFFFFFFFFFFFF
      FFFFF8F3EFFFD5B89DFFC49B74D3F4EEE7240000000000000000000000000000
      00000000000000000000EBF8FC26487FABFF9BE5FFFF97E8FFFF2067A4FF0000
      000000000000000000000000000000000000C9C9C9FFFCFCFCFFC9C9C9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFAFBFCFF8FC7
      EAFF6BBCE7FFABD4EFFFFCFCFCFFE8E8E8FF0000000000000000000000005D82
      AAFFADF1FFFF8AC4FFFFE0FFFFFF5C789EF4000000003D98C4C80474ADFF0064
      A5FF66AFD3990000000000000000000000000000000000000000FBFBFC04889A
      B6811F5798F087786AFBDAC1A9FFFEFEFDFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3
      D0FFFEF2E9FFFFFFFFFFDFC9B4FFC2976FDB0000000000000000000000000000
      0000000000000000000039597DEBB1F2FFFF88C9FFFFA6DAFFFFCAFFFFFF1B4D
      80FF00000000000000000000000000000000C9C9C9FFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFE8E8E8FF0000000000000000A6B5C45F5482
      A8FFD9FFFFFFE0FFFFFFE1F7FFFF3C799FFF5C6783BC00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF9F70CB88859FCFEFEFDFFFEF2E9FFFEECDFFFFDE9D9FFFDE7D6FFFDE6
      D3FFFDE4D0FFFCE4D1FFFFFFFFFFC8A27DFF0000000000000000000000000000
      0000000000000000000041729CFFC4F6FFFFBFECFFFFF5FFFFFFD1F2FFFF2A59
      7FD500000000000000000000000000000000C9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FF0000000000000000466F90BD3584
      B3FFFFFFFFFF7D9FBCFF001649FF125982FF5682A2D000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F0EB1EC0956CFFFFFFFFFFFEF0E5FFFEEEE2FFFEEBDDFFFDE9DAFFFDE8
      D7FFFDE6D4FFFDE4D1FFFFFFFFFFCDAA89FF0000000000000000000000000000
      000000000000516B86BB0B659AFFFFFFFFFFF8FFFFFF3A668DFF002D5CFF1F5E
      86FF8CA1B5850000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A1C7DC5E1182
      BBFF4A7599FF001C4DFF025A8AFF52A5CDFFA3C1D56900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF9F70CB88859FCFEFEFDFFFEF6F0FFFEF2E9FFFEEFE4FFFEEEE1FFFEEC
      DEFFFDEADBFFFDEADCFFFFFFFFFFC7A07BFF0000000000000000000000000000
      000000000000577E9CB20072B3FFB0D7EEFF1C4B73FF00184CFF2073A0FF3F7F
      A6FF92A5B87A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D6E
      94D2003D6EFF056B9FFF3C97C4FF35749FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDAB8BB1DAC1A9FFFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDFC9B4FFC2976FDB0000000000000000000000000000
      000000000000D0D8E0392181B3DE003768FF004070FF17709FFF5AB9E2FF2C40
      64FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F5
      F70E227DADE3288CBDE55E9AC0BD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F6F312D1B192A5B9895BF9B88758FFB88758FFB88758FFB887
      58FFB88758FFB88758FFCBA785BAF4EEE7240000000000000000000000000000
      00000000000000000000FDFDFE02166795EE0870A8FF43A6D4D84C6B89CE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E0FFFFFFC007E000C07FF0FF8003E000
      0000F07F8001C0000000D87F8000C0000000CC7F8000C0000000C03F0000C000
      0000C01F0000C0000000C0030000C0030000E0010000C0030000FC010000C003
      0000FE010000C0030000FF190000C0030000FF0D0000C0030000FF070000C003
      0000FF870000E007FFFFFFFF0001FFFFFC00001FCCFFFC3FFC00001F807FFC1F
      FC00001F8000FC030001001FC000FC010003001FC00000000001803F80000000
      0001C03F800000008003C00FC8030000F103C003FE1F0000E003C000FC1F0000
      E087C000FC0F0000C07FF000FC0F0000C07FF000F807FFFFC07FF000F807FFFF
      E0FFF800F80FFFFFE1FFF800FC1FFFFF00000000000000000000000000000000
      000000000000}
  end
  object OraSession1: TOraSession
    Options.Direct = True
    LoginPrompt = False
    Left = 288
    Top = 400
  end
  object DSActiveUser: TDataSource
    DataSet = OraActiveUser
    Left = 608
    Top = 352
  end
  object OraActiveUser: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select sid'
      '      , serial#'
      '      , username'
      '      , status'
      '      , type'
      '      , to_char( logon_time, '#39'dd.mm hh24:mi'#39') logon_time'
      '      , osuser'
      '      , machine'
      '      , program'
      '   from v$session '
      '   where'
      '    type = '#39'USER'#39
      'ORDER BY program')
    FetchAll = True
    Left = 664
    Top = 176
    object OraActiveUserSID: TFloatField
      FieldName = 'SID'
    end
    object OraActiveUserSERIAL: TFloatField
      FieldName = 'SERIAL#'
    end
    object OraActiveUserUSERNAME: TStringField
      FieldName = 'USERNAME'
      OnGetText = OraActiveUserUSERNAMEGetText
      Size = 30
    end
    object OraActiveUserSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 8
    end
    object OraActiveUserTYPE: TStringField
      FieldName = 'TYPE'
      Size = 10
    end
    object OraActiveUserLOGON_TIME: TStringField
      FieldName = 'LOGON_TIME'
      Size = 11
    end
    object OraActiveUserOSUSER: TStringField
      FieldName = 'OSUSER'
      Size = 30
    end
    object OraActiveUserMACHINE: TStringField
      FieldName = 'MACHINE'
      Size = 64
    end
    object OraActiveUserPROGRAM: TStringField
      FieldName = 'PROGRAM'
      Size = 64
    end
  end
  object DSAllUer: TDataSource
    DataSet = OraAllUser
    Left = 816
    Top = 232
  end
  object OraAllUser: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO X$USERS'
      '  (XU$PASSWORD, XU$FLAG)'
      'VALUES'
      '  (:XU$PASSWORD, :XU$FLAG)')
    SQLDelete.Strings = (
      'DELETE FROM X$USERS'
      'WHERE'
      
        '  XU$USEROFFICE = :Old_XU$USEROFFICE AND XU$LOGINNAME$UP = :Old_' +
        'XU$LOGINNAME$UP')
    SQLUpdate.Strings = (
      'UPDATE X$USERS'
      'SET'
      '  XU$PASSWORD = :XU$PASSWORD, XU$FLAG = :XU$FLAG'
      'WHERE'
      'XU$LOGINNAME$UP = :Old_XU$LOGINNAME$UP')
    SQLLock.Strings = (
      'SELECT * FROM X$USERS'
      'WHERE'
      
        '  XU$USEROFFICE = :Old_XU$USEROFFICE AND XU$LOGINNAME$UP = :Old_' +
        'XU$LOGINNAME$UP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT XU$PASSWORD, XU$FLAG FROM X$USERS'
      'WHERE'
      
        '  XU$USEROFFICE = :XU$USEROFFICE AND XU$LOGINNAME$UP = :XU$LOGIN' +
        'NAME$UP')
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      '  XU$FULLNAME'
      '  ,XU$LOGINNAME'
      '  ,TO_ORADATE(ATL_LASTDATE)'
      
        '  ,(SELECT CREATED FROM DBA_USERS WHERE USERNAME LIKE '#39'GALAKSU#'#39 +
        ' || XU$LOGINNAME$UP) AS CREATE_USER'
      
        '  ,(SELECT LOCK_DATE FROM DBA_USERS WHERE USERNAME LIKE '#39'GALAKSU' +
        '#'#39' || XU$LOGINNAME$UP) AS LOCK_DATE'
      '  ,XU$FLAG'
      '  ,(XU$TYPE -1) AS USERTYPE'
      
        '  ,CASE WHEN (SELECT ACCOUNT_STATUS FROM DBA_USERS WHERE USERNAM' +
        'E LIKE '#39'GALAKSU#'#39' || XU$LOGINNAME$UP ) = '#39'OPEN'#39' THEN -1'
      '        ELSE 1'
      '   END AS BLOCK_ORA'
      ''
      ' FROM X$USERS'
      'ORDER BY XU$FULLNAME')
    FetchAll = True
    OnCalcFields = OraAllUserCalcFields
    Left = 664
    Top = 232
    object OraAllUserXULOGINNAME: TStringField
      DisplayLabel = #1051#1086#1075#1080#1085
      FieldName = 'XU$LOGINNAME'
      Required = True
      Size = 47
    end
    object OraAllUserXUFULLNAME: TStringField
      DisplayLabel = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      FieldName = 'XU$FULLNAME'
      Required = True
      Size = 60
    end
    object OraAllUserBlockGal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'BlockGal'
      Calculated = True
    end
    object OraAllUserDROP_PASS: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DROP_PASS'
      Calculated = True
    end
    object OraAllUserCREATE_USER: TDateTimeField
      FieldName = 'CREATE_USER'
    end
    object OraAllUserBLOCK_ORA: TFloatField
      FieldName = 'BLOCK_ORA'
    end
    object OraAllUserTO_ORADATEATL_LASTDATE: TDateTimeField
      FieldName = 'TO_ORADATE(ATL_LASTDATE)'
    end
    object OraAllUserLOCK_DATE: TDateTimeField
      FieldName = 'LOCK_DATE'
    end
    object OraAllUserUSERTYPE: TFloatField
      FieldName = 'USERTYPE'
    end
    object OraAllUserXUFLAG: TIntegerField
      FieldName = 'XU$FLAG'
      Required = True
    end
  end
  object DSLocUser: TDataSource
    DataSet = OraLocUser
    Left = 800
    Top = 296
  end
  object OraLocUser: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'select username , account_status, lock_date from dba_users where' +
        ' account_status = '#39'LOCKED'#39' '
      'or account_status = '#39'LOCKED(TIMED)'#39' order by lock_date DESC')
    FetchAll = True
    Left = 664
    Top = 288
    object OraLocUserUSERNAME: TStringField
      FieldName = 'USERNAME'
      Required = True
      OnGetText = OraLocUserUSERNAMEGetText
      Size = 30
    end
    object OraLocUserACCOUNT_STATUS: TStringField
      FieldName = 'ACCOUNT_STATUS'
      Required = True
      Size = 32
    end
    object OraLocUserLOCK_DATE: TDateTimeField
      FieldName = 'LOCK_DATE'
    end
  end
  object TrayIcon1: TTrayIcon
    Animate = True
    AnimateInterval = 0
    Hint = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' Oracle'
    BalloonTimeout = 1
    BalloonFlags = bfInfo
    Icon.Data = {
      0000010001001010000001002000680400001600000028000000100000002000
      000001002000000000000004000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00565656FF464646FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009999990D959595319191912F5E5E5E9E5252
      52FF6161614C949494FF808080FF50505057494949FD3F3F3FB9FFFFFF00FFFF
      FF00A3A3A321A1A1A19D9F9F9FF0A1A1A1FFABABABFFA7A7A7FF7F7F7FFFBEBE
      BEFF9D9D9DFFC4C4C4FFBCBCBCFF999999FFBBBBBBFF585858FF3C3C3C03A7A7
      A74AA5A5A5F4CECECEFFEDEDEDFFF4F4F4FFF5F5F5FFEAEAEAFFB6B6B6FFC2C2
      C2FFB6B6B6FF868686FE828282F3ADADADFFBCBCBCFF5B5B5B9C3F3F3F12A9A9
      A9EADEDEDEFFF3F3F3FFDBDBDBFFD2D2D2FFDBDBDBFF7F7F7FFFABABABFFDDDD
      DDFF8B8B8BFFC4C4C4FF8B8B8BEA838383F0D1D1D1FF8F8F8FFF4E4E4EFFACAC
      ACEAF0F0F0FFDEDEDEFFD4D4D4FFD2D2D2FFDBDBDBFF8A8A8AFFBDBDBDFFE4E4
      E4FF787878FFDEDEDEFF909090EA848484F5DEDEDEFFABABABFF686868FFAEAE
      AEEAF2F2F2FFE2E2E2FFD8D8D8FFD5D5D5FFDCDCDCFFD8D8D8FFA9A9A9FFCBCB
      CBFFA5A5A5FF737373FF7B7B7BFFADADADFFC4C4C4FF7B7B7B9EFFFFFF00B0B0
      B0EAF3F3F3FFE7E7E7FFDDDDDDFFD9D9D9FFE0E0E0FFDBDBDBFF919191FFCBCB
      CBFFB4B4B4FFD0D0D0FFD3D3D3FFADADADFFC7C7C7FF6C6C6CFF4949490AB2B2
      B2EAF4F4F4FFEAEAEAFFE1E1E1FFDDDDDDFFE3E3E3FFDEDEDEFFA6A6A6FF8F8F
      8FFFB5B5B5FFAEAEAEFFADADADFF858585427E7E7EE06F6F6F98FFFFFF00B4B4
      B4EAF5F5F5FFEEEEEEFFE6E6E6FFE2E2E2FFE6E6E6FFE1E1E1FFCDCDCDFFC2C2
      C2FFC2C2C2FF8C8C8CFF888888FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B5EAF6F6F6FFEBEBEBFFDEDEDEFFD6D6D6FFD5D5D5FFD1D1D1FFC3C3C3FFBCBC
      BCFFC0C0C0FFE5E5E5FFA3A3A3EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B7
      B7EAF7F7F7FFE7E7E7FFEFEFEFFFF6F6F6FFFBFBFBFFFAFAFAFFF0F0F0FFDEDE
      DEFFC3C3C3FFE6E6E6FFA5A5A5EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00B9B9
      B9EAF8F8F8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFFEAEAEAFFA7A7A7EAFFFFFF00FFFFFF00FFFFFF00FFFFFF00BABA
      BABFE1E1E1FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFFCFCFCFFFA9A9A9A1FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBC
      BC2ABBBBBBD1D0D0D0FFE8E8E8FFF3F3F3FFFDFDFDFFFCFCFCFFEDEDEDFFE0E0
      E0FFC2C2C2FFADADADC3ACACAC1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCBCBC07BBBBBB55BABABAAEB8B8B8D6B7B7B7FBB6B6B6F9B4B4B4CDB3B3
      B3A9B1B1B146AFAFAF03FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFCF
      0000F00100008000000000000000000000000000000000010000000000000001
      0000000F0000000F0000000F0000000F0000000F0000000F0000801F0000}
    PopupMenu = PopupTray
    Visible = True
    Left = 336
    Top = 416
  end
  object PopupTray: TPopupMenu
    Left = 376
    Top = 432
    object N5: TMenuItem
      Action = actHide
    end
    object N3: TMenuItem
      Action = actShow
    end
    object N4: TMenuItem
      Action = actClose
    end
  end
  object OraQuery: TOraQuery
    Session = OraSession1
    Left = 664
    Top = 336
  end
  object OraNewPass: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO X$USERS'
      '  (XU$PASSWORD, XU$FLAG)'
      'VALUES'
      '  (:XU$PASSWORD, :XU$FLAG)')
    SQLDelete.Strings = (
      'DELETE FROM X$USERS'
      'WHERE'
      
        '  XU$USEROFFICE = :Old_XU$USEROFFICE AND XU$LOGINNAME$UP = :Old_' +
        'XU$LOGINNAME$UP')
    SQLUpdate.Strings = (
      'UPDATE X$USERS'
      'SET'
      '  XU$PASSWORD = :XU$PASSWORD, XU$FLAG = :XU$FLAG'
      'WHERE'
      'XU$LOGINNAME$UP = :Old_XU$LOGINNAME$UP')
    SQLLock.Strings = (
      'SELECT * FROM X$USERS'
      'WHERE'
      
        '  XU$USEROFFICE = :Old_XU$USEROFFICE AND XU$LOGINNAME$UP = :Old_' +
        'XU$LOGINNAME$UP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT XU$PASSWORD, XU$FLAG FROM X$USERS'
      'WHERE'
      
        '  XU$USEROFFICE = :XU$USEROFFICE AND XU$LOGINNAME$UP = :XU$LOGIN' +
        'NAME$UP')
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      'XU$PASSWORD,'
      'XU$FLAG'
      'FROM X$USERS'
      'WHERE XU$LOGINNAME$UP = :users')
    Left = 816
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'users'
      end>
    object OraNewPassXUPASSWORD: TVarBytesField
      FieldName = 'XU$PASSWORD'
      Required = True
      Size = 21
    end
    object OraNewPassXUFLAG: TIntegerField
      FieldName = 'XU$FLAG'
      Required = True
    end
  end
  object QueryLDAP: TADOQuery
    ConnectionString = 
      'Provider=ADsDSOObject;Encrypt Password=False;Mode=Read;Bind Flag' +
      's=0;ADSI Flag=-2147483648'
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        '<LDAP://khmau-ldap/DC=KZ,DC=ENRC,DC=COM>;(&(objectCategory=perso' +
        'n)(objectClass=user)(samAccountName=Novikov_BK));samAccountName,' +
        ' mail;subtree')
    Left = 584
    Top = 256
    object QueryLDAPsamAccountName: TWideStringField
      FieldName = 'samAccountName'
      ReadOnly = True
      Size = 4000
    end
    object QueryLDAPmail: TWideStringField
      FieldName = 'mail'
      ReadOnly = True
      Size = 4000
    end
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Path = 'SOFTWARE\AZF_Soft\UserOra'
    Left = 216
    Top = 336
  end
  object PropStorageEh1: TPropStorageEh
    Section = 'MainForm'
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      
        'cxPageControl2.cxTabSheet2.cxPageControl3.cxTabSheet7.CheckMessa' +
        'ge.<P>.Checked'
      
        'cxPageControl2.cxTabSheet2.cxPageControl3.cxTabSheet7.MemoMessag' +
        'e.<P>.Lines'
      
        'cxPageControl2.cxTabSheet2.cxPageControl3.cxTabSheet8.CheckPass.' +
        '<P>.Checked'
      
        'cxPageControl2.cxTabSheet2.cxPageControl3.cxTabSheet8.CheckStrin' +
        'g.<P>.Checked'
      
        'cxPageControl2.cxTabSheet2.cxPageControl3.cxTabSheet8.EditString' +
        '.<P>.Text')
    Left = 519
    Top = 391
  end
  object ImgLstGrid: TImageList
    Left = 728
    Top = 136
    Bitmap = {
      494C01010500C801C80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D000000370000001EFEFE
      FE00FEFEFE00FEFEFE000000000D0000002000000001FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000050783031D27F512181ADE1107
      05830000000D0000000F191615AF1C2627E303030353FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000051625A91CA2E0FF0CB6DFFF1269
      76FF130905B90D0300B807909BFF1EC1DAFF1313167FFEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000200712197A0C576DD600C8
      EFFF008AA2FF0096ABFF00D8F5FF0F4551B825160A4A5B4D2D9B322A16780000
      0029FEFEFE00FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000210F6E
      97F01EDDFEFF11C7FAFF073543FD000000A3130C0729B6A279B0FEF9D8FFBBAC
      89E3251A0F52FEFEFE00FEFEFE00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000082655
      76E093E7FEFF6FC3FAFF4C98CDFF0F5995FF0000008A27160959F7EFE1FDFEFE
      FDFFDCC497EE3D2B137C24180760000000150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE00070C
      0F764C6D8CFE434C54FF70775FFF486970FFB1A072FBDFCD9EF6FAF3DDFEFEFA
      DFFFFEF9C3FFFEEB98FFF7E27BFF694D26850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE000000
      0060003843FE12716EFF7E7F43FFFEE56CFFFEF9A0FFFEFABBFFFEF5C2FFFEF3
      BBFFFEF0A7FFFEEF8BFFFEF377FFC89B80FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE000516
      27A340C6FEFF43EFFEFF227391FFEDC85CFFFEEF84FFFEED93FFFEEF99FFFEED
      96FFFEEC87FFFEE772FFFEDF66FFC89B80FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00FEFEFE000007
      0A47597796EC7799BAFF7E7B74FFF8D482FFFEE68BFFFEEB8EFFFEEC8EFFFEEA
      86FFFEE472FFFED45DFFFEC85BFFC89B80FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000000000
      000000000000D8A98AFFFEC696FFFED49FFFFEDA9DFFFEE09CFFFEE299FFFEE0
      96FFFED98EFFFEC879FFFEB159FFC89B80FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000000000
      000000000000C89B80FFFED1B8FFFED4B5FFFED7B3FFFED9B1FFFED9AEFFFED7
      A9FFFED1A4FFFEC99FFFFEC195FFC89B80FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000000000
      000000000000C89B80FFFEF7EFFFFEF0E4FFFEEFE1FFFEEFDDFFFEECD7FFFEE9
      D2FFFEE3CCFFFEDCC4FFFEE0CAFFC89B80FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FEFEFE00000000000000
      0000000000005F4C425AC89B80FFC89B80FFC89B80FFC89B80FFC89B80FFC89B
      80FFC89B80FFC89B80FFC89B80FF38261C360000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000716F7E0077777700777777007777770077777700716F7E000000
      00000000000000000000000000000000000000000000000000190000002C0000
      002A0000002A0000002A0000002A0000002A0000002A0000002A0000002A0000
      002A0000002C0000001D00000000FFFFFF00000000FFEAEAEAFFDADADAFFDCDC
      DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
      DCFFDADADAFFE7E7E7FFFFFFFFFF000000FF0000000000000000000000000000
      00000000000000000000338CC985449ED5E9398CCBE02466A456000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      770077777700574F8B00240DA400230DA300230DA200230DA100574F89007777
      7700777777000000000000000000000000000F303D5B246FC1FF246FC1FF246F
      C1FF246FC1FF246FC1FF246FC1FF246FC1FF246FC1FF246FC1FF246FC1FF246F
      C1FF246FC1FF246FC1FF163A4E71FFFFFF00B4BCC0FF000000FF246FC1FF246F
      C1FF246FC1FF246FC1FF246FC1FF246FC1FF246FC1FF246FC1FF246FC1FF246F
      C1FF246FC1FF246FC1FF000000FFFFFFFFFF0000000000000000000000000000
      0000000000000000000047ADE3C985E9F9FF4CD9F5FF3991CCF323609C5D0000
      0000000000000000000000000000000000000000000000000000777777005950
      9100270FB100250FAE00250FAC00250FAA00240FA700240DA500240DA400240D
      A400574F8A007777770000000000000000002F88CEF641C8FFFF3ECAFFFF39CE
      FFFF36D4FFFF38D8FFFF39DAFFFF38D8FFFF38D8FFFF36D4FFFF32CEFFFF33C7
      FFFF39C1FFFF3ABEFFFF308BD7FEFFFFFF00388CD0FF41C8FFFF000000FF39CE
      FFFF36D4FFFF38D8FFFF39DAFFFF38D8FFFF38D8FFFF36D4FFFF32CEFFFF33C7
      FFFF39C1FFFF000000FF318CD7FFFFFFFFFFA87050A9C28D67FFBF8A65FFBD87
      63FFBA8460FFB8825EFF5BA2C8FFA0E6F8FF37D2F2FF46D6F6FF3E92C8FF766A
      6EFFA17057FFA16F56FFA87050A9000000000000000000000000777777002910
      BE002910BD002910BD002910BA00280FB800280FB500270FB100250FAE00250F
      AD00250FAA00777777000000000000000000278DDFFF32B5FFFF2CB3FFFF2CB3
      FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3
      FFFF2CB3FFFF2DACFFFF268BE0FFFFFFFF00278DDFFF32B5FFFF2CB3FFFF0000
      00FF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3FFFF2CB3
      FFFF000000FF2DACFFFF268BE0FFFFFFFFFFC8916BFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB3DAF2FF5FB0E4FF98E2F6FF52DCF5FF45D9F6FF3F94
      CEFF468DD3FF478ED6FF7B6A6CFF000000000000000000000000777777005442
      CC005947CD005A49CE005846CD004C39CB003923C5002A10C1002910BD00280F
      B800280FB5007777770000000000000000002488DCFF2DAEFFFF24B0FFFF81CF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8BD2
      FFFF27ABFFFF2AA6FFFF2487E0FFFFFFFF002488DCFF2DAEFFFF24B0FFFF81CF
      FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF27ABFFFF2AA6FFFF2487E0FFFFFFFFFFCA936DFFFFFFFFFFFFFFFFFFFFFF
      FEFFFFFFFDFFFEFEFDFFFEFEFCFFD3E9F5FF6BBAE7FF66C0E8FF5DD9F2FF4DDB
      F6FF5ADDF7FF54D8F5FF317FC9FF1F57A1590000000000000000777680007B77
      A1008C80DC009187DD009288DD008C80DC007D71D700695AD1004F3DCB00331B
      C40059509500716F7C0000000000000000002484DAFF33A9FFFF2BABFFFFC8E8
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EC
      FFFF24A3FFFF259EFFFF2282E0FFFFFFFF002484DAFF33A9FFFF2BABFFFFC8E8
      FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFD4EC
      FFFF24A3FFFF259EFFFF2282E0FFFFFFFFFFCC966EFFFFFFFFFFFFFFFCFFFFFF
      FDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFF92C8E9FF88DDF4FF69E0
      F6FF72E2F7FF5EDFF6FF54DAF6FF377ECDF30000000000000000000000007878
      7A008D89A600B0A9E700B1AAE700ACA4E500A097E2009086DD007C70D7007069
      9D00767679000000000000000000000000002680DAFF43A7FFFF3DA8FFFFCCE7
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4EA
      FFFF1D98FFFF2095FFFF207DE0FFFFFFFF002680DAFF43A7FFFF3DA8FFFFCCE7
      FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFD4EA
      FFFF1D98FFFF2095FFFF207DE0FFFFFFFFFFD19B72FFFFFFFFFFFEFEFCFFFEFE
      FCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFDFAFFFDFDF8FF76BCE6FFA8EEF9FF7DE6
      F8FF99E8F8FF7DD1F0FF7FE2F6FF3E97D9F00000000000000000000000000000
      0000868594005B7B81005D838D006F7B7F006F7B7F005E828C005F7A80007977
      900000000000000000000000000000000000277CD9FF4EA5FFFF48A5FFFFD4EA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7EA
      FFFF138CFFFF1A8BFFFF1D78DFFFFFFFFF00277CD9FF4EA5FFFF48A5FFFFD4EA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFD7EA
      FFFF138CFFFF1A8BFFFF1D78DFFFFFFFFFFFD49D74FFFFFFFFFFFEFEFCFFFDFD
      FBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFA8D1EAFF5DC0EAFFA2F0
      FBFF7FD4F0FF7DC7ECFF53A0D8FF206DB5590000000000000000000000000000
      000000000000717B7E004A96AC0023A8CD0023A6CB004991A700717A7D000000
      0000000000000000000000000000000000002A7AD7FF59A4FFFF52A3FFFFA2C8
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAECE
      F6FF1E89FEFF0F7EFFFF1A74DFFFFFFFFF002A7AD7FF59A4FFFF52A3FFFFA2C8
      F6FFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFFFFFFFFFFAECE
      F6FF1E89FEFF0F7EFFFF1A74DFFFFFFFFFFFD59F75FFFFFFFFFFFDFDFCFFFDFD
      FBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9F5FFFBF8F4FFFBF7F3FF9EC9E7FF6EC9
      ECFFC9F3FBFF62BEE9FF8B7F7BFF000000000000000000000000000000000000
      0000688B95005496A9001BBAE6001AB6E0001AB1DA001AAED700538D9F006885
      8F00000000000000000000000000000000002C77D7FF65A5FFFF66A7FFFF549E
      FAFFB7D4FAFFFFFFFFFF5FA2F5FF60A2F4FF60A2F4FFFFFFFFFFD0E2FCFF68A6
      F9FF76AEFFFF2982FFFF156DDEFFFFFFFF002C77D7FF65A5FFFF66A7FFFF549E
      FAFFB7D4FAFFFFFFFFFF000000FF60A2F4FF60A2F4FF000000FFD0E2FCFF68A6
      F9FF76AEFFFF2982FFFF156DDEFFFFFFFFFFD8A178FFFFFFFFFFFDFDFAFFFCFC
      FAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4EEFFF5F1EBFF8CC0
      E1FF69B7E2FFACD6F1FFB6805DFF000000000000000000000000000000000000
      0000727B7F0024C6F3001EC9F8001DC5F3001DBFEC001BB9E4001FB3DB00737A
      7B00000000000000000000000000000000002F76D6FF72A7FFFF71A8FFFF6BA6
      FFFFC1DAFFFFFFFFFFFF72ABFFFF72ABFFFF72ABFFFFFFFFFFFFD8E6FFFF7DB0
      FFFF8AB5FFFF80ADFFFF206FDEFFFFFFFF002F76D6FF72A7FFFF71A8FFFF6BA6
      FFFFC1DAFFFF000000FF72ABFFFF72ABFFFF72ABFFFFFFFFFFFF000000FF7DB0
      FFFF8AB5FFFF80ADFFFF206FDEFFFFFFFFFFD9A278FFFFFFFFFFFCFBF9FFFCFB
      F8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EA
      E4FFF2E7DEFFFFFFFFFFB9845FFF000000000000000000000000000000000000
      0000757C7F005FD3F60060D9FD0054D7FD0033D0FD001DC8F70022BEEA00737A
      7C00000000000000000000000000000000003377D7FF7EABFFFF7BAAFFFF7AAA
      FFFF9ABDF9FFFFFFFEFFD5E4FFFFD1E2FFFFD1E2FFFFFFFFFFFFAEC9F8FF8BB3
      FFFF92B6FFFF9CBCFFFF4E8ADFFFFFFFFF003377D7FF7EABFFFF7BAAFFFF7AAA
      FFFF000000FFFFFFFEFFD5E4FFFFD1E2FFFFD1E2FFFFFFFFFFFFAEC9F8FF0000
      00FF92B6FFFF9CBCFFFF4E8ADFFFFFFFFFFFDBA379FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBC8662FF000000000000000000000000000000000000
      0000708F9A007FA4B10094E5FD008EE3FD0075DDFD004BD5FD00569BB0005D89
      9700000000000000000000000000000000003D7DD9FF8BB3FFFF88AFFFFF8BB2
      FFFF84ADFCFFA7C4F1FFFFFFFFFFFFFFFFFFFFFFFFFFB2CBF1FF8FB4FAFF9DBD
      FFFF9FBFFFFFA4C2FFFF6196E0FFFFFFFF003D7DD9FF8BB3FFFF88AFFFFF0000
      00FF84ADFCFFA7C4F1FFFFFFFFFFFFFFFFFFFFFFFFFFB2CBF1FF8FB4FAFF9DBD
      FFFF000000FFA4C2FFFF6196E0FFFFFFFFFFDCA67AFFDCA67AFFDCA67AFFDCA6
      7AFFDCA67AFFDCA67AFFDCA67AFFDCA67AFFDCA67AFFDCA67AFFDCA67AFFDCA6
      7AFFDCA67AFFDCA67AFFBF8A65FF000000000000000000000000000000000000
      0000000000007A7E80008DA9B100A3DDF10090D9F00075A3B100747D80000000
      000000000000000000000000000000000000508BDBFF97BAFFFF94B8FFFF97BA
      FFFF9ABBFFFF92B6FDFF89B0F7FF8BB2F6FF8BB2F6FF98BAFDFFA7C4FFFFA9C5
      FFFFABC7FFFFAEC8FFFF74A2E0FFFFFFFF00508BDBFF97BAFFFF000000FF97BA
      FFFF9ABBFFFF92B6FDFF89B0F7FF8BB2F6FF8BB2F6FF98BAFDFFA7C4FFFFA9C5
      FFFFABC7FFFF000000FF74A2E0FFFFFFFFFFDDAB84FDE8B891FFE8B891FFE8B8
      91FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B891FFE8B8
      91FFE8B891FFE8B891FFC08F6EFD000000000000000000000000000000000000
      000000000000000000007A929A007B8285007A828500708F9A00000000000000
      0000000000000000000000000000000000003D7DD9B3B6D4FFFFB8D4FFFFBAD5
      FFFFBCD6FFFFC0D9FFFFC4DCFFFFC8DEFFFFC8DEFFFFC8DFFFFFCBE0FFFFCEE2
      FFFFCFE3FFFFD9EBFFFF3D7DD9B3FFFFFF007DA6E4FF000000FFB8D4FFFFBAD5
      FFFFBCD6FFFFC0D9FFFFC4DCFFFFC8DEFFFFC8DEFFFFC8DFFFFFCBE0FFFFCEE2
      FFFFCFE3FFFFD9EBFFFF000000FFFFFFFFFFA870506BDDB08CF4DCA67AFFDCA5
      79FFDAA379FFD8A178FFD59F75FFD49D74FFD29C72FFCF9971FFCE986FFFCB95
      6EFFC9936BFFC39979F4A870506B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000043D7DD9B33D7DD9B33D7D
      D9B33D7DD9B33D7DD9B33D7DD9B33D7DD9B33D7DD9B33D7DD9B33D7DD9B33D7D
      D9B33D7DD9B33D7DD9B3FFFFFF00FFFFFF00000000FF7DA6E4FF7DA6E4FF7DA6
      E4FF7DA6E4FF7DA6E4FF7DA6E4FF7DA6E4FF7DA6E4FF7DA6E4FF7DA6E4FF7DA6
      E4FF7DA6E4FF7DA6E4FFFFFFFFFF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000380000000000000038000000000000003800000000000000
      3800000000000000FFFF000000000000F81F80020000FC3FE00700000000FC1F
      C003000000000001C003000000000001C003000000000000C003000000000000
      E007000000000000F00F000000000000F81F000000000001F00F000000000001
      F00F000000000001F00F000000000001F00F000000000001F81F000000000001
      FC3F000000000001FFFF00000000FFFF00000000000000000000000000000000
      000000000000}
  end
end
