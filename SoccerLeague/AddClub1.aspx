<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addclub1.aspx.cs" Inherits="Addclub1" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .textbox {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        .button {
            background-color: #4CAF50;
            padding: 14px 20px;
            margin: 3px 0;
            border: none;
            opacity: 0.9;
        }

            .button:hover {
                opacity: 1;
            }

        .buttons {
            margin-left: 20px;
        }

        label {
            color: #F6F6F6;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">

        <h1>Enter Club Details</h1>
        <p>Please fill in this form to create new club.</p>
        <hr />


        <uc1:WebUserControl runat="server" ID="WebUserControl" />
        <label for="regNo">
            <b>Registration Number<br />
            </b>
        </label>
        <asp:TextBox CssClass="textbox" ID="registrationNumber" placeholder="Registration number" runat="server"></asp:TextBox>
        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
            ControlToValidate="registrationNumber" ValidationGroup="valSaveClub" ForeColor="Red" ErrorMessage="Value must be a whole number" Display="Dynamic" />
        <asp:RequiredFieldValidator ID="reqRegistrationNumber" ControlToValidate="registrationNumber" ForeColor="Red"
            ValidationGroup="valSaveClub" runat="server" ErrorMessage="*Required Registration Number" Display="Dynamic"></asp:RequiredFieldValidator>


        <label for="address">
            <b>
                <br />
                Address</b></label>
        <br />
        <asp:TextBox placeholder="Address" CssClass="textbox" ID="address" runat="server"></asp:TextBox>
    
        <br />
        <br />
        <asp:Button ID="saveClub" runat="server" CssClass="button" Text="Save Club" ValidationGroup="valSaveClub" OnClick="saveClub_Click" />
         <asp:Button CssClass="button" ID="btnCancelClub" value="cancel" runat="server" Text="Cancel" OnClick="Cancel" />

        <asp:Button ID="addPlayer" runat="server" CssClass="button" OnClick="addPlayer_Click" Text="Add Player" Visible="False" />
        <br />
        <br />
        <br />
    </div>

    <div id="PlayerInfo" visible="false" runat="server">
        <fieldset>
            <h2><b>Add Player</b></h2>
            <p>Please fill in this form to add new players.</p>
            <hr />
            <div>

                <label for="playerName"><b>Player Name:</b></label>
                <br />
                <asp:TextBox ID="txtPlayerName" CssClass="textbox" runat="server"></asp:TextBox>
            </div>
            <div>

                <label for="DOB"><b>Date of Birth:</b></label>
                <br />
                <asp:Calendar ID="calDOB" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>

                <asp:TextBox ID="txtDOB" CssClass="textbox" runat="server"></asp:TextBox>
                <asp:LinkButton ID="PickDate" runat="server" OnClick="SelectDate">Pick Date</asp:LinkButton>
