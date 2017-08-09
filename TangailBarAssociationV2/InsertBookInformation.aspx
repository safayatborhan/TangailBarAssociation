<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="InsertBookInformation.aspx.cs" Inherits="TangailBarAssociationV2.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">Book Information Entry</tr>
        </table>
    </div>
    <div class="row">
        <table>
            <tr>
                <div class="leftSideStrings">
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    <asp:Label ID="LabelBookID" runat="server" Text="Book Category : "></asp:Label>
                </td>
                    </div>
                <td>
                    <asp:DropDownList ID="DropDownListCategory" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelMemberID" runat="server" Text="Book ID : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxBookID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelMemberName" runat="server" Text="Book Image : "></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadBookImage" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelFatherName" runat="server" Text="Book Name : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxBookName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDateOfBirth" runat="server" Text="Author Name : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxAuthorName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDesignation" runat="server" Text="Date : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDate" runat="server"></asp:TextBox>
                </td>
            </tr>
           
            
            
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                </td>
                <td>
                    <asp:Button ID="ButtonInsertBookInformation" runat="server" Text="Store" OnClick="ButtonInsertBookInformation_Click" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                </td>
                <td>
                    <asp:Label ID="LabelSaveInformation" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
