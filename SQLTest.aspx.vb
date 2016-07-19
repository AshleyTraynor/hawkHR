
Partial Class SQLTest
    Inherits System.Web.UI.Page

    Private Sub Button_Click(sender As Object, e As EventArgs) Handles Button.Click

        Dim Name As String = HAWK.SQL.getAccountTypeName(textbox.Text)

        Label1.Text = Name

    End Sub

End Class
