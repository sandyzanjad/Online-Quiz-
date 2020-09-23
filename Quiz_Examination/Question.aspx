<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="Quiz_Examination.Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
p 
{
    font-style:italic;
  text-align: right;
  font-size: 20px;
  margin-right:40px;
}
</style>
</head>
<body>
<script>
    var timer = {
        paused: true,
        active_interval: null,
        initial: null,
        seconds: 300,
        callbacks: {},
        truncate: function (x) {
            return x > 0 ? Math.floor(x) : Math.ceil(x);
        },
        format_seconds: function (seconds) {
            var sign = seconds >= 0 ? "" : "-";
            var min = Math.abs(timer.truncate(seconds / 60));
            var sec = ("0" + Math.abs(seconds % 60)).slice(-2);
            return "" + sign + min + ":" + sec;
        },
        start: function () {
            timer.paused = false;
            if (timer.active_interval == null)
                timer.active_interval = setInterval(timer.tick, 1000);
        },
        stop: function () {
            timer.paused = true;
            if (timer.active_interval != null) {
                clearInterval(timer.active_interval);
                timer.active_interval = null;
            }
        },
        pause: function () {
            timer.paused ? timer.start() : timer.stop();
        },
        reset: function () {
            timer.stop();
            timer.seconds = timer.initial;
            if (typeof timer.callbacks.on_tick === "function")
                timer.callbacks.on_tick(timer.human_time());
        },
        tick: function () {
            if (!timer.paused) {
                timer.seconds -= 1;
                if (typeof timer.callbacks.on_tick === "function")
                    timer.callbacks.on_tick(timer.human_time());
                if (typeof timer.callbacks[timer.seconds] === "function")
                    timer.callbacks[timer.seconds]();
            }
        },
        human_time: function () {
            return timer.format_seconds(timer.seconds);
        },
        init: function (callbacks) {
            timer.seconds = timer.duration();
            timer.initial = timer.seconds;
            if (callbacks != null) {
                timer.callbacks = callbacks;
            }
        },
        duration: function () {
            var query = window.location.search.substring(1);
            if (query) {
                var pair = query.split("=");
                if (pair[0] == 'd') {
                    return pair[1];
                }
            }
            return timer.seconds;
        }
    };
</script>
</body>
 <!--Question code -->
 
 <style>

 h2
 {
    text-align:left;
    margin-left:30px;
 }
 h3
 {
    text-align:left;
    margin-left:70px;
 }

 </style>
 

 <h2 class="m-4">Answer all the questions</h2>
    <hr />
    <asp:GridView ID="gridview_examquestion" runat="server" 
        AutoGenerateColumns="False" GridLines="None" 
        onselectedindexchanged="gridview_examquestion_SelectedIndexChanged" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblid" runat="server" Text='<%# Eval("qid") %>' Visible="false"></asp:Label>
                  <h2>  <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("qname") %>'></asp:Label></h2>
                    
                   <h3> <asp:RadioButton GroupName="a" Text='<%# Eval("option1") %>' ID="option_one"   runat="server" /></h3>
                    
                    <h3><asp:RadioButton GroupName="a" Text='<%# Eval("option2") %>' ID="option_two" runat="server" /></h3>
                    
                    <h3><asp:RadioButton GroupName="a" Text='<%# Eval("option3") %>' ID="option_three"  runat="server" /></h3>
                   
                  <h3>  <asp:RadioButton GroupName="a" Text='<%# Eval("option4") %>' ID="option_four"  runat="server" /></h3>
                    <hr />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QuizConnectionString17 %>" 
        
        SelectCommand="SELECT [qid], [qname], [option1], [option2], [option3], [option4] FROM [Question]">
    </asp:SqlDataSource>
    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btn_submit_Click" />
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>

</asp:Content>
