<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="WelcomeAdmin.aspx.cs" Inherits="TangailBarAssociationV2.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
     <div class="text-center">
        <table>
            <%--<tr style="font-size: 50px; font-weight: bold; font-family: Aharoni; color: #008080; font-style: italic;">WELCOME TO ADMIN PANEL</tr>--%>
            <tr>
                <asp:Label ID="Label1" runat="server" Text="WELCOME TO ADMIN PANEL" ForeColor="#006666" Font-Size="Larger" Font-Italic="True" Font-Bold="True"></asp:Label></tr>
        </table>
    </div>
</asp:Content>
