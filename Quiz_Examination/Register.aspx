<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Quiz_Examination.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<style>
body 
{
    margin:10px 70px 10px 70px;
    background-color:#66ff66;
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

div.contain {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.t1
{
    align:center;
    margin:auto 200px auto 200px;
    }
</style>
<body>

<h3>Registration</h3>


    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

<div class="contain">
  <form>
    <label for="name"> Name </label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid name" 
        ControlToValidate="TextBox1" ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}"></asp:RegularExpressionValidator>
  
  <asp:TextBox ID="TextBox1"  runat="server" placeholder="Your name.."> </asp:TextBox>
  
  

 
   <!-- <input type="text" id="fname" name="name" placeholder="Your name..">-->
   
    <label for="uname">User Name</label><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid username" 
        ControlToValidate="TextBox2" ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}"></asp:RegularExpressionValidator>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Your username"></asp:TextBox>

   <!-- <input type="text" id="uname" name="username" placeholder="Your user name..">-->
    <label for="pass">Password</label><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid name" 
        ControlToValidate="TextBox3" ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}"></asp:RegularExpressionValidator>

    <asp:TextBox ID="TextBox3" runat="server" placeholder="Your password"></asp:TextBox>
   <!-- <input type="text" id="pass" name="password" placeholder="Your password.." -->
        
    <label for="cpass">confirm password</label><asp:CompareValidator 
        ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" 
        ControlToValidate="TextBox4" ErrorMessage="passsword do not  match"></asp:CompareValidator>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" placeholder="Confirm password.."></asp:TextBox>
    <!--<input type="text" id="cpass" name="conpass"
        placeholder="Your confirm password..">-->
    <label for="mob">Mobile Number</label><asp:RegularExpressionValidator 
        ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" 
        ErrorMessage="Invalid mobile no" 
        ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$"></asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="TextBox5" runat="server" placeholder="Mobile no."></asp:TextBox>
    <!--
    <input type="text" id="mob" name="mobno" placeholder="Your Mobile no...">-->
    
 
<label for="add">Address</label>
<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter valid name" 
        ControlToValidate="TextBox6" ValidationExpression="[A-Za-z][A-Za-z0-9._]{5,14}"></asp:RegularExpressionValidator>

<asp:TextBox ID="TextBox6" runat="server" placeholder="Address"></asp:TextBox>
    <!--<input type="text" id="add" name="address" placeholder="Your aaddress..">-->

   
    <label for="gender">Gender</label>
  <asp:DropDownList ID="DropDownList1" runat="server" placeholder="Gender" required>
      <asp:ListItem>Male</asp:ListItem>
      <asp:ListItem>Female</asp:ListItem>
  </asp:DropDownList>


    <label for="dob"> Date Of Birth </label>
<asp:RegularExpressionValidator 
        ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox7" 
        ErrorMessage="invalid date format" 
        ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"></asp:RegularExpressionValidator>
   
  &nbsp;<asp:TextBox ID="TextBox7" runat="server" placeholder="Date of Birth" required></asp:TextBox> 
  <!-- <input type="date" id="dob" name="date of birth" placeholder="Enter birth date">-->
  
    <a href="Userlogin.aspx"><asp:Button ID="Button1" runat="server" Text="Submit" 
        onclick="Button1_Click1" /></a>

  </form>
    
</div>

</body>
</asp:Content>
