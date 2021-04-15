<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Enter your Email:"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="441px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Security Question:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="440px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Type Answer:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="440px"></asp:TextBox>
    <br />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Visible="False" />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="New Password:" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="440px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Confirm Password:" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="440px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Visible="False" />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

