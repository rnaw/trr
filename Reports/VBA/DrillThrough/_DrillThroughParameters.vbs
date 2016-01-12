Private Sub Worksheet_Change(ByVal Target As Range)

    currentQueue = currentQueue + 1
    If Not Intersect(Target, Me.Range("B5")) Is Nothing Then Activator (currentQueue)

End Sub