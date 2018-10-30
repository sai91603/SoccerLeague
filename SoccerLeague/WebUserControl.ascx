<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<style type="text/css">
    .container {
        padding: 0px;
    }

    .textbox {
        width: 30%;
        padding: 15px;
        margin: 5px 0 10px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    
</style>


<div class="container">
    <label for="clubName">
        <b>
            <br />
            Club Name</b></label>
    <br />
    <asp:TextBox placeholder="Club Name" CssClass="textbox" ID="clubName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqClubName" ControlToValidate="clubName"
        ValidationGroup="valSaveClub" runat="server" ForeColor="Red"
        ErrorMessage="*Required Club Name"></asp:RequiredFieldValidator>

    <label for="cityName">
        <b>
            <br />
            City</b></label>
    <br />
    <asp:TextBox ID="cityName" placeholder="Club City" CssClass="textbox" runat="server" Style="margin-top: 18px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqCityName" ControlToValidate="cityName" runat="server"
        ErrorMessage="*Required City Name" ForeColor="Red"
        ValidationGroup="valSaveClub"></asp:RequiredFieldValidator>

  
</div>
<br />
<asp:Label ID="Label1" runat="server" ForeColor="White" Text=" "></asp:Label>