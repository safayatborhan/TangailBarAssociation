<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="AddBookCategory.aspx.cs" Inherits="TangailBarAssociationV2.WebForm15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <table>
            <tr style="font-size: xx-large; font-weight: bold">Book Category Entry</tr>
        </table>
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" ShowFooter="True" DataKeyNames="category">
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:Button ID="Button1" runat="server" OnClick="InsertButton_Click" Text="Insert" />
                        <%--<asp:LinkButton ID="InsertLinkButton" runat="server" OnClick="InsertLinkButton_Click">Insert</asp:LinkButton>--%>
                    </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="category" SortExpression="category">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("category") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                        <asp:TextBox ID="TextBoxBookCategory" runat="server" Width="100%"></asp:TextBox>
                    </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="deleteBookCategory" InsertMethod="insertBookCategory" SelectMethod="GetAllCategories" TypeName="TangailBarAssociationV2.BookCategoryInsertUpdateDelete">
        <DeleteParameters>
            <asp:Parameter Name="category" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
</asp:Content>
