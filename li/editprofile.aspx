<%@ Page Title="" Language="C#" MasterPageFile="~/li/MasterPage.master" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Inherits="li_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 555px;
        }
        .auto-style2 {
            width: 555px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <table style="width: 93%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label">Name:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Label">Phone:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Label">Home:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Label">Place</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="34px" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Label">City</asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="540px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Label">Gender:</asp:Label>
                </td>
                <td class="auto-style3">
                <asp:RadioButtonList ID="gender" runat="server" Width="75px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Text="Label">Pincode:</asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox6" runat="server" Height="34px" Width="540px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="39px" Text="Update" Width="178px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

