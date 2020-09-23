<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="Quiz_Examination.WebForm1" %>
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
            
          
           width: 50%;
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
           
        }
        
        .login table
        {
            background-color:#ffffff;
             align:center;
             text-align:center; 
             margin-left:200px;
             margin:10px auto 10px auto ;  
             
        }
        
        .login table tr td{
             color: red;
             
             vertical-align:top;
	         padding:5px;
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
            
            padding:0px;
            margin-left:200px;
           
            
        }
        .l1{
            color:Black;
            font-size:20px;
            font-style: normal;
            float:left;
         }
         .l2{
            color:Red;
            font-size:17px;
            font-style:normal;
            float:left;
         }
            
          .b1{
             background-color: white; 
             color: red; 
             border: 2px solid #f44336;
             border-radius:40px;
             width:200px;
             height:20px;

             }
             
             body
             {
             background-color:#009966
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
#middle {width: 50%; background: #6d6157;}
#right {width: 25%; background: yellow;}
</style>
<body>


<div id="container">
    <div id="left">
    </div>
   <div id="Div1">
    <fieldset class="login">
        <legend>User Profile : </legend> 
        <table class="t2">
        <tr>
             <td><asp:Label ID="Label1"  CssClass="l1" runat="server" Text="Name : "></asp:Label></td>
             <td><asp:Label ID="Label2" CssClass="l2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td><asp:Label ID="Label3" CssClass="l1" runat="server" Text="Username : "></asp:Label></td>
             <td><asp:Label ID="Label4" CssClass="l2" runat="server" Text="Label"></asp:Label></td>
        </tr>
      
        <tr>
             <td><asp:Label ID="Label7" CssClass="l1" runat="server" Text="Mobile :"></asp:Label></td>
             <td><asp:Label ID="Label8" CssClass="l2" runat="server" Text="Label"></asp:Label></td>
             </tr>
        <tr>
             <td><asp:Label ID="Label13" CssClass="l1" runat="server" Text="Address : "></asp:Label></td>
             <td><asp:Label ID="Label14" CssClass="l2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td><asp:Label ID="Label9" CssClass="l1" runat="server" Text="Gender : "></asp:Label></td>
             <td><asp:Label ID="Label10" CssClass="l2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
             <td><asp:Label ID="Label11" CssClass="l1" runat="server" Text="Date of Birth :"></asp:Label></td>
             <td><asp:Label ID="Label12" CssClass="l2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        </table>
    </fieldset>
</div>
</div>
</body>
</asp:Content>
