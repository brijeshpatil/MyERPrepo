<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_Profile, App_Web_q3m31vp5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #ContentPlaceHolder1_Panel1
        {
            width: 50%;
            border: 0px solid red;
            padding: 2%;
            font-family: Verdana;
            color: White;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 10px red;
            background-color: #047319;
            font-size: larger;
        }
        
        #ContentPlaceHolder1_Panel1 a
        {
            color: Red;
            font-weight: bold;
        }
        
        .txt
        {
            width: 350px;
            height: 30px;
            border-radius: 10px 0px 10px 0px;
            padding-left: 10px;
            font-size: large;
        }
        
        .btn
        {
            border-radius: 0px 10px 0px 10px;
            width: 100px;
            height: 35px;
            background-color: black;
            color: White;
            border: 1px solid white;
            font-weight: bold;
        }
        
        .MyLogo
        {
            font-size: x-large;
            font-family: Cursive;
        }
        .PopUpBack
        {
            background-color: Black;
            opacity: 0.8;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Label1"
        PopupControlID="Panel1" BackgroundCssClass="PopUpBack">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server">
        <h1 class="MH1">
            Change Password</h1>
        <br />
        <br />
        <table align="center">
            <tr>
                <td>
                    UserName
                </td>
                <td>
                    <asp:TextBox ID="txtUName" runat="server" CssClass="txt" BackColor="#F7FAFE" Required="Required"
                        Enabled="False" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Old Password
                </td>
                <td>
                    <asp:TextBox ID="txtOPass" runat="server" CssClass="txt" Required="Required"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    New Password
                </td>
                <td>
                    <asp:TextBox ID="txtNPass" runat="server" CssClass="txt" Required="Required"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password
                </td>
                <td>
                    <asp:TextBox ID="txtCPass" runat="server" CssClass="txt" Required="Required"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Change" CssClass="btn" OnClick="Button1_Click" Enabled="false" />&nbsp;
                    <%--<asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn" 
                        onclick="Button2_Click" />--%>
                    <a href="AdminHome.aspx">
                        <input id="Button2" type="button" value="Cancel" class="btn" />
                        </a>
                </td>
            </tr>
        </table>
        <div align="center">
        <asp:Label ID="lblError" runat="server" ForeColor="OrangeRed" Font-Bold="true" Text="Service is Temporarily Not Available..<br/>Please Try Again Later."></asp:Label>
        </div>
    </asp:Panel>
</asp:Content>
