<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="setup.aspx.cs" Inherits="SoccerLeague.setup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <h1>Settings</h1>
        <hr />
        <h3>Select Theme</h3>
        <p>
            <asp:DropDownList ID="ddlThemes" runat="server" OnSelectedIndexChanged="ddlThemes_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Light</asp:ListItem>
                <asp:ListItem>Dark</asp:ListItem>
            </asp:DropDownList>
        </p>

    </div>
</asp:Content>
