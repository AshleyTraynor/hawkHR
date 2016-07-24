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

        ' Creates the ApiKey object and a counter to tell how many are in the array
        Dim userAPIKey As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
        Dim userCharKey As New CharacterKey(keyID, vCode)
        Dim charCount As Integer = userAPIKey.GetCharacterList.Result.Characters.Count



        If charCount >= 1 Then

            ' Creates the character object for pulling individual character data
            Dim longCharID As Long = userAPIKey.GetCharacterList.Result.Characters(0).CharacterId
            Dim charObject As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID.ToString)

            ' Portrait specific CharacterID
            Dim cID As String = longCharID.ToString
            Dim p As String = "https://image.eveonline.com/Character/" + cID + "_512.jpg"

            ' Area for setting up character information variables
            Dim name As String = userAPIKey.GetCharacterList.Result.Characters(0).CharacterName
            Dim sp As Integer = charObject.GetCharacterInfo.Result.SkillPoints
            Dim isk As Long = charObject.GetCharacterInfo.Result.AccountBalance

            'Area for applying character information variables to the frontend asp objects
            charName0.Text = name
            Portrait0.ImageUrl() = p
            skillPoints0.Text = sp.ToString("N0") 'This formats the SP to look pretty
            walletISK0.Text = isk.ToString("N0")

        Else
            panelC0.Visible = False
        End If



        If charCount >= 2 Then

            Dim longCharID As Long = userAPIKey.GetCharacterList.Result.Characters(1).CharacterId
            Dim charObject As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID.ToString)

            Dim cID As String = longCharID.ToString
            Dim p As String = "https://image.eveonline.com/Character/" + cID + "_512.jpg"

            Dim name As String = userAPIKey.GetCharacterList.Result.Characters(1).CharacterName
            Dim sp As Integer = charObject.GetCharacterInfo.Result.SkillPoints
            Dim isk As Long = charObject.GetCharacterInfo.Result.AccountBalance

            charName1.Text = name
            Portrait1.ImageUrl() = p
            skillPoints1.Text = sp.ToString("N0")
            walletISK1.Text = isk.ToString("N0")

        Else
            panelC1.Visible = False
        End If



        If charCount >= 3 Then

            Dim longCharID As Long = userAPIKey.GetCharacterList.Result.Characters(2).CharacterId
            Dim charObject As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID.ToString)

            Dim cID As String = longCharID.ToString
            Dim p As String = "https://image.eveonline.com/Character/" + cID + "_512.jpg"

            Dim name As String = userAPIKey.GetCharacterList.Result.Characters(2).CharacterName
            Dim sp As Integer = charObject.GetCharacterInfo.Result.SkillPoints
            Dim isk As Long = charObject.GetCharacterInfo.Result.AccountBalance

            charName2.Text = name
            Portrait2.ImageUrl() = p
            skillPoints2.Text = sp.ToString("N0")
            walletISK2.Text = isk.ToString("N0")

        Else
            panelC2.Visible = False
        End If

    End Sub

End Class
