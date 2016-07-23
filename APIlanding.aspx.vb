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
            Dim longCharID0 As Long = userAPIKey.GetCharacterList.Result.Characters(0).CharacterId
            Dim charObject0 As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID0.ToString)

            ' Portrait specific CharacterID
            Dim cID0 As String = longCharID0.ToString
            Dim p0 As String = "https://image.eveonline.com/Character/" + cID0 + "_512.jpg"

            ' Area for setting up character information variables
            Dim name0 As String = userAPIKey.GetCharacterList.Result.Characters(0).CharacterName
            Dim sp0 As Integer = charObject0.GetCharacterInfo.Result.SkillPoints

            'Area for applying character information variables to the frontend asp objects
            charName0.Text = name0
            Portrait0.ImageUrl() = p0
            skillPoints0.Text = sp0.ToString("N0") 'This formats the SP to look pretty

        Else
            panelC0.Visible = False
        End If



        If charCount >= 2 Then

            Dim longCharID1 As Long = userAPIKey.GetCharacterList.Result.Characters(1).CharacterId
            Dim charObject1 As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID1.ToString)

            Dim cID1 As String = longCharID1.ToString
            Dim p1 As String = "https://image.eveonline.com/Character/" + cID1 + "_512.jpg"

            Dim name1 As String = userAPIKey.GetCharacterList.Result.Characters(1).CharacterName
            Dim sp1 As Integer = charObject1.GetCharacterInfo.Result.SkillPoints

            charName1.Text = name1
            Portrait1.ImageUrl() = p1
            skillPoints1.Text = sp1.ToString("N0")

        Else
            panelC1.Visible = False
        End If



        If charCount >= 3 Then

            Dim longCharID2 As Long = userAPIKey.GetCharacterList.Result.Characters(2).CharacterId
            Dim charObject2 As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID2.ToString)

            Dim cID2 As String = longCharID2.ToString
            Dim p2 As String = "https://image.eveonline.com/Character/" + cID2 + "_512.jpg"

            Dim name2 As String = userAPIKey.GetCharacterList.Result.Characters(2).CharacterName
            Dim sp2 As Integer = charObject2.GetCharacterInfo.Result.SkillPoints

            charName2.Text = name2
            Portrait2.ImageUrl() = p2
            skillPoints2.Text = sp2.ToString("N0")

        Else
            panelC2.Visible = False
        End If

    End Sub

End Class
