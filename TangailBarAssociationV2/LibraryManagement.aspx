<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="LibraryManagement.aspx.cs" Inherits="TangailBarAssociationV2.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <ajaxToolkit:Accordion ID="Accordion1" runat="server" Width="100%" AutoSize="None" FadeTransitions="true" TransitionDuration="350" FramesPerSecond="30" Height="100%">
                <Panes>
                    <ajaxToolkit:AccordionPane ID="AccordionPaneAdmissionFee" runat="server">
                        <Header>
                            <div style="background-color: #003366">
                                <asp:LinkButton ID="LinkButtonAdmissionFee" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Book Entry</asp:LinkButton>
                            </div>
                        </Header>
                        <Content>
                
                            
                                       
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="bookId" ShowFooter="False">
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
                <asp:TemplateField HeaderText="category" SortExpression="category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("category") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList>
                        <%--<asp:TextBox ID="TextBoxCategory" runat="server" Width="100%"></asp:TextBox>--%>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="bookId" SortExpression="bookId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("bookId") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxBookId" runat="server" Width="100%"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="bookImage" SortExpression="bookImage">
                    <EditItemTemplate>
                        <%--<asp:TextBox ID="TextBoxImage" runat="server" Text='<%# Bind("bookImage") %>'></asp:TextBox>--%>
                        <asp:Image ID="TextBoxImage1" runat="server" ImageUrl='<%# Eval ("bookImage") %>' Height="50" Width="50" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%--<asp:Label ID="LabelImage" runat="server" Text='<%# Bind("bookImage") %>'></asp:Label>--%>
                        <asp:Image ID="TextBoxImage" runat="server" ImageUrl='<%# Eval ("bookImage") %>' Height="100" Width="100" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxBookId" runat="server" Width="100%"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="bookName" SortExpression="bookName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxBookName" runat="server" Width="100%"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="authorName" SortExpression="authorName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("authorName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("authorName") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxAuthorName" runat="server" Width="100%"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="datee" SortExpression="datee">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("datee") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("datee") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="TextBoxDate" runat="server" Width="100%"></asp:TextBox>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

                        </Content>
                    </ajaxToolkit:AccordionPane>
                
                    <%--another accordion--%>

                    <ajaxToolkit:AccordionPane ID="AccordionPane1" runat="server">
                        <Header>
                            <div style="background-color: #003366">
                                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFFF">Doner List</asp:LinkButton>
                            </div>
                        </Header>
                        <Content>
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
                        <asp:Button ID="Button2" runat="server" OnClick="InsertButton2_Click" Text="Insert" />
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

                        </Content>
                    </ajaxToolkit:AccordionPane>
                </Panes>

            </ajaxToolkit:Accordion>
        </ContentTemplate>
    </asp:UpdatePanel>
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="deleteBook" InsertMethod="insertBook" SelectMethod="GetAllBooks" TypeName="TangailBarAssociationV2.BookEntryInsertUpdateDelete" UpdateMethod="updateBook">
        <DeleteParameters>
            <asp:Parameter Name="bookId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="bookId" Type="String" />
            <asp:Parameter Name="bookName" Type="String" />
            <asp:Parameter Name="authorName" Type="String" />
            <asp:Parameter Name="datee" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="bookId" Type="String" />
            <asp:Parameter Name="bookName" Type="String" />
            <asp:Parameter Name="authorName" Type="String" />
            <asp:Parameter Name="datee" Type="String" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
