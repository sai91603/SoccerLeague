<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<table>
   
    <tr>
        <td>Club Name:<asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Enter club name." ControlToValidate="TxtName" 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        </td>
   </tr>
 
    <tr>
        <td>Club city:<asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ErrorMessage="Enter Club City." 
                ControlToValidate="TxtCity" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        </td>
    </tr>
</table>

