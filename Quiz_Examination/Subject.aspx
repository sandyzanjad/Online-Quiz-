<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="Quiz_Examination.Subject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">
<head>
<style>
.active
{ 
    margin-left:500px;
}
</style>
</head>
    <asp:Label ID="Label2" runat="server" Text="Select Subject"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" DataKeyNames="subid" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
        ForeColor="#333333" GridLines="None" Height="198px" 
        onrowcommand="GridView1_RowCommand1" Width="402px" CssClass="active">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="subid" HeaderText="subid" ReadOnly="True" 
                SortExpression="subid" />
            <asp:BoundField DataField="subname" HeaderText="subname" 
                SortExpression="subname" />
            <asp:ButtonField Text="Go to Exam"  HeaderText="Select" />
        </Columns>



        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />



    </asp:GridView>





<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:QuizConnectionString16 %>" 
    SelectCommand="SELECT [subid], [subname] FROM [Subject]"></asp:SqlDataSource>





</asp:Content>




