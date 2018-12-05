<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MatchScheduling.aspx.cs" Inherits="SoccerLeague.MatchScheduling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .textbox {
            width: 20%;
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

        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            font-weight: bold;
            text-align: left;
        }

        .auto-style3 {
            text-align: center;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style5 {
            text-align: right;
        }

        .auto-style6 {
            width: 20%;
            display: inline-block;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-left: 0;
            margin-right: 0;
            margin-top: 5px;
            margin-bottom: 6px;
            padding: 15px;
            background: #f1f1f1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        

        <h1>Schedule Match</h1>
        <p>Please Select Host, Guest and Date of Match.</p>
        <hr />
    </div>

        <label for="hostClub">
            <b>
                <br />
            </b>
        </label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">

                    <label for="hostClub">
                        <b>Host Club:<br />
                            <br />
                        </b>
                    </label>
                    <asp:DropDownList ID="HostClub" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="ClubName" DataValueField="ClubName" AutoPostBack="True" OnSelectedIndexChanged="HostClub_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Select Host </asp:ListItem>
                    </asp:DropDownList>
                   
                    <asp:RequiredFieldValidator ID="RequiredHostClub" ControlToValidate="HostClub" ForeColor="Red"
                            ValidationGroup="MatchScheduling" runat="server" ErrorMessage="*Required Guest Club" Display="Dynamic"></asp:RequiredFieldValidator>
                   
                    <asp:CompareValidator ID="HostValidator" runat="server"
                        ErrorMessage="Host can't be equal Guest"
                        ControlToCompare="HostClub" ControlToValidate="GuestClub" ForeColor="Red" ValidationGroup="MatchScheduling" Operator="NotEqual" Display="Dynamic"></asp:CompareValidator>
                    

                    <asp:Label ID="hostError" runat="server" ForeColor="#FF3300" Visible="false"></asp:Label>
                    

                </td>
                <td class="auto-style5" rowspan="4">
                    <asp:GridView ID="MatchDate" runat="server" CellPadding="6" CellSpacing="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" HorizontalAlign="Center" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <label for="guestClub">
                        <b>Guest Club:<br />
                            <br />
                        </b>
                    </label>
                    &nbsp;<asp:DropDownList ID="GuestClub" AppendDataBoundItems="true" runat="server" DataSourceID="SqlDataSource1" DataTextField="ClubName" DataValueField="ClubName" AutoPostBack="True" OnSelectedIndexChanged="GuestClub_SelectedIndexChanged">
                        <asp:ListItem>Select Guest</asp:ListItem>
                    </asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredGuestClub" ControlToValidate="GuestClub" ForeColor="Red"
                            ValidationGroup="MatchScheduling" runat="server" ErrorMessage="*Required Guest Club" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="GuestValidator" runat="server"
                        ErrorMessage="Guest can't be equal Host"
                        ControlToCompare="GuestClub" ControlToValidate="HostClub" ValidationGroup="MatchScheduling" ForeColor="Red" Operator="NotEqual" Display="Dynamic"></asp:CompareValidator>
                    

                    <asp:Label ID="guestError" runat="server" ForeColor="#FF3300" Visible="false"></asp:Label>
                    

                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <label for="matchDate">
                        Match Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox CssClass="auto-style6" ID="txtMatchDate" runat="server" OnTextChanged="txtMatchDate_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredDate" ControlToValidate="txtMatchDate" ForeColor="Red"
                            ValidationGroup="MatchScheduling" runat="server" ErrorMessage="*Required Match Date" Display="Dynamic"></asp:RequiredFieldValidator>
                        <br />
                        <div class="auto-style3">
                            <label for="matchDate">
                                <asp:Calendar ID="calMatchDate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="txtMatchDate_TextChanged" OnDayRender="calMatchDate_DayRender">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                    <TodayDayStyle BackColor="#CCCCCC" />
                                </asp:Calendar>


                            </label>
                        </div>
                        <br />
                        <asp:Button ID="btnMatchSchedule" CssClass="button" ValidationGroup="MatchScheduling" runat="server" OnClick="ScheduleMatch" Text="Schedule Match" />
                    </label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SoccerLeagueConnectionString %>" SelectCommand="SELECT [ClubName] FROM [Club]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        &nbsp;<br />
        <br />
        <br />
    </div>
</asp:Content>