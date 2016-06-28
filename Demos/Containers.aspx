<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Containers.aspx.vb" Inherits="Demos_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Text="Show Panel" OnCheckedChanged="CheckBox1_CheckedChanged" />
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style1" Visible="False" Width="645px" BackColor="#FF9900" BorderColor="#FF33CC" BorderStyle="Ridge" HorizontalAlign="Center">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" Width="609px">
                <SideBarStyle BackColor="#CCFF33" />
                <WizardSteps>
                    <asp:WizardStep runat="server" title="About You">
                        Your Name&nbsp;&nbsp;
                        <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Fave Char" StepType="Finish">
                        Fave Character
                        <asp:DropDownList ID="FavouriteLanguage" runat="server">
                            <asp:ListItem>Harry</asp:ListItem>
                            <asp:ListItem>Ron</asp:ListItem>
                            <asp:ListItem>Hermione</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                        <asp:Label ID="Result" runat="server"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            </asp:Panel>
    
    </div>
    </form>
</body>
</html>
