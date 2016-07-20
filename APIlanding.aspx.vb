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

        Dim userAPIKey As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
        'Dim cheese As New eZet.EveLib.EveXmlModule.Character(testeve, testeve.GetCharacterList.Result.Characters(0).CharacterId.ToString)
        Dim charCount As Integer = userAPIKey.GetCharacterList.Result.Characters.Count


        If charCount >= 1 Then
            Dim c0 As String = userAPIKey.GetCharacterList.Result.Characters(0).CharacterId.ToString
            Dim p0 As String = "https://image.eveonline.com/Character/" + c0 + "_512.jpg"
            Portrait0.ImageUrl() = p0
        Else
            panelC0.Visible = False
        End If

        If charCount >= 2 Then
            Dim c1 As String = userAPIKey.GetCharacterList.Result.Characters(1).CharacterId.ToString
            Dim p1 As String = "https://image.eveonline.com/Character/" + c1 + "_512.jpg"
            Portrait1.ImageUrl() = p1
        Else
            panelC1.Visible = False
        End If

        If charCount >= 3 Then
            Dim c2 As String = userAPIKey.GetCharacterList.Result.Characters(2).CharacterId.ToString
            Dim p2 As String = "https://image.eveonline.com/Character/" + c2 + "_512.jpg"
            Portrait2.ImageUrl() = p2
        Else
            panelC2.Visible = False
        End If

    End Sub

End Class
