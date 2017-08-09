<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm16.aspx.cs" Inherits="TangailBarAssociationV2.WebForm16" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="deleteDonar" InsertMethod="insertDonarInformation" SelectMethod="GetAllDonars" TypeName="TangailBarAssociationV2.DonarListInsertUpdateDelete" UpdateMethod="updateDoner">
            <DeleteParameters>
                <asp:Parameter Name="donarName" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="donarName" Type="String" />
                <asp:Parameter Name="donarBook" Type="String" />
                <asp:Parameter Name="noOfBook" Type="String" />
                <asp:Parameter Name="donateDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="donarName" Type="String" />
                <asp:Parameter Name="donarBook" Type="String" />
                <asp:Parameter Name="noOfBook" Type="String" />
                <asp:Parameter Name="donateDate" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource2" DataKeyNames="donarName" ShowFooter="True">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="Button1" runat="server" OnClick="InsertButton_Click" Text="Insert" />
                        <%--<asp:LinkButton ID="InsertLinkButton" runat="server" OnClick="InsertLinkButton_Click">Insert</asp:LinkButton>--%>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="donarName" SortExpression="donarName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("donarName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("donarName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxDonarName" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="donarBook" SortExpression="donarBook">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("donarBook") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("donarBook") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxDonarBook" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="noOfBook" SortExpression="noOfBook">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("noOfBook") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("noOfBook") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxNoOfBook" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="donateDate" SortExpression="donateDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("donateDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("donateDate") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxDonateDate" runat="server"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
