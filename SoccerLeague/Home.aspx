<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SoccerLeague.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <article>
  <h2>Soccer League</h2>
        <p>
            <asp:Button ID="Btntheme" runat="server" Text="Choose theme"  OnClick="changetheme"/>
        </p>
  <p>Most soccer playing nations have a domestic league in which teams associated with their home cities vie against each other for the league championship. Players from all over the world can sign on to these teams, although some leagues have rules requiring a minimum number of players from the league's home country per team. Many domestic leagues emulate the system used in England.The English Premier League, by some estimates the most successful and popular sports league in the world, is the highest tier of professional football in that country. Below it is the Coca Cola Championship League; also know as the First Division. There are also second and third division teams, as well as regional leagues. The key to the whole system is the concept of promotion and relegation. At the end of the season, the bottom three teams in any division are 'relegated,' or sent down to the next lowest division, where they will compete next season. The top three teams of a division (except for the Premier League) are 'promoted' into the next higher division. Usually, the top two teams are automatically promoted while the next four teams compete in a playoff for the remaining promotion spot. Being promoted to a higher division means a major boost in television coverage and the resulting revenue.</p>
</article>
</asp:Content>