<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TangailBarAssociationV2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table cellpadding="0" class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td style="width: 164px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 164px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 164px; text-align: right;">
            <asp:Label ID="Label9" runat="server" Text="Username : "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 164px; text-align: right;">
            <asp:Label ID="Label10" runat="server" Text="Password : "></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 164px">&nbsp;</td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 164px">&nbsp;</td>
        <td>
            <asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>


</asp:Content>
