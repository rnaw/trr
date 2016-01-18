Private Sub DoSubtotals()

    Dim wsCount As Integer
    Dim totalListColumns() As Variant
    
    Dim i As Integer
    wsCount = ActiveWorkbook.Worksheets.Count
    
    For i = 1 To wsCount
    
        Select Case Worksheets(i).Name
        
            Case "CASH"
                totalListColumns = Array(18, 19)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:BK5"), 62, totalListColumns)
                
            Case "LOANS"
                totalListColumns = Array(15, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 154, 155, 156, 158)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:GM5"), 194, totalListColumns)
                
            Case "SECURITIES"
                totalListColumns = Array(19, 20, 22, 23, 24, 25, 26)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:DM5"), 116, totalListColumns)
                
            Case "OFF BALANCE-SHEET"
                totalListColumns = Array(18, 20, 23, 24, 31, 32, 33, 36, 37, 38, 39, 40, 43, 45, 47, 50, 51, 52, 53, 54, 55)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:CY5"), 102, totalListColumns)
                
            Case "DERIVATIVES"
                totalListColumns = Array(13, 14, 15, 16, 17, 18, 19, 22, 23, 24, 25, 26, 27, 28, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 49, 51, 58, 59, 60, 84, 85, 86, 88, 89, 90)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:EL5"), 141, totalListColumns)
            
            Case "BORROWINGS"
                totalListColumns = Array(19, 21, 29, 30, 31, 32, 33, 34)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:CC5"), 80, totalListColumns)
            
            Case "OREO"
                totalListColumns = Array(28, 29, 31, 32, 33, 34, 36, 38, 39, 41, 42, 47)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:CN5"), 91, totalListColumns)
            
            Case "GL"
                totalListColumns = Array(21, 23)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:Y5"), 24, totalListColumns)
                
            Case "Manual Entries"
                totalListColumns = Array(21, 23)
                Call subTotalize(Worksheets(i), Worksheets(i).range("B5:Y5"), 24, totalListColumns)
                
        End Select
    
    Next i

End Sub

Public Sub subTotalize(activeWorkSheet As Worksheet, subTotalsRange As range, groupByColumn As Integer, totalListColumns() As Variant)

    activeWorkSheet.Activate
    If Trim(ActiveSheet.range("B6").Value) <> "" Then
    
        subTotalsRange.Select
        ActiveSheet.range(Selection, Selection.End(xlDown)).Select
        Selection.Subtotal GroupBy:=groupByColumn, Function:=xlSum, totalList:=totalListColumns() _
            , Replace:=True, PageBreaks:=True, SummaryBelowData:=True
        activeWorkSheet.Activate
    
    Else
        
        If activeWorkSheet.Visible = xlSheetVisible Then
            activeWorkSheet.Visible = xlSheetVeryHidden
        End If
    
    End If
    
End Sub


Public Sub TGK_AfterRun(reportCode As String, processCode As String)

    Call DoSubtotals

End Sub