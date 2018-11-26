<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Clubs.aspx.cs" Inherits="SoccerLeague.Clubs" %>
<%@ Register Src="~/Pages/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
        <%--Nithin Kumar Kollerethu Suresh - 300991463--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="6" GridLines="None" CellSpacing="4" ForeColor="#333333" HorizontalAlign="Left" ToolTip="Club Name &amp; City" Width="80%">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="ClubName">
                    <ItemTemplate>
                        <asp:LinkButton ID="ClubLink" OnClick="LinkButtonClick" runat="server" Text='<%# Eval("ClubName") %>' ItemStyle-HorizontalAlign="Center">
                                 LinkButton</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField HeaderText="Club City" DataField="CityName" ItemStyle-HorizontalAlign="Center">
                    <ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:BoundField>
                
            </Columns>
           
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT [PlayerName] FROM [Players]"></asp:SqlDataSource>
    </div>

    <br />
    <br />
</asp:Content>