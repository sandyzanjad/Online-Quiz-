﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeBehind="Timer.aspx.cs" Inherits="Quiz_Examination.Timer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="a" runat="server">

<p id="demo"></p>
 <script>
        
     // Set the date we're counting down to
     var countDownDate = new Date("march 26, 2019 17:20:00").getTime();

     // Update the count down every 1 second
     var x = setInterval(function () {

     // Get todays date and time
     var now = new Date().getTime();

     // Find the distance between now and the count down dat
     var distance = countDownDate - now;

     // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
     var seconds = Math.floor((distance % (1000 * 60)) / 1000);

     // Output the result in an element with id="demo"
     document.getElementById("demo").innerHTML =      seconds + "s ";

     // If the count down is over, write some text 
     if (distance < 0) {
     clearInterval(x);
     document.getElementById("demo").innerHTML = "EXPIRED";
     }
     }, 1000);
</script>
</asp:Content>
