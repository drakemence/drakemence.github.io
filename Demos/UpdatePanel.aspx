<%@ Page Title="Update Panel" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="UpdatePanel.aspx.vb" Inherits="Demos_UppdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
<ContentTemplate>
<asp:Label ID="Label1" runat="server"></asp:Label>
<asp:Button ID="Button1" runat="server" Text="Button" />
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

