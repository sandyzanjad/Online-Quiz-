<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Addquestion.aspx.cs" Inherits="Quiz_Examination.Addquestion" %>
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

div.container {
  border-radius: 5px;
  background-color:;
  padding: 20px;
}
.rc
{
    margin-left:400px
}
.t1
{
    align:center;
    margin:auto 200px auto 200px;
    }
</style>
<body>

<h3>Add Question</h3>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

<div class="container">
  <form>
  <table class="rc">
  <tr>
  <td>
    <label for="qid"> Question ID </label>
  <asp:TextBox ID="TextBox1"  runat="server" placeholder="Question id"> </asp:TextBox>
 </td>
  </tr>

 
  
   <tr>
  <td>
    <label for="qname">Question</label>
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Your Question.."></asp:TextBox>
    </td>
  </tr>


   <tr>
  <td>
    <label for="option1">Option 1</label>
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Option 1...."></asp:TextBox>
    </td>
  </tr>
    <tr>
  <td>
     <label for="option2">Option 2</label>
    <asp:TextBox ID="TextBox4" runat="server" placeholder="Option 2...."></asp:TextBox>
    </td>
  </tr>
     <tr>
  <td>
     <label for="option3">Option 3</label>
    <asp:TextBox ID="TextBox5" runat="server" placeholder="Option 3...."></asp:TextBox>
     </td>
  </tr>
     <tr>
  <td><label for="option4">Option 4</label>
    <asp:TextBox ID="TextBox6" runat="server" placeholder="Option 4...."></asp:TextBox>
   </td>
  </tr>
   <tr>
  <td>
    <label for="correctanswer">Correct Answer</label>
  <asp:TextBox ID="TextBox8" runat="server" placeholder="Correct ans.."></asp:TextBox>
   
   </td>
  </tr>
   <tr>
  <td>

    <label for="examfid">Exam Foreign Id </label>

 <asp:TextBox ID="TextBox7" runat="server" placeholder="Exam f id" required></asp:TextBox> 
 </td>
  </tr>

  
  <tr>
  <td>
    <a href="#"><asp:Button ID="Button1" runat="server" Text="ADD" 
        onclick="Button1_Click1" />
    
    </a></td>
  </tr>
  </table>

  </form>
</div>
</body>

</asp:Content>
