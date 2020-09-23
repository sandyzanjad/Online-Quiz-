<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="Quiz_Examination.Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">
    <h3 >
        <asp:Label ID="lbl_subjectexam" runat="server" Text="Online Quiz"></asp:Label>
        ALL Subject Exams</h3>
    <hr />
    <head>
    <style>
    h3
    {
     text-align:center;
     color:Green;
        }
        li
        {
           text-align:center; 
        }
          table
        {
           text-align:center;
           font-size:medium;
           align:center; 
           margin-left:580px;
           color:Purple;
        }
        
        
        
    </style>
    </head>
    
    <div class="row">
   
                        <h3 class="card-header">Exam name: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
                        
                        <ul class="list-group list-group-flush">
                         <table class="a1">

        <tr><td>
                         <li class="list-group-item">Pass Marks: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></li></td></tr>
                        <tr><td>  <li class="list-group-item">Total Marks: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></li></td></tr>
                         <tr><td> <li class="list-group-item">Exam duration: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></li></td></tr>
                         <tr><td> <li class="list-group-item">Exam id: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></li></td></tr>
                         
                         <tr><td> 
                              
                            <a href="Question.aspx"> <asp:Button ID="Button1" runat="server" CssClass="btn btn-success"
                                 Text="Take Exam" onclick="Button1_Click" /></a>

                                 </td></tr>
                                 
                                 </table>
                        </ul>
                    </div>
                    
                
        
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <asp:Panel ID="panel_examshow_warning" runat="server" Visible="false">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_examshowwarning" runat="server" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
