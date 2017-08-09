<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="addNews.aspx.cs" Inherits="TangailBarAssociationV2.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">Add recent notice</tr>
        </table>
    </div>
    <div class="row">
        <table>
            <tr>
                <div class="leftSideStrings">
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    <asp:Label ID="LabelNoticeTile1" runat="server" Text="Notice 1 title : "></asp:Label>
                </td>
                    </div>
                <td>
                    <asp:TextBox ID="TextBoxNotice1Title" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelNotice1" runat="server" Text="Notice 1 : "></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadNotice1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    
                </td>
                <td>
                    <asp:Button ID="ButtonNotice1" runat="server" Text="Save" OnClick="ButtonNotice1_Click" />
                    <asp:Label ID="LabelNoticeInformation1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelNotice2Title" runat="server" Text="Notice 2 title : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNotice2" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelNotice2" runat="server" Text="Notice 2 : "></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadNotice2" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    
                </td>
                <td>
                    <asp:Button ID="ButtonNotice2" runat="server" Text="Save" OnClick="ButtonNotice2_Click" />
                    <asp:Label ID="LabelNoticeInformation2" runat="server" Text=""></asp:Label>
                </td>
            </tr>


            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelNotice3Tile" runat="server" Text="Notice 3 title : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNotice3" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelNotice3" runat="server" Text="Notice 3 : "></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadNotice3" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    
                </td>
                <td>
                    <asp:Button ID="ButtonNotice3" runat="server" Text="Save" OnClick="ButtonNotice3_Click" />
                    <asp:Label ID="LabelNoticeInformation3" runat="server" Text=""></asp:Label>
                </td>
            </tr>

        </table>
    </div>

</asp:Content>
