<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Clubs.aspx.cs" Inherits="SoccerLeague.Clubs" %>
<%@ Register Src="~/Pages/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
        
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
           <%@ Register Src="~/Pages/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content">
       
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="6" GridLines="None" CellSpacing="4" ForeColor="#333333" HorizontalAlign="Left" ToolTip="Club Name &amp; City" Width="80%">
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
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" SelectCommand="SELECT [PlayerName] FROM [Players]"></asp:SqlDataSource>
    </div>

    <br />
    <br />
</asp:Content>
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