<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="www.aspx.cs" Inherits="Quiz_Examination.www" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">
    <asp:Table ID="Table1" runat="server" >
    <tr>
    <td> 
    <asp:Label ID="lblid" runat="server" Text='<%# Eval("qid") %>' Visible="false"></asp:Label>
                    <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("qname") %>'></asp:Label>
    </td>
    <</tr>
    </asp:Table>
</asp:Content>
