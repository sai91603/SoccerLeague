<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addclub1.aspx.cs" Inherits="Addclub1" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControl ID="WebUserControl1" runat="server" />
    <asp:Panel ID="Panel1" runat="server">
        
    <asp:Label ID="Lblregistration" runat="server" Text="Registration Number:"></asp:Label>
    <asp:TextBox ID="Txtregistration" runat="server"></asp:TextBox>  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter ur registration number" ControlToValidate="Txtregistration" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
    <asp:Label ID="LblAddress" runat="server" Text="Address:"></asp:Label>
    <asp:TextBox ID="TxtAddress" runat="server" Rows="5"></asp:TextBox>
        <br />
        <br />
    <br />
    <asp:Button ID="Btnsave" runat="server" Text="save club" OnClick="Btnsave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btncancel" runat="server" Text="cancel" OnClick="Btncancel_Click"  />
        <br />
        <br />
    <br />
