<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 228px;
    }
    .auto-style3 {
        width: 197px;
    }
    .auto-style4 {
        width: 563px;
    }
</style>
<script>
function validatePhoneNumbers(source, args)
{
var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
if (phoneHome.value != '' || phoneBusiness.value != '')
{
args.IsValid = true;
}
else
{
args.IsValid = false;
}
}
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div id="TableWrapper">
<table class="auto-style1" runat="server" id="FormTable">
    <tr>
        <td colspan="3"><h1>Use the form below to get in touch with us.</h1><br />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Name</td>
        <td class="auto-style2">
            <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter Thine Name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Email Id</td>
        <td class="auto-style2">
            <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Email Id">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Repeat Email Id</td>
        <td class="auto-style2">
            <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Reenter email id">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Email Id's don't match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Home Phone No</td>
        <td class="auto-style2">
            <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhone Numbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter Number">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Business Phone No</td>
        <td class="auto-style2">
            <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Comments</td>
        <td class="auto-style2">
            <asp:TextBox ID="Comments" runat="server" Height="115px" TextMode="MultiLine" Width="211px"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="SendButton" runat="server" Text="Send" />
        </td>
        <td class="auto-style4">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Errors:" />
        </td>
    </tr>
</table>
    </div>
    <asp:Label ID="Message" runat="server" CssClass="Attention"
Text="Message Sent" Visible="False" />
<p runat="server" id="MessageSentPara" visible="False">Thank you for your message.
We'll get in touch with you if necessary.</p>
</ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
<ProgressTemplate>
<div class="PleaseWait">
Please Wait...
</div>
</ProgressTemplate>
</asp:UpdateProgress>
<script>
$(function()
{
$('form').bind('submit', function()
{
if (Page_IsValid)
{
$('#TableWrapper').slideUp(3000);
}
});
});
function pageLoad() {
    $('.Attention').animate({ width: '600px' }, 3000).
    animate({ width: '100px' }, 3000).fadeOut('slow');
}
</script>