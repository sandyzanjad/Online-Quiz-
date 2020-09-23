<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Viewresult.aspx.cs" Inherits="Quiz_Examination.Viewresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">
    <style>
    .login
        { text-align:center;
             margin-left: 300px;
        }
</style>
    <div class="card-header">
       
    </div>
    <div class="login">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="3" Height="210px" Width="638px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="resultscore" HeaderText="resultscore" 
                SortExpression="resultscore" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="resultstatus" HeaderText="resultstatus" 
                SortExpression="resultstatus" />
            <asp:BoundField DataField="examdate" HeaderText="examdate" 
                SortExpression="examdate" />
            <asp:BoundField DataField="totalquestion" HeaderText="totalquestion" 
                SortExpression="totalquestion" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QuizConnectionString14 %>" 
        
        SelectCommand="SELECT [resultscore], [name], [resultstatus], [examdate], [totalquestion] FROM [Result]">
    </asp:SqlDataSource>
    </div>
        <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <asp:Panel ID="panel_myresultshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_myresultshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
