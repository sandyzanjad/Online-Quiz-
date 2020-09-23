<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Addexam.aspx.cs" Inherits="Quiz_Examination.Addexam" %>
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
.rc
{
    margin-left:400px;
}


input[type=submit]:hover {
  background-color: #45a049;
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

<h3>Add Exam</h3>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

<div class="container">
  <form>
  <table class="rc">
  <tr><td>
    <label for="examid"> Examid </label>
  <asp:TextBox ID="TextBox1"  runat="server" placeholder="Your id"> </asp:TextBox>
  </td></tr>
  

 
  
   <tr><td>
    <label for="examname">Exam Name</label>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Your exam name"></asp:TextBox>
    </td></tr>


   <tr><td>
    <label for="examdate">Exam date</label>
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Exam date...."></asp:TextBox>
   </td></tr>
   <tr><td>
    <label for="duration">Duration</label>
<asp:TextBox ID="TextBox4" runat="server" placeholder="Duration.."></asp:TextBox>
</td></tr>
   <tr><td>
    <label for="marks">Marks</label>
<asp:TextBox ID="TextBox5" runat="server" placeholder="Marks.."></asp:TextBox>
   </td></tr>
      <tr><td>
<label for="totalquestion">Total Question</label>
<asp:TextBox ID="TextBox6" runat="server" placeholder="Total question.."></asp:TextBox>
   </td></tr>
    <tr><td>
    <label for="exampassmarks">Exam Pass Marks</label>
  <asp:TextBox ID="TextBox8" runat="server" placeholder="Exam pass Marks.."></asp:TextBox>
   </td></tr>


    <tr><td>
    <label for="subfid">Subject Foreign key </label>
 <asp:TextBox ID="TextBox7" runat="server" placeholder="Sub f id" ></asp:TextBox> 
  </td></tr>
   <tr><td>
    <a href="#"><asp:Button ID="Button1" runat="server" Text="ADD" 
        onclick="Button1_Click1" />
    </a></td></tr>
    </table>
  </form>
    
</div>

</body>


</asp:Content>
