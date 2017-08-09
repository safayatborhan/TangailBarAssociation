<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Members.aspx.cs" Inherits="TangailBarAssociationV2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="membersInformation">
        <asp:Panel ID="Panel1" runat="server" Width="100%" Height="1287px" ScrollBars="Both">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal">

            <ItemTemplate>
                    <asp:Panel ID="Panel1" runat="server" BorderWidth="3px" BorderColor="Transparent" Height="100%" Width="100%">

                        <table height="150">
                            
                                <tr>
                                    <td width="75%" style="color: #FF0000; font-weight: bold" align="center">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("memberImage") %>' Height="100px" Width="100px"></asp:Image>
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td width="75%" style="color: #000000; font-weight: normal">&nbsp;<asp:Label ID="Label9" runat="server" Font-Size="Medium" Text="ID : "></asp:Label>
                                        <span style="color: Black; font-weight: bold;">
                                            <asp:Label ID="LabelID" runat="server" Font-Size="Medium" ForeColor="Black" Text='<%# Eval("memberID") %>' Font-Bold="False"></asp:Label>
                                        </span>
                                        <br />
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td width="50%" style="color: #009900; font-weight: bold">
                                        <asp:Label ID="LableName" runat="server" Text='<%# Eval("memberName") %>' ForeColor="Black" Font-Size="Medium" Font-Bold="False"></asp:Label>
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td width="75%" style="color: #FF0000; font-weight: bold">
                                        <asp:Label ID="LabelDesignation" runat="server" Text='<%# Eval("memberDesignation") %>' ForeColor="Black" Font-Size="Medium" Font-Bold="False"></asp:Label>
                                    </td>
                                </tr>
                            
                                <tr>
                                    <td align="Right">
                                        <asp:LinkButton ID="LinkButtonDetail" runat="server"
                                            Font-Underline="False" Style="font-weight: 700; color: Black" CommandName="ViewDetails" CommandArgument='<%#Eval("memberID") %>' BackColor="#CCFFCC" Font-Bold="False" Font-Size="Medium" OnClick="LinkButtonDetail_Click">View Profile</asp:LinkButton>
                                    </td>
                                </tr>
                            
                        </table>


                    </asp:Panel>
            </ItemTemplate>

            <%--<ItemTemplate>
                <asp:Image ID="Image1" runat="server" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="ID : "></asp:Label>
                &nbsp;<asp:Label ID="LabelID" runat="server"></asp:Label>
                <br />
                <asp:Label ID="LabelName" runat="server"></asp:Label>
                <br />
                <asp:Label ID="LabelDesignation" runat="server"></asp:Label>
            </ItemTemplate>--%>
        </asp:DataList>
            </asp:Panel>
    </div>

</asp:Content>
