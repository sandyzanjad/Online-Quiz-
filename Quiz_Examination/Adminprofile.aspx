<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Adminprofile.aspx.cs" Inherits="Quiz_Examination.Adminprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">


    <style>
    fieldset
    {
        padding:10px 10px 10px 10px;
        width: 60%;
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
    fieldset table{
             align:center;
             text-align:center; 
             margin:5px auto 5px auto ;  
             
    }
        
    .t2{
             color: Red;
             vertical-align:top;
	         padding:5px;
	         font-size:xx-large;
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
             width:300px;
 
        }
    .b1{
             background-color: white; 
             color: red; 
             border: 2px solid #f44336;
             border-radius:40px;
             width:200px;
             height:40px;

             }
             .h3
             {
                 text-align:center;
                 color:Blue;
             }
        .b1:hover {
           
            background-color: #f44336;
            color: white;
         }
         .c
         {
             color:red;
             }
   
    
</style>
<body>
    <fieldset> 
   
        <legend>Your Profile</legend>
        <table>
        <td>
        <table>
            <tr>
                <td><asp:Label ID="Label1"  CssClass="t2" runat="server" Text="Username : "></asp:Label></td>
                <td><asp:Label ID="Label2" CssClass="t2" runat="server" Text="Label"></asp:Label></td>
               
            </tr>
            <tr>
                
                <td><asp:Button ID="Btn1" runat="server" Text="Password" onclick="Btn1_Click" 
                        BackColor="#00CC66" ForeColor="#FF3300" Height="45px" Width="132px" 
                         /></td>
                <td><asp:Label ID="Label4" CssClass="t2" runat="server"  Visible="false" Text="Label"></asp:Label></td>
            </tr>
        </table>
        </td>
       <!-- <td>
        <table>
            <tr>
              <td><asp:TextBox CssClass="t1" ID="TextBox1" runat="server" placeholder=" Change Password" TextMode="Password" required></asp:TextBox></td>
            </tr>
            <tr>
              <td><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter Valid Password" 
                ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" CssClass="c"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
             <td><asp:Button CssClass="b1"  ID="Button1" runat="server" Text="Submit"/></td>
            </tr>

        </table>
        </td>-->
        </table>
        
    </fieldset>
    </body>

</asp:Content>
