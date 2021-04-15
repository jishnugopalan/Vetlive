<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        height: 20px;
    }
    .auto-style2 {
        height: 20px;
        width: 348px;
    }
    .auto-style3 {
        width: 348px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Enter your current password:"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="478px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Submit" Width="96px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Password:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="password" runat="server" Height="41px" Width="400px" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Confirm Password:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="41px" Width="400px" Visible="False"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Please enter above password" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Select Security Question:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="security_question" runat="server" Height="54px" Width="400px" Visible="False">
                    <asp:ListItem Selected="True">Enter your pet name</asp:ListItem>
                    <asp:ListItem>Enter your nick name</asp:ListItem>
                    <asp:ListItem>Enter your favorite food </asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="Security Answer:" Visible="False"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="security_answer" runat="server" Height="41px" Width="400px" Visible="False" Wrap="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            </td>
            <td class="auto-style1">
                <asp:Button ID="Button2" runat="server" Height="31px" OnClick="Button2_Click" Text="Update" Visible="False" Width="144px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
</asp:Content>

