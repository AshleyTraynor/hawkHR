
Partial Class _Default
    Inherits Page

    Private Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click

        Dim keyID As String = txtKeyID.Text
        Dim vCode As String = txtvCode.Text

        Response.Redirect("APIlanding.aspx?keyID=" + keyID + "vcode=" + vCode)

    End Sub

End Class