<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_AdminHome, App_Web_q3m31vp5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
        
        #ShortLinks
        {
            font-family: Verdana;
            color: #fe7e01;
            font-weight: bold;
            width: 100%;
            border: 0px solid red;
            border-radius: 20px 20px 20px 20px;
            box-shadow:0px 0px 0px black;
        }
        
        
        
        #ShortLinks tr .STD
        {
            border: 0px solid #fe7e01;
            border-radius: 10px 10px 10px 10px;
            padding:2%;
        }
        
        #ShortLinks tr .STD:hover
        {
            box-shadow: 0px 0px 10px black;
            background-color: #fe7e01;
            opacity: 0.8;
            color: Black;
        }
        
        h2
        {
            font-family: Verdana;
            color: #fe7e01;
            font-size: xx-large;
        }
        
        .hr
        {
            border: 2px solid black;
            width: 50%;
            margin: 3%;
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
                    <asp:TextBox ReadOnly="true" ID="txtUName" runat="server" Text="brijesh" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <asp:TextBox ReadOnly="true" ID="txtPass" runat="server" Text="brij@123" CssClass="txt"></asp:TextBox>
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
                    <%--<asp:LinkButton ID="lnkForeGetPAss" runat="server" OnClick="lnkForeGetPAss_Click" >Forget Password??</asp:LinkButton>--%>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblError" runat="server" Text=" "></asp:Label>
    </asp:Panel>
    <table id="ShortLinks" align="center" cellpadding="10" cellspacing="10">
        <tr>
            <td align="center" colspan="3">
                <center>
                    <h2>
                        ...Short Links...</h2>
                </center>
                <hr class="hr" />
            </td>
        </tr>
        <tr>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../shortlinks/emp.png" height="200px" width="200px" PostBackUrl="~/Admin/AddEmployee.aspx" />
                <br />
                <br />
                Manage Employee
            </td>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="../shortlinks/product.png" height="200px" width="200px" PostBackUrl="~/Admin/ManageProduct.aspx"/>
                <br />
                <br />
                Manage Product
            </td>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="../shortlinks/Category.png" height="200px" width="200px" PostBackUrl="~/Admin/ManageCategory.aspx" />
                <br />
                <br />
                Manage Category
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <hr class="hr" />
            </td>
        </tr>
        <tr>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="../shortlinks/subcat.png" height="200px" width="200px" PostBackUrl="~/Admin/ManageSubCat.aspx" />
                <br />
                <br />
                Manage SubCategory
            </td>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="../shortlinks/passwordReq.png" height="200px" width="200px" PostBackUrl="~/Admin/PassRequest.aspx" />
                <br />
                <br />
                Manage Password Request
            </td>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="../shortlinks/dailyorder.png" height="200px" width="200px" PostBackUrl="~/Admin/DailyOrders.aspx" />
                <br />
                <br />
                View Daily Orders
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <hr class="hr" />
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center" class="STD">
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="../shortlinks/puchase.png" height="200px" width="200px" PostBackUrl="~/Admin/ManagePurchase.aspx" />
                <br />
                <br />
                Manage Purchase Orders
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <hr class="hr" />
            </td>
        </tr>
    </table>
</asp:Content>
