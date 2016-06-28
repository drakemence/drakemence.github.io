<%@ Page Title="BS" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="BasicSelectors.aspx.vb" Inherits="Demos_BasicSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Basic Selectors</h1>
<div class="SampleClass">I am a div.</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" Runat="Server">
    <script>
$(function()
{
$('*').css('color', 'Red'); // Universal
$('#Sidebar').css('border-bottom', '2px solid red'); // ID
$('h1').bind('click', function () { alert('Hello World') }); // Element
$('.SampleClass').addClass('PleaseWait').hide(5000); // Class
$('footer, header').slideUp('slow').slideDown('slow'); // Grouped
$('#Sidebar img').fadeTo(5000, 0.1); // Combined
});
</script>
</asp:Content>

