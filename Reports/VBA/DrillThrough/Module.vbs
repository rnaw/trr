Public currentQueue As Integer

Sub Activator(ByVal queue As Integer)

    delay = 3
    reportCode = ThisWorkbook.Sheets("_DrillThroughParameters").Range("B5").Value
    promptFilters = Replace(Replace(ThisWorkbook.Sheets("_DrillThroughParameters").Range("C5").Value, "(", "{"), ")", "}")
    
    waitTime = TimeSerial(0, 0, delay)
    
    If queue = currentQueue Then
        If Trim(reportCode) <> "" Then
            currentQueue = 0
            Call DrillThrough(reportCode, promptFilters)
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