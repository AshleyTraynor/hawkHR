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

            With cmd
                .Connection = conn
                .CommandText = "[Birdy].[getAccountTypeName]"
                .CommandType = CommandType.StoredProcedure
                .Parameters.Add("@AccountTypeID", Data.SqlDbType.TinyInt).Value = AccountTypeID
                .Parameters.Add("@AccountTypeName", Data.SqlDbType.VarChar, 30).Direction = ParameterDirection.Output
            End With

            Try
                If conn.State = ConnectionState.Closed Then
                    System.Diagnostics.Debug.WriteLine("open conn")
                    conn.Open()
                End If

                System.Diagnostics.Debug.WriteLine("Executing getAccountTypeName Stored Procedure")
                cmd.ExecuteNonQuery()
                AccountTypeName = cmd.Parameters("@AccountTypeName").Value
            Catch ex As Exception
                Diagnostics.Debug.WriteLine(ex.Message)
            Finally
                cmd.Dispose()
                If closeConn Then
                    System.Diagnostics.Debug.WriteLine("close conn")
                    conn.Close()
                    conn.Dispose()
                End If
            End Try

            Return AccountTypeName

        End Function

    End Module

End Namespace