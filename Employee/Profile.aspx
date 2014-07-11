<%@ page title="" language="C#" masterpagefile="~/Employee/EmployeeMasterPage.master" autoeventwireup="true" inherits="Employee_Profile, App_Web_klilulvz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TbForm">
        <tr>
            <td>
                Username
            </td>
            <td>
                <asp:TextBox ID="txtUName" Enabled="false" runat="server" Height="30px" 
                    Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Old Password
            </td>
            <td>
                <asp:TextBox ID="txtOPass" runat="server" Height="30px" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                New Password
            </td>
            <td>
                <asp:TextBox ID="txtNPass" runat="server" Height="30px" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Confirm Password
            </td>
            <td>
                <asp:TextBox ID="txtCPass" runat="server" Height="30px" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Change" Height="40px" 
                    onclick="Button1_Click" Width="100px" />
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
</asp:Content>
