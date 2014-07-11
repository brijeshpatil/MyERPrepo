<%@ page title="" language="C#" masterpagefile="~/Employee/EmployeeMasterPage.master" autoeventwireup="true" inherits="Employee_EmployeeHome, App_Web_klilulvz" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
    <style type="text/css">
        #ContentPlaceHolder1_pnlLogin
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
        
        #ContentPlaceHolder1_pnlLogin a
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
    <asp:Label ID="lblTemp" runat="server" Text=""></asp:Label>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="lblTemp"
        PopupControlID="pnlLogin" BackgroundCssClass="PopUpBack">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="pnlLogin" runat="server" align="center">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <span class="MyLogo" align="left">Login Here... </span>
                <table cellspacing="10" class="Tbl">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            User Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtUName" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="right">
                            <asp:LinkButton ID="lnkForeGetPAss" runat="server" 
                                onclick="lnkForeGetPAss_Click">Forget Password??</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <span class="MyLogo" align="left">Forget Password... </span>
                <table cellspacing="10" class="Tbl">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            User Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtFUserName" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Send Request" CssClass="btn" 
                                onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
        <asp:Label ID="lblError" runat="server" Text=" "></asp:Label>
    </asp:Panel>
</asp:Content>
