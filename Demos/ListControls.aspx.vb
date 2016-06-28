
Partial Class Demos_Default
    Inherits System.Web.UI.Page

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Label1.Text = "In the DDL you selected " &
DropDownList1.SelectedValue & "<br />"

    End Sub
End Class
