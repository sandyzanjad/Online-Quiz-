<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Userdetails.aspx.cs" Inherits="Quiz_Examination.Userdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">


<style>
     .t3 
      {
             align:center;
             text-align:center; 
             margin:5px auto 5px auto;
             border:5px solid red;
             margin-top:50px;
             border-radius:30px;
        
      }
      
      .t3 tr td
      {
          
          width:500px;
          }
     
        fieldset {
            
          
           width: 95%;
           margin: 10px auto;
           background-color: transparent;
           border-radius:30px;
           border:3px solid white;

  
        }
        fieldset legend{
            color: #990099;
            font-size:xx-large;
            font-style:italic;
            width:auto;
            backgroud-color:black;
        }
        
        .login table
        {
             align:center;
             text-align:center; 
             margin:5px auto 5px auto ;  
             
        }
        
        .login table tr td{
             color: black;
             vertical-align:top;
	         padding:0px;
        }
        .t1{
             width: 100%;
             color: #009999;
             outline: none;
             font-size: 18px;
             padding: .4em 0em;
             margin: 10px 0px 9px;
             border: none;
             border-bottom: 2px solid #fff;
             -webkit-appearance: none;
             display: inline-block;
             background: transparent;
             box-sizing: border-box;
             width:200px;
             text-align:center;
 
        }
        
        .t2  tr  td{
            
            padding:40px;
            
        }
        .l1{
            color:Olive;
            font-size:30px;
            font-style:italic;
            float:left;
         }
         .l2{
            color:lightblue;
            font-size:27px;
            font-style:italic;
            float:left;
         }
            
          .b1{
             background-color: white; 
             color: red; 
             border: 2px solid #f44336;
             border-radius:40px;
             width:200px;
             height:40px;

             }
        .b1:hover {
           
            background-color: #f44336;
            color: white;
         }   
      
    </style>
    









 <style type="text/css">
* {margin: 0; padding: 0;}
#container {margin-top:20px;height: auto; width:auto; font-size: 0;}
#left, #middle, #right {display: inline-block;  display: inline; zoom: 1; vertical-align: top; font-size: 12px; padding:5px;}
#left {width: 25%; background: ;}
#middle {width: 50%; background:;}
#right {width: 25%; background: yellow;}
</style>
<div id="container">
    <div id="left">
     

    </div>

     <div id="middle">
    <fieldset class="login">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="name" DataSourceID="SqlDataSource1" Height="144px" Width="646px" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Name " ReadOnly="True" 
                SortExpression="name" />
            <asp:BoundField DataField="uname" HeaderText="Uname " SortExpression="uname" />
            <asp:BoundField DataField="mobile" HeaderText="Mobile " 
                SortExpression="mobile" />
            <asp:BoundField DataField="address" HeaderText="Address " 
                SortExpression="address" />
            <asp:BoundField DataField="gender" HeaderText="Gender " 
                SortExpression="gender" />
            <asp:BoundField DataField="dob" HeaderText="Date of Birth " SortExpression="dob" />
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
        ConnectionString="<%$ ConnectionStrings:QuizConnectionString %>" 
        SelectCommand="SELECT [name], [uname], [mobile], [address], [gender], [dob] FROM [Registration]">
    </asp:SqlDataSource>


     
     <!--
     <div id="middle">
    <fieldset class="login">
        <legend>User Profile : </legend> 

        <asp:GridView ID="GridVeiw1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" Height="131px" Width="579px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="uname" HeaderText="Username" />
                
                <asp:BoundField DataField="mobile" HeaderText="Mobile Number" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="gender" HeaderText="Gender" />
                <asp:BoundField DataField="dob" HeaderText="Birthdate" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
           
        </asp:GridView>-->
        

    </fieldset>
    </div>
  
 
  



</div>
</asp:Content>
