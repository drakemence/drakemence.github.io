Imports System.Net.Mail
Imports System.dll
Partial Class Demos_Email
    Inherits System.Web.UI.Page

    Private Sub Demos_Email_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim myMessage As MailMessage = New MailMessage()
        myMessage.Subject = "Test Message"
        myMessage.Body = "Hello world, from Planet Wrox"
        myMessage.From = New MailAddress("mitbambrose@gmail.com", "Sender Name")
        myMessage.To.Add(New MailAddress("mitbambrose@gmail.com", "Receiver Name"))
        Dim mySmtpClient As SmtpClient = New SmtpClient()
        mySmtpClient.Send(myMessage)
    End Sub
End Class
