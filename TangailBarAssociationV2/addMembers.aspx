<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="addMembers.aspx.cs" Inherits="TangailBarAssociationV2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">Members Add Form</tr>
        </table>
    </div>
    <div class="row">
        <table>
            <tr>
                <div class="leftSideStrings">
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    <asp:Label ID="LabelMemberImage" runat="server" Text="Upload Image : "></asp:Label>
                </td>
                    </div>
                <td>
                    <asp:FileUpload ID="FileUploadMemberImage" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelMemberID" runat="server" Text="ID : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxMemberID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelMemberName" runat="server" Text="Name : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxMemberName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelFatherName" runat="server" Text="Father's Name : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxFatherName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDateOfBirth" runat="server" Text="Date Of Birth : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDateOfBirth" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDesignation" runat="server" Text="Designation : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDesignation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDistrict" runat="server" Text="District : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDistrict" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelPresentAddress" runat="server" Text="Present Address : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPresentAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelPhoneNumber" runat="server" Text="Phone Number : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelStatus" runat="server" Text="Status : "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListStatus" runat="server">
                        <asp:ListItem>Active</asp:ListItem>
                        <asp:ListItem>Inactive</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelNominee" runat="server" Text="Nominee : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxNominee" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDateOfMembership" runat="server" Text="Date Of Memebrship : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDateOfMembership" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelDateOfEnrolment" runat="server" Text="Date Of Enrolment : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxDateOfEnrolment" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                </td>
                <td>
                    <asp:Button ID="ButtonInsertMemberInformation" runat="server" Text="Store" OnClick="ButtonInsertMemberInformation_Click" />
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
