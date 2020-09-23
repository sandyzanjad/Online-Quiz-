<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="Quiz_Examination.Userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<style>
     
     body {
   background: #FBB040; 
background: -moz-linear-gradient(45deg, #4285F4 0%, #e6683c 25%, #34A853 50%, #cc2366 75%, #4285F4 100%); 
background: -webkit-linear-gradient(45deg, #34A853 0%,#e6683c 25%,#34A853 50%,#cc2366 75%,#4285F4 100%); 
background: linear-gradient(45deg, #f09433 0%,#FBBC05 25%,#34A853 50%,#cc2366 75%,#4285F4 100%); 
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#EA4335', endColorstr='#4285F4',GradientType=1 );
}
        .login {
            margin:70px 350px 70px 350px;
            border:5px solid ;
            border-radius:100px 25px 100px 25px;
            border-radius: 15px 50px 30px;
            background:  #ffffff;
  
        }
        .login h2{
             margin-top:20px;
             text-align:center;
             color:;
        }
        .login table{
             align:center;
             text-align:center; 
             margin:30px auto 20px auto ;  
             border-radius: 50px;
        }
        
        .login table tr td{
             color: #ff0000;
             vertical-align:top;
	         padding:0px;
        }
        .t1{
             height:30px;
	         width:250px;
	         line-height:26px;
	         margin:0;
	         padding:2px;
             display:inline-block;
             border-radius:20px;         
        }
        .b1{
            background-color:#ff33cc;
	        color:#ffffff;
	        cursor:pointer;
	        border:1;
	        padding:8px 20px;
         }
        .b1:hover {
           color:#ff33cc;
         }
      

     .style1
     {
         width: 202px;
     }
     .style2
     {
         width: 202px;
         height: 45px;
     }
      

    </style>
    <body>

    <div class="login">
        <h2>User Login:
        </h2> 
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>


        <table >
        <tr>
          <td class="style1">
                  
              <asp:TextBox ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>


            </td>
        </tr>
        <tr>
         <td class="style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
          ControlToValidate="TextBox1" ErrorMessage="Please Enter Valid Username" 
          ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}" ></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
          <td class="style1">
               
              <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" 
                  TextMode="Password"></asp:TextBox>

            </td>
        </tr>
        <tr>
         <td class="style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
          ControlToValidate="TextBox2" ErrorMessage="Enter Valid Password" 
          ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}" ></asp:RegularExpressionValidator></td>
        </tr>
            
        <tr>
           <td class="style2"><a href="Userprofile.aspx">
           <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
           
           </a></td>
        </tr>
         <tr>
           <td> <a  href="Register.aspx" > If Not Register</a> </td>
        </tr>
        
        </table>

    </div>




</body>
</asp:Content>
