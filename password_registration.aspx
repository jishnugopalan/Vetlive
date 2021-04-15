<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="password_registration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 208px;
        }
        .auto-style2 {
            width: 758px;
        }
        .auto-style3 {
            width: 208px;
            height: 26px;
        }
        .auto-style4 {
            width: 758px;
            height: 26px;
        }
        .auto-style5 {
            width: 208px;
            height: 48px;
        }
        .auto-style6 {
            width: 758px;
            height: 48px;
        }
        .auto-style7 {
            width: 208px;
            height: 50px;
        }
        .auto-style8 {
            width: 758px;
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h3 class="title">User <span>Registration</span></h3>

    <table style="width: 100%; height: 141px; margin-left:200px; margin-right:200px">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Label">Password:</asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="password" runat="server" Height="41px" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Label">Confirm Password:</asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="400px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter above password" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Label">Select Security Question:</asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="security_question" runat="server" Height="54px" Width="400px">
                    <asp:ListItem Selected="True">Enter your pet name</asp:ListItem>
                    <asp:ListItem>Enter your nick name</asp:ListItem>
                    <asp:ListItem>Enter your favorite food </asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Label">Security Answer:</asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="security_answer" runat="server" Height="41px" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <input id="Reset1" type="reset" value="Reset" /></td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

