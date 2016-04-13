Public currentQueue As Integer

Sub Activator(ByVal queue As Integer)

    delay = 3
    reportCode = ThisWorkbook.Sheets("_DrillThroughParameters").Range("B5").Value
    promptFilters = Replace(Replace(ThisWorkbook.Sheets("_DrillThroughParameters").Range("C5").Value, "(", "{"), ")", "}")
    
    waitTime = TimeSerial(0, 0, delay)
    
    If queue = currentQueue Then
        If Trim(reportCode) <> "" Then
            Dim instruments As Range, cell As Range
            currentQueue = 0
            Set instruments = Range(ThisWorkbook.Sheets("_DrillThroughParameters").Range("B5"), ThisWorkbook.Sheets("_DrillThroughParameters").Range("B5").End(xlDown))
            For Each cell In instruments
                reportCode = cell.Value
                Call DrillThrough(reportCode, promptFilters)
            Next cell
        Else
            Application.OnTime Now() + waitTime, "'Activator " & queue & "'"
        End If
    End If

End Sub

Sub DrillThrough(ByVal reportCode As String, ByVal promptFilters As String)
    
    Dim wb As Workbook
    Set wb = Application.Run("Tgkrmacro.xlam!TGK_Navigate", reportCode, , promptFilters)

End Sub

Sub TGK_AfterRun(reportCode As String, processCode As String)

    If ThisWorkbook.Sheets("_DrillThroughParameters").Visible = xlSheetVisible Then
        ThisWorkbook.Sheets("_DrillThroughParameters").Visible = xlSheetVeryHidden
    End If

End Sub
