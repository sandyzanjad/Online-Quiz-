<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Quiz_Examination.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">
<style>
    .login
        { text-align:center;
             margin-left: 300px;
        }
</style>
    <div class="card-header">
        <h2>Your Result</h2>
    </div>
    <div class="login">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Height="155px" Width="540px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
