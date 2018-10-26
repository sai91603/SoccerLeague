<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="SoccerLeague.setup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>Select a color from the drop-down list below to change the appearance of this page.</p>
<br /><br />
<asp:dropdownlist id="ddlThemes" runat="server" autopostback="true" OnSelectedIndexChanged="ddlThemes_SelectedIndexChanged" >
    <asp:listitem value="none">Select theme</asp:listitem>
    <asp:listitem value="light">I'd like the page to be light!</asp:listitem>
  <asp:listitem value="Dark">I'd like the page to be Dark!</asp:listitem>
  
</asp:dropdownlist>
<br />
</asp:Content>
