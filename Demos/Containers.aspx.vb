﻿
Partial Class Demos_Default
    Inherits System.Web.UI.Page

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs)
        Panel1.Visible = CheckBox1.Checked
    End Sub
    Protected Sub Wizard1_FinishButtonClick(sender As Object, e As WizardNavigationEventArgs) Handles Wizard1.FinishButtonClick
        Result.Text = "Your name is " & YourName.Text
        Result.Text &= "<br />Your favorite language is " & FavouriteLanguage.SelectedValue
    End Sub
End Class