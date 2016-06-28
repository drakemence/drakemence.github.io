<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ListControls.aspx.vb" Inherits="Demos_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
            <asp:ListItem>Harry</asp:ListItem>
            <asp:ListItem>Ron</asp:ListItem>
            <asp:ListItem>Hermione</asp:ListItem>
            <asp:ListItem>Ginny</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
