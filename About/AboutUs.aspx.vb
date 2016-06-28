
Partial Class About_AboutUs
    Inherits System.Web.UI.Page

    Private Sub About_AboutUs_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Banner2.NavigateUrl = "http://imar.spaanjaars.com"
        End If
    End Sub
End Class
