<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="ShowMemberInformation.aspx.cs" Inherits="TangailBarAssociationV2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <h1>Member's Information</h1>
    </div>
    
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="1287px" ScrollBars="Both">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" Font-Size="Small" DataKeyNames="memberID" AllowSorting="True">

            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="memberID" HeaderText="memberID" SortExpression="memberID" />
                <asp:TemplateField HeaderText="memberImage" SortExpression="memberImage">
                    <EditItemTemplate>
                        <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("memberImage") %>'></asp:TextBox>--%>
                        <asp:Image ID="TextBoxImage1" runat="server" ImageUrl='<%# Eval ("memberImage") %>' Height="50" Width="50" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <%--<asp:Label ID="Label1" runat="server" Text='<%# Bind("memberImage") %>'></asp:Label>--%>
                        <asp:Image ID="TextBoxImage2" runat="server" ImageUrl='<%# Eval ("memberImage") %>' Height="100" Width="100" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="memberName" HeaderText="memberName" SortExpression="memberName" />
                <asp:BoundField DataField="memberFatherName" HeaderText="memberFatherName" SortExpression="memberFatherName" />
                <asp:BoundField DataField="memberDateOfBirth" HeaderText="memberDateOfBirth" SortExpression="memberDateOfBirth" />
                <asp:BoundField DataField="memberDesignation" HeaderText="memberDesignation" SortExpression="memberDesignation" />
                <asp:BoundField DataField="memberDistrict" HeaderText="memberDistrict" SortExpression="memberDistrict" />
                <asp:BoundField DataField="memberPresentAddress" HeaderText="memberPresentAddress" SortExpression="memberPresentAddress" />
                <asp:BoundField DataField="memberPhoneNumber" HeaderText="memberPhoneNumber" SortExpression="memberPhoneNumber" />
                <asp:BoundField DataField="memberStatus" HeaderText="memberStatus" SortExpression="memberStatus" />
                <asp:BoundField DataField="memberNominee" HeaderText="memberNominee" SortExpression="memberNominee" />
                <asp:BoundField DataField="memberDateOfMembership" HeaderText="memberDateOfMembership" SortExpression="memberDateOfMembership" />
                <asp:BoundField DataField="memberDateOfEnrolment" HeaderText="memberDateOfEnrolment" SortExpression="memberDateOfEnrolment" />
                
            </Columns>

        </asp:GridView>
    </asp:Panel>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteMember" SelectMethod="GetAllMembers" TypeName="TangailBarAssociationV2.ShowEditDeleteOfMembersInformation" UpdateMethod="UpdateMember">
        <DeleteParameters>
            <asp:Parameter Name="memberID" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="memberID" Type="String" />
            <asp:Parameter Name="memberImage" Type="String" />
            <asp:Parameter Name="memberName" Type="String" />
            <asp:Parameter Name="memberFatherName" Type="String" />
            <asp:Parameter Name="memberDateOfBirth" Type="String" />
            <asp:Parameter Name="memberDesignation" Type="String" />
            <asp:Parameter Name="memberDistrict" Type="String" />
            <asp:Parameter Name="memberPresentAddress" Type="String" />
            <asp:Parameter Name="memberPhoneNumber" Type="String" />
            <asp:Parameter Name="memberStatus" Type="String" />
            <asp:Parameter Name="memberNominee" Type="String" />
            <asp:Parameter Name="memberDateOfMembership" Type="String" />
            <asp:Parameter Name="memberDateOfEnrolment" Type="String" />
            
            
        </UpdateParameters>
    </asp:ObjectDataSource>
    </asp:Content>
