
Partial Class APIlanding
    Inherits System.Web.UI.Page

    Dim keyID As String
    Dim vCode As String

    Private Sub APIlanding_Load(sender As Object, e As EventArgs) Handles Me.Load

        Me.keyID = Request.QueryString("keyID")
        Me.vCode = Request.QueryString("vCode")

        labelKeyID.Text = Me.keyID
        labelvCode.Text = Me.vCode

    End Sub

End Class
