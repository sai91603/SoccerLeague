<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SoccerLeague.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            color: #FFFF99;
        }

        .auto-style2 {
            color: #FFFFFF;
        }

        .auto-style3 {
            text-decoration: underline;
        }

        .auto-style4 {
            color: #E9E581;
            text-align: center;
            font-weight: bold;
        }

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            text-decoration: underline;
            text-align: center;
            color: #E9E581;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style1">
    </div>
    <article class="content">
       <asp:Button ID="Btntheme" runat="server" Text="Change Theme"  OnClick="changetheme" CssClass="button" />
     
        <div class="auto-style2" style="padding: -20px">
            <h1 style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: xx-large; text-align: center" class="auto-style2">Add, Manage and View </h1>
            <h2 style="color: #E9E581; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: xx-large; text-align: center">Clubs & Players</h2>
        </div>
        <div>

            <table align="center" cellpadding="8" cellspacing="5" class="auto-style2">
                <tr>
                    <td class="auto-style6">
                        <h1 class="auto-style3">Clubs</h1>
                    </td>
                    <td class="auto-style5">
                        <h1 class="auto-style3">Add Club</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Page that enables a user to see the clubs in the league.</td>
                    <td class="auto-style4">Page that enables a user to include a details of clubs and players </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <h1 class="auto-style3">Results</h1>
                    </td>
                    <td class="auto-style5">
                        <h1 class="auto-style3">Scheduling</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Page that enables a user to see the results of the matches</td>
                    <td class="auto-style4">Page that enables a client to plan the matches</td>
                </tr>
            </table>

        </div>
    </article>
</asp:Content>

