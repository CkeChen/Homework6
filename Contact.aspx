﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="stylesheet" type="text/css" href="style.css" />
    <title></title>
</head><center>Ke's Easy Recipt</center>
    <center>Using 5 ingresients or Less!</center>
<CENTER><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
        &nbsp;I
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AboutUS.aspx">About Us</asp:HyperLink>
        &nbsp;I
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Newstate.aspx">Add a New Recipt</asp:HyperLink>
        &nbsp;I
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink></CENTER>
        <br />
<body>
    <form id="form1" runat="server">
    
    <div></div>
        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
<center>Your Email Address:</center>
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Your Message:<br />
        <asp:TextBox ID="senderMessage" runat="server" Height="278px" TextMode="MultiLine" Width="454px"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Button ID="sendMail" runat="server" Text="Send" />
        <br />
&nbsp;
        <asp:Label ID="confirmSent" runat="server"></asp:Label>
    </form>
</body>
</html>
