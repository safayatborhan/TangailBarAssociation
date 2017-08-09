<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="GalleryImageEditUpdate.aspx.cs" Inherits="TangailBarAssociationV2.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">Add Image to Gallery</tr>
        </table>
    </div>
    <div class="row">
        <table>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelImageID" runat="server" Text="ID : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxImageID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 260px">
                    <asp:Label ID="LabelImageImage" runat="server" Text="Upload Image : "></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUploadMemberImage" runat="server" />
                </td>
            </tr>
            
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                    <asp:Label ID="LabelImageDescription" runat="server" Text="Description : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxImageDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm leftSideStrings" style="width: 167px">
                </td>
                <td>
                    <asp:Button ID="ButtonInsertImageInformation" runat="server" Text="Store" OnClick="ButtonInsertImageInformation_Click"/>
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

    <br /><br />
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="70%" ScrollBars="Both">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="ObjectDataSource1" AllowPaging="True" Font-Size="Small" DataKeyNames="ID">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;--%>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("memberImage") %>'></asp:TextBox>--%>
                        <asp:Image ID="TextBoxImage1" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="50" Width="50" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%--<asp:Label ID="Label1" runat="server" Text='<%# Bind("memberImage") %>'></asp:Label>--%>
                        <asp:Image ID="TextBoxImage2" runat="server" ImageUrl='<%# Eval ("Image") %>' Height="100" Width="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
    </asp:Panel>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteImage" SelectMethod="GetAllImages" TypeName="TangailBarAssociationV2.GalleryImageEditUpdateDeleteClass" UpdateMethod="UpdateImage">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
