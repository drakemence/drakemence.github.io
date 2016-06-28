<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ControlsDemo.aspx.vb" Inherits="Demos_ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Result" runat="server"></asp:Label>
        <br />
        Your Name
        <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
