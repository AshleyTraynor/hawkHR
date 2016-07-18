Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Imports System.Runtime.Serialization.Formatters.Binary
Imports System.IO.Compression

Namespace HAWK

    Public Module SQL

        Public Function getHawkConnection() As SqlConnection
            Return New SqlConnection(ConfigurationManager.ConnectionStrings("hawkHRConnection").ConnectionString)
        End Function

        Public Function getAccountTypeName(ByVal AccountTypeID As Integer, Optional ByRef conn As SqlConnection = Nothing, Optional closeConn As Boolean = True) As String

            Dim AccountTypeName As String

            If conn Is Nothing Then
                conn = getHawkConnection()
            End If

            Dim cmd As New SqlCommand
            Dim rdr As SqlDataReader

            With cmd
                .Connection = conn
                .CommandText =
                .CommandType =
                .Parameters.Add("@AccountTypeID", Data.SqlDbType.TinyInt).Value = AccountTypeID
            End With

            If conn.State = ConnectionState.Closed Then

            End If


        End Function

    End Module

End Namespace