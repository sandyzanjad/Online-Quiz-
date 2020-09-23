<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Setexams.aspx.cs" Inherits="Quiz_Examination.Setexams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #269900;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>

<div class="topnav">
  <a href="Addsubject.aspx">Add Subject</a>
  <a href="Addexam.aspx">Add Exam</a>
  <a href="Addquestion.aspx">Add Question</a>
  
</div>



</body>
</asp:Content>
