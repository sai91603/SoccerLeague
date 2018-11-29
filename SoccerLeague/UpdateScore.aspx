<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateScore.aspx.cs" Inherits="SoccerLeague.UpdateScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            align-content: center;
            color: #F6F6F6;
            font-weight: 700;
        }

        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">

        <h1>Update Match Score</h1>
        <p>Please fill in this form to update scores.</p>
        <hr />

        <div>
            <table cellpadding="14" class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">Score</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Host Club</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownListHostClub" AppendDataBoundItems="true" DataTextField="HostClub" DataValueField="HostClub" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListHostClub_SelectedIndexChanged" Width="100px" Height="50px">
                            <asp:ListItem Text="Select" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="hostError" runat="server" ForeColor="#FF3300" Visible="false"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="HostScoreTextBox" CssClass="textbox" placeholder="Host Club Goals" runat="server" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ValidationGroup="ScoreValidator"
                            ErrorMessage="Between 0-33" ControlToValidate="HostScoreTextBox"
                            ForeColor="#FF3300" MaximumValue="33" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="HostScoreTextBox" ValidationGroup="ScoreValidator" ForeColor="Red" ErrorMessage="Value must be a whole number" Display="Dynamic" />
                        <asp:RequiredFieldValidator ID="requireHostScore" ControlToValidate="HostScoreTextBox" ForeColor="Red"
                            ValidationGroup="ScoreValidator" runat="server" ErrorMessage="*Goals ??" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="UpdateScore" CssClass="button" CausesValidation="true" ValidationGroup="ScoreValidator" runat="server" Text="Submit" OnClick="Button1_Click" />

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Guest Club</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownListGuestClub" AppendDataBoundItems="true" DataTextField="GuestClub" DataValueField="GuestClub" AutoPostBack="True" runat="server" Enabled="False" Width="100px" OnSelectedIndexChanged="DropDownListGuestClub_SelectedIndexChanged" Height="50px">
                            <asp:ListItem Text="Select" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    <asp:Label ID="guestError" runat="server" Visible="false" ForeColor="#FF3300"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:TextBox ID="GuestScoreTextBox" CssClass="textbox"  placeholder="Guest Club Goals" runat="server" Enabled="False"></asp:TextBox>
                        <br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ValidationGroup="ScoreValidator"
                            ErrorMessage="Between 0-33" ControlToValidate="GuestScoreTextBox"
                            ForeColor="#FF3300" MaximumValue="33" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
                            ControlToValidate="GuestScoreTextBox" ValidationGroup="ScoreValidator" ForeColor="Red" ErrorMessage="Value must be a whole number" Display="Dynamic" />
                        <asp:RequiredFieldValidator ID="requireGuestScore" ControlToValidate="GuestScoreTextBox" ForeColor="Red"
                            ValidationGroup="ScoreValidator" runat="server" ErrorMessage="*Goals ??" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="clearButton" CssClass="button"  runat="server" OnClick="clearButton_Click" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Match Date</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownListDate" AppendDataBoundItems="true" DataTextField="MatchDate" DataValueField="MatchDate" AutoPostBack="True" runat="server" Enabled="False" Height="50px" Width="100px" OnSelectedIndexChanged="DropDownListDate_SelectedIndexChanged">
                            <asp:ListItem Text="Select" Selected="True"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="DateErrorMessage" runat="server" Visible="false" ForeColor="#FF3300"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>