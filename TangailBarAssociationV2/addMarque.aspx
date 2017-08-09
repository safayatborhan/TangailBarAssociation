<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="addMarque.aspx.cs" Inherits="TangailBarAssociationV2.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">Marquee Add</tr>
        </table>
    </div>
    <div class="row">
        <table>
            <tr>
                <div class="leftSideStrings">
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    <asp:Label ID="LabelMarquee" runat="server" Text="Insert text here : "></asp:Label>
                </td>
                    </div>
                <td>
                    <asp:TextBox ID="TextBoxMarquee" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <div class="leftSideStrings">
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    
                </td>
                    </div>
                <td>
                    <asp:Button ID="ButtonMarquee" runat="server" Text="Store" OnClick="ButtonMarquee_Click" />
                    <asp:Label ID="LabelInformation" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
