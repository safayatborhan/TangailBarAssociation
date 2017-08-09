<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.Master" AutoEventWireup="true" CodeBehind="MemberFullInformation.aspx.cs" Inherits="TangailBarAssociationV2.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="memberFullInformation">

        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <div class="row">


                    <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%" BorderWidth="5px" BorderColor="Transparent">
                        <div class="text-center">
                            <asp:Image ID="Image1" CssClass="text-center" runat="server" ImageUrl='<%#Eval("memberImage") %>' Height="200px" Width="200px"></asp:Image>
                        </div>
                        <br />

                        <asp:Label ID="Label9" runat="server" Text="Member ID : "></asp:Label>
                        <asp:Label ID="LabelID" runat="server" Text='<%# Eval("memberID") %>'></asp:Label>



                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Member Name : "></asp:Label>
                        <asp:Label ID="LabelName" runat="server" Text='<%# Eval("memberName") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="Father Name : "></asp:Label>
                        <asp:Label ID="LabelFatherName" runat="server" Text='<%# Eval("memberFatherName") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label12" runat="server" Text="Date Of Birth : "></asp:Label>
                        <asp:Label ID="LabelDateOfBirth" runat="server" Text='<%# Eval("memberDateOfBirth") %>'></asp:Label>
                        <br />
                        <br />
                        <h2 class="text-center">Address</h2>
                        <hr />
                        <asp:Label ID="Label1" runat="server" Text="District : "></asp:Label>
                        <asp:Label ID="LabelDistrict" runat="server" Text='<%# Eval("memberDistrict") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label13" runat="server" Text="Present Address : "></asp:Label>
                        <asp:Label ID="LabelPresentAddress" runat="server" Text='<%# Eval("memberPresentAddress") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label14" runat="server" Text="PhoneNumber : "></asp:Label>
                        <asp:Label ID="LabelPhoneNumber" runat="server" Text='<%# Eval("memberPhoneNumber") %>'></asp:Label>
                        <br />
                        <br />
                        <h2 class="text-center">Tangail Bar Detail</h2>
                        <hr />
                        <asp:Label ID="Label2" runat="server" Text="Status : "></asp:Label>
                        <asp:Label ID="LabelStatus" runat="server" Text='<%# Eval("memberStatus") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Nominee : "></asp:Label>
                        <asp:Label ID="LabelNominee" runat="server" Text='<%# Eval("memberNominee") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label16" runat="server" Text="Date Of Membership : "></asp:Label>
                        <asp:Label ID="LabelDateOfMembership" runat="server" Text='<%# Eval("memberDateOfMembership") %>'></asp:Label>

                        <br />
                        <asp:Label ID="Label17" runat="server" Text="Date Of Enrolment : "></asp:Label>
                        <asp:Label ID="LabelDateOfEnrolment" runat="server" Text='<%# Eval("memberDateOfEnrolment") %>'></asp:Label>

                    </asp:Panel>
                </div>
            </ItemTemplate>
        </asp:DataList>

    </div>
</asp:Content>
