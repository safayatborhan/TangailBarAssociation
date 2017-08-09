<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TangailBarAssociationV2.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">User Registration</tr>
        </table>
    </div>
    <div class="row">
        <table>
            <tr>
                <div class="leftSideStrings">
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    <asp:Label ID="LabelUsername" runat="server" Text="Username : "></asp:Label>
                </td>
                    </div>
                <td>
                    <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelPassword" runat="server" Text="Password : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    
                </td>
                <td>
                    <asp:Button ID="ButtonInsert" runat="server" Text="Store" OnClick="ButtonInsert_Click" />
                    <asp:Label ID="LabelInfo" runat="server" ForeColor="#003366"></asp:Label>
                </td>
            </tr>
            
        </table>
    </div>
</asp:Content>
