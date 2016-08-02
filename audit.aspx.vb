Imports eZet.EveLib.Core
Imports eZet.EveLib.StaticDataModule
Imports eZet.EveLib.EveXmlModule
Imports System.Data

Partial Class Audit
    Inherits System.Web.UI.Page

    Dim keyID As Long
    Dim vCode As String
    Dim selectedcID As Long

    Private Sub Audit_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then


                Me.keyID = Request.QueryString("keyID")
                Me.vCode = Request.QueryString("vCode")
                Me.selectedcID = Request.QueryString("selectedcID")

                labelKeyID.Text = Me.keyID
                labelvCode.Text = Me.vCode

                ' Creates the ApiKey object and a counter to tell how many are in the array
                Dim userAPIKey As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
                Dim userCharKey As New CharacterKey(keyID, vCode)
                Dim eveModule As New eZet.EveLib.EveXmlModule.Eve
                Dim staticData As New eZet.EveLib.StaticDataModule.EveStaticData
                Dim charCount As Integer = userAPIKey.GetCharacterList.Result.Characters.Count

                ' Add background-color to the selected character if there is one and display panel(s), else hide panels and be plain
                If selectedcID = "50" Then
                    auditPanel.Visible = False
                ElseIf selectedcID = "0" Then
                    auditPanel.Visible = False

                ElseIf selectedcID = userAPIKey.GetCharacterList.Result.Characters(0).CharacterId.ToString Then
                    selectChar0Block.Attributes("class") = "thumbnail characterSelected"
                    auditPanel.Visible = True

                ElseIf selectedcID = userAPIKey.GetCharacterList.Result.Characters(1).CharacterId.ToString Then
                    selectChar1Block.Attributes("class") = "thumbnail characterSelected"
                    auditPanel.Visible = True

                ElseIf selectedcID = userAPIKey.GetCharacterList.Result.Characters(2).CharacterId.ToString Then
                    selectChar2Block.Attributes("class") = "thumbnail characterSelected"
                    auditPanel.Visible = True
                Else
                    auditPanel.Visible = False
                    charSelectPanel.Visible = False
                    errorPanel.Visible = True

                End If



                ' ------------------------------------------------------------------------------------------------------------------------------------

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
                    Dim lastShip As String = charObject.GetCharacterInfo.Result.ShipTypeName
                    Dim lastShipName As String = charObject.GetCharacterInfo.Result.ShipName
                    Dim lastLocation As String = charObject.GetCharacterInfo.Result.LastKnownLocation
                    Dim charCorp As String = charObject.GetCharacterInfo.Result.CorporationName
                    Dim charAlliance As String = charObject.GetCharacterInfo.Result.AllianceName

                    'Corp/Alliance names
                    corporationName0.Text = charCorp
                    If charAlliance Is Nothing Then
                    Else
                        allianceName0.Visible = True
                        allianceName0.Text = charAlliance
                    End If

                    'Area for applying character information variables to the frontend asp objects
                    charName0.Text = name
                    Portrait0.ImageUrl() = p
                    skillPoints0.Text = sp.ToString("N0") 'This formats the SP to look pretty
                    walletISK0.Text = isk.ToString("N0")
                    lastSeenShip0.Text = lastShip
                    lastSeenShipName0.Text = " (" + lastShipName + ")"

                    ' Copes with CCP fucking up citadels in wormhole space in their API
                    If lastLocation = "" Then
                        lastSeenLocation0.Text = "a wormhole citadel"
                    Else
                        lastSeenLocation0.Text = lastLocation
                    End If

                    ' Current skill trianing, requires more than other details in order to avoid nulls
                    Dim currentSkillID As Integer = charObject.GetSkillTraining.Result.TypeId
                    If currentSkillID > 0 Then
                        Dim currentSkillName As String = staticData.GetInvType(currentSkillID).Name
                        Dim currentSkillLevel As String = charObject.GetSkillTraining.Result.ToLevel.ToString
                        skillTraining0.Text = currentSkillName + " to level " + currentSkillLevel
                    Else
                        skillTraining0.Text = "No skill training"
                    End If


                Else
                    panelC0.Visible = False
                End If


                ' ------------------------------------------------------------------------------------------------------------------------------------


                If charCount >= 2 Then

                    Dim longCharID As Long = userAPIKey.GetCharacterList.Result.Characters(1).CharacterId
                    Dim charObject As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID.ToString)

                    Dim cID As String = longCharID.ToString
                    Dim p As String = "https://image.eveonline.com/Character/" + cID + "_512.jpg"

                    Dim name As String = userAPIKey.GetCharacterList.Result.Characters(1).CharacterName
                    Dim sp As Integer = charObject.GetCharacterInfo.Result.SkillPoints
                    Dim isk As Long = charObject.GetCharacterInfo.Result.AccountBalance
                    Dim lastShip As String = charObject.GetCharacterInfo.Result.ShipTypeName
                    Dim lastShipName As String = charObject.GetCharacterInfo.Result.ShipName
                    Dim lastLocation As String = charObject.GetCharacterInfo.Result.LastKnownLocation
                    Dim charCorp As String = charObject.GetCharacterInfo.Result.CorporationName
                    Dim charAlliance As String = charObject.GetCharacterInfo.Result.AllianceName
                    Dim tester123 As String = charObject.GetCharacterInfo.Result.EmploymentHistory.Item(0).CorporationName

                    corporationName1.Text = charCorp
                    If charAlliance Is Nothing Then
                    Else
                        allianceName1.Visible = True
                        allianceName1.Text = charAlliance
                    End If

                    charName1.Text = name
                    Portrait1.ImageUrl() = p
                    skillPoints1.Text = sp.ToString("N0")
                    walletISK1.Text = isk.ToString("N0")
                    lastSeenShip1.Text = lastShip
                    lastSeenShipName1.Text = " (" + lastShipName + ")"

                    If lastLocation Is Nothing Then
                        lastSeenLocation1.Text = "a wormhole citadel"
                    Else
                        lastSeenLocation1.Text = lastLocation
                    End If

                    Dim currentSkillID As Integer = charObject.GetSkillTraining.Result.TypeId
                    If currentSkillID > 0 Then
                        Dim currentSkillName As String = staticData.GetInvType(currentSkillID).Name
                        Dim currentSkillLevel As String = charObject.GetSkillTraining.Result.ToLevel.ToString
                        skillTraining1.Text = currentSkillName + " to level " + currentSkillLevel
                    Else
                        skillTraining1.Text = "No skill training"
                    End If

                Else
                    panelC1.Visible = False
                End If


                ' ------------------------------------------------------------------------------------------------------------------------------------


                If charCount >= 3 Then

                    Dim longCharID As Long = userAPIKey.GetCharacterList.Result.Characters(2).CharacterId
                    Dim charObject As New eZet.EveLib.EveXmlModule.Character(userCharKey, longCharID.ToString)

                    Dim cID As String = longCharID.ToString
                    Dim p As String = "https://image.eveonline.com/Character/" + cID + "_512.jpg"

                    Dim name As String = userAPIKey.GetCharacterList.Result.Characters(2).CharacterName
                    Dim sp As Integer = charObject.GetCharacterInfo.Result.SkillPoints
                    Dim isk As Long = charObject.GetCharacterInfo.Result.AccountBalance
                    Dim lastShip As String = charObject.GetCharacterInfo.Result.ShipTypeName
                    Dim lastShipName As String = charObject.GetCharacterInfo.Result.ShipName
                    Dim lastLocation As String = charObject.GetCharacterInfo.Result.LastKnownLocation
                    Dim charCorp As String = charObject.GetCharacterInfo.Result.CorporationName
                    Dim charAlliance As String = charObject.GetCharacterInfo.Result.AllianceName

                    corporationName2.Text = charCorp
                    If charAlliance Is Nothing Then
                    Else
                        allianceName2.Visible = True
                        allianceName2.Text = charAlliance
                    End If

                    charName2.Text = name
                    Portrait2.ImageUrl() = p
                    skillPoints2.Text = sp.ToString("N0")
                    walletISK2.Text = isk.ToString("N0")
                    lastSeenShip2.Text = lastShip
                    lastSeenShipName2.Text = " (" + lastShipName + ")"

                    If lastLocation Is Nothing Then
                        lastSeenLocation2.Text = "a wormhole citadel"
                    Else
                        lastSeenLocation2.Text = lastLocation
                    End If

                    Dim currentSkillID As Integer = charObject.GetSkillTraining.Result.TypeId
                    If currentSkillID > 0 Then
                        Dim currentSkillName As String = staticData.GetInvType(currentSkillID).Name
                        Dim currentSkillLevel As String = charObject.GetSkillTraining.Result.ToLevel.ToString
                        skillTraining2.Text = currentSkillName + " to level " + currentSkillLevel
                    Else
                        skillTraining2.Text = "No skill training"
                    End If

                Else
                    panelC2.Visible = False
                End If

                ' ------------------------------------------------------------------------------------------------------------------------------------

                ' Key and Account Expiry
                Dim keyExpiry As Date = userAPIKey.ExpiryDate.Date
                keyExpiryLabel.Text = keyExpiry.Date

                Dim accountStarted As String = userCharKey.GetAccountStatus.Result.CreationDateAsString
                accountStartedLabel.Text = accountStarted

                Dim accountPaidUntil As String = userCharKey.GetAccountStatus.Result.PaidUntilAsString
                accountExpiryLabel.Text = accountPaidUntil

                ' Logon count and minutes
                Dim accountLogonCount As Integer = userCharKey.GetAccountStatus.Result.LogonCount
                logonCountLabel.Text = accountLogonCount

                Dim accountLogonTime As New TimeSpan(0, userCharKey.GetAccountStatus.Result.LogonMinutes, 0)
                logonTimeLabel.Text = Math.Round(accountLogonTime.TotalDays).ToString + " days"

                Dim t As Integer = userCharKey.GetAccountStatus.Result.LogonMinutes / accountLogonCount
                Dim accountLogonAverage As New TimeSpan(0, t, 0)
                logonTimeAverageLabel.Text = Math.Round(accountLogonAverage.Hours).ToString + " hours " + Math.Round(accountLogonAverage.Minutes).ToString + " minutes"

                ' ------------------------------------------------------------------------------------------------------------------------------------

                If selectedcID = "50" Then
                ElseIf selectedcID = "0" Then
                Else

                    Me.keyID = Request.QueryString("keyID")
                    Me.vCode = Request.QueryString("vCode")
                    Me.selectedcID = Request.QueryString("selectedcID")

                    historyPanel.Visible = True

                    gridviewHistoryTable.DataSource = getCorpHistory(keyID, vCode, selectedcID)
                    gridviewHistoryTable.DataBind()

                    Dim longCharID As Long = userAPIKey.GetCharacterList.Result.Characters(0).CharacterId
                    Dim charObject As New Character(userCharKey, longCharID.ToString)



                End If

            End If

        Catch ex As Exception
            Console.Write(ex)

            charSelectPanel.Visible = False

            errorPanel.Visible = True

        End Try

        ' ------------------------------------------------------------------------------------------------------------------------------------


    End Sub

    Private Sub btnSelect0_Click(sender As Object, e As EventArgs) Handles btnSelect0.Click

        Me.keyID = Request.QueryString("keyID")
        Me.vCode = Request.QueryString("vCode")

        Dim userAPIKey As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
        Dim cID As Long = userAPIKey.GetCharacterList.Result.Characters(0).CharacterId

        Response.Redirect("Audit.aspx?keyID=" + keyID.ToString + "&vCode=" + vCode + "&selectedcID=" + cID.ToString)

    End Sub

    Private Sub btnSelect1_Click(sender As Object, e As EventArgs) Handles btnSelect1.Click

        Me.keyID = Request.QueryString("keyID")
        Me.vCode = Request.QueryString("vCode")

        Dim userAPIKey As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
        Dim cID As Long = userAPIKey.GetCharacterList.Result.Characters(1).CharacterId

        Response.Redirect("Audit.aspx?keyID=" + keyID.ToString + "&vCode=" + vCode + "&selectedcID=" + cID.ToString)

    End Sub

    Private Sub btnSelect2_Click(sender As Object, e As EventArgs) Handles btnSelect2.Click

        Me.keyID = Request.QueryString("keyID")
        Me.vCode = Request.QueryString("vCode")

        Dim userAPIKey As New eZet.EveLib.EveXmlModule.ApiKey(keyID, vCode)
        Dim cID As Long = userAPIKey.GetCharacterList.Result.Characters(2).CharacterId

        Response.Redirect("Audit.aspx?keyID=" + keyID.ToString + "&vCode=" + vCode + "&selectedcID=" + cID.ToString)

    End Sub

    Private Sub buttonResubmit_Click(sender As Object, e As EventArgs) Handles buttonResubmit.Click

        Dim keyID As String = keyIDErrorBox.Text
        Dim vCode As String = vCodeErrorBox.Text
        Response.Redirect("Audit.aspx?keyID=" + keyID + "&vcode=" + vCode + "&selectedcID=50")


    End Sub

    Public Function getCorpHistory(ByVal fKeyID As Long, ByVal fVCode As String, fCharacterID As Long) As DataTable

        Dim historyTable As New DataTable()
        Dim charObject As New Character(fKeyID, fVCode, fCharacterID)

        historyTable.Columns.Add("CorporationID")
        historyTable.Columns.Add("CorporationName")
        historyTable.Columns.Add("RecordID")
        historyTable.Columns.Add("StartDate")
        historyTable.Columns.Add("StarDateAsString")

        For Each corp In charObject.GetCharacterInfo.Result.EmploymentHistory
            Dim row As DataRow
            row = historyTable.NewRow()
            row.Item(0) = corp.CorporationId
            row.Item(1) = corp.CorporationName
            row.Item(2) = corp.RecordId
            row.Item(3) = corp.StartDate
            row.Item(4) = corp.StartDateAsString
        Next

        Return historyTable

    End Function

End Class
