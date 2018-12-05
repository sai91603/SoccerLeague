<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SoccerLeague.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <h1>Login</h1>
        <asp:Login ID="Login1" runat="server" CreateUserText="REGISTER USER" CreateUserUrl="~/Pages/Register.aspx"></asp:Login>
    </div>

</asp:Content>