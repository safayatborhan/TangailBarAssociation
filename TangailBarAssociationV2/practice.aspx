<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practice.aspx.cs" Inherits="TangailBarAssociationV2.practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="memberID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="memberID" HeaderText="memberID" SortExpression="memberID" />
                <asp:BoundField DataField="memberImage" HeaderText="memberImage" SortExpression="memberImage" />
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
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteMember" SelectMethod="GetAllMembers" TypeName="TangailBarAssociationV2.ShowEditDeleteOfMembersInformation" UpdateMethod="UpdateMember">
            <DeleteParameters>
                <asp:Parameter Name="memberID" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="fatherName" Type="String" />
                <asp:Parameter Name="dateBirth" Type="String" />
                <asp:Parameter Name="designation" Type="String" />
                <asp:Parameter Name="district" Type="String" />
                <asp:Parameter Name="presentAddress" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="nominee" Type="String" />
                <asp:Parameter Name="dateMembership" Type="String" />
                <asp:Parameter Name="dateEnrolment" Type="String" />
                <asp:Parameter Name="imaage" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
