<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="addpets.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 313px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3 class="title">Add <span>Pets</span></h3>

    <table style="width:100%; margin-left:250px;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Label">Pet category:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="508px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Label">Age:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="508px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Label">Photo:</asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="513px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="25px" OnClick="Button1_Click" Text="Save" Width="251px" />
                    <input id="Reset1" type="reset" value="Reset" /></td>
            </tr>
        </table>
   
</asp:Content>

