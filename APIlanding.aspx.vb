Imports eZet.EveLib.Core
Imports eZet.EveLib.EveXmlModule

Partial Class APIlanding
    Inherits System.Web.UI.Page

    Dim keyID As Long
    Dim vCode As String



    Private Sub APIlanding_Load(sender As Object, e As EventArgs) Handles Me.Load

        Me.keyID = Request.QueryString("keyID")
        Me.vCode = Request.QueryString("vCode")

        labelKeyID.Text = Me.keyID
        labelvCode.Text = Me.vCode

    End Sub

    Private Sub ButtonSubmit_Click(sender As Object, e As EventArgs) Handles ButtonSubmit.Click

        Dim testeve As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
        Dim cheese As New eZet.EveLib.EveXmlModule.Character(testeve, testeve.GetCharacterList.Result.Characters(0).CharacterId.ToString)



        textboxCharacters.Text = cheese.GetAccountBalance.Result.Accounts(0).Balance.ToString



        'listboxCharacters


    End Sub

End Class
