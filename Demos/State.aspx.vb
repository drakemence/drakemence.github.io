﻿
Partial Class Demos_State
    Inherits System.Web.UI.Page

    Protected Sub SetDate_Click(sender As Object, e As EventArgs) Handles SetDate.Click
        Label1.Text = DateTime.Now.ToString()
    End Sub
End Class
