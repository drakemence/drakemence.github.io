﻿<%@ Page Title="k" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="WebServices.aspx.vb" Inherits="Demos_WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
<asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
<Services>
<asp:ServiceReference Path="~/WebServices/NameService.svc" />
</Services>
</asp:ScriptManagerProxy>
    <input id="YourName" type="text" />
<input id="SayHello" type="button" value="Say Hello" onclick="helloWorld();" />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <script>
function helloWorld()
{
var yourName = document.getElementById('YourName').value;
NameService.HelloWorld(yourName, helloWorldCallback);
}
function helloWorldCallback(result)
{
    Label1.Text = result;
}
</script>
</asp:Content>

