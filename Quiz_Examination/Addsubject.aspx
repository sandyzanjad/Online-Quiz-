<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Addsubject.aspx.cs" Inherits="Quiz_Examination.Addsubject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">



<style>
body 
{
    margin:10px 75px 10px 100px;
    background-color:#ffffff;
  font-family: Arial;
}
h3
{
    text-align:center;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
.rc
{
    margin-left:400px;
}

div.container {
  border-radius: 5px;
  background-color:;
  padding: 20px;
}
.t1
{
    align:center;
    margin:auto 200px auto 200px;
    }
</style>
<body>

<h3>Add Subject</h3>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Label ID="Label1" runat="server" text-align="center" Text=""></asp:Label>

<div class="container">
  <form>
  <table class="rc">
 <tr>  
 <td>  <label for="subid"> Subject ID  </label>
  <asp:TextBox ID="TextBox1"  runat="server" placeholder="Subject id.."> </asp:TextBox></td></tr>


   <tr>  
 <td> <label for="subname">Subject Name</label>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Subject name.."></asp:TextBox></td></tr>

   
    <tr>  
 <td> <a href="#"><asp:Button ID="Button1" runat="server" Text="ADD" 
        onclick="Button1_Click1" />
    </a></td></tr>

 </table>
  </form>
    
</div>

</body>




</asp:Content>
