<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="adddoctor.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 93px;
            height: 60px;
        }
        .auto-style3 {
            height: 60px;
            width: 298px;
        }
        .auto-style4 {
            width: 93px;
        }
        .auto-style5 {
            width: 93px;
            height: 64px;
        }
        .auto-style6 {
            height: 64px;
            width: 298px;
        }
        .auto-style7 {
            height: 60px;
            width: 110px;
        }
        .auto-style8 {
            height: 64px;
            width: 110px;
        }
        .auto-style9 {
            width: 110px;
        }
        .auto-style10 {
            width: 298px;
        }
        .auto-style11 {
            width: 22px;
            height: 60px;
        }
        .auto-style12 {
            width: 22px;
            height: 64px;
        }
        .auto-style13 {
            width: 22px;
        }
        .auto-style14 {
            width: 93px;
            height: 57px;
        }
        .auto-style15 {
            width: 22px;
            height: 57px;
        }
        .auto-style16 {
            height: 57px;
            width: 110px;
        }
        .auto-style17 {
            height: 57px;
            width: 298px;
        }
        .auto-style18 {
            width: 93px;
            height: 61px;
        }
        .auto-style19 {
            width: 22px;
            height: 61px;
        }
        .auto-style20 {
            height: 61px;
            width: 110px;
        }
        .auto-style21 {
            height: 61px;
            width: 298px;
        }
        .auto-style22 {
            width: 93px;
            height: 66px;
        }
        .auto-style23 {
            width: 22px;
            height: 66px;
        }
        .auto-style24 {
            width: 110px;
            height: 66px;
        }
        .auto-style25 {
            width: 298px;
            height: 66px;
        }
        .auto-style26 {
            width: 93px;
            height: 115px;
        }
        .auto-style27 {
            width: 22px;
            height: 115px;
        }
        .auto-style28 {
            width: 110px;
            height: 115px;
        }
        .auto-style29 {
            width: 298px;
            height: 115px;
        }
        .auto-style30 {
            width: 93px;
            height: 91px;
        }
        .auto-style31 {
            width: 22px;
            height: 91px;
        }
        .auto-style32 {
            width: 110px;
            height: 91px;
        }
        .auto-style33 {
            width: 298px;
            height: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h3 class="title">Doctor <span>Registration</span></h3>

    <table style="width: 100%; margin-left: 50px;">
        <tr>
            <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Label">Name:</asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="name" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Label">Email:</asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="email" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Label">Phone:</asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="phone" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Label">Home:</asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="home" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="Label5" runat="server" Text="Label">Place:</asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="place" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:Label ID="Label6" runat="server" Text="Label">City:</asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="city" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label7" runat="server" Text="Label">Country:</asp:Label>
            </td>
            <td class="auto-style19">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="country" DataValueField="country_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label8" runat="server" Text="Label">State:</asp:Label>
            </td>
            <td class="auto-style21">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="state" DataValueField="state_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT * FROM [state] WHERE ([country_id] = @country_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="country_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label9" runat="server" Text="Label">District:</asp:Label>
            </td>
            <td class="auto-style13">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="state" DataValueField="district_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT * FROM [districts] WHERE ([state_id] = @state_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="state_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style9">
                <asp:Label ID="Label10" runat="server" Text="Label">Pincode:</asp:Label>
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="pincode" runat="server" Height="33px" Width="376px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">
                <asp:Label ID="Label11" runat="server" Text="Label">Gender:</asp:Label>
            </td>
            <td class="auto-style27">
                <asp:RadioButtonList ID="gender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style28">
                <asp:Label ID="Label12" runat="server" Text="Label">Date of Birth:</asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="date_of_birth" runat="server" Height="33px" Width="376px" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:Label ID="Label13" runat="server" Text="Label">Select hospital:</asp:Label>
            </td>
            <td class="auto-style23">
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="hospital_name" DataValueField="hospital_id" Height="45px" Width="383px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT [hospital_id], [hospital_name] FROM [hospitals]"></asp:SqlDataSource>
            </td>
            <td class="auto-style24"></td>
            <td class="auto-style25">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30"></td>
            <td class="auto-style31">
                <asp:Button ID="Button1" runat="server" Height="27px" Text="Register" Width="199px" OnClick="Button1_Click1" />
                <input id="Reset1" type="reset" onclick="this.form.reset(); return false" value="Reset" /></td>
            <td class="auto-style32"></td>
            <td class="auto-style33"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>

</asp:Content>


