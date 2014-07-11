<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_ManagePurchase, App_Web_q3m31vp5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .modalBackground
        {
            background-color: Black;
            opacity: 0.7;
        }
        
        #ContentPlaceHolder1_Panel1
        {
            background-color: White;
            border: 10px solid red;
            border-radius: 10px 10px 10px 10px;
            padding: 2%;
            box-shadow: 0px 0px 10px red;
        }
        
        #ContentPlaceHolder1_Panel1 table
        {
            width: 100%;
        }
        
        #ContentPlaceHolder1_Panel1 table, #ContentPlaceHolder1_Panel1 tr, #ContentPlaceHolder1_Panel1 td
        {
            border: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td align="left">
                <table class="TbForm">
                    <tr>
                        <td>
                            Product Name
                        </td>
                        <td>
                            <asp:DropDownList ID="drpProducts" runat="server" Width="300px" Height="30px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            QTY
                        </td>
                        <td>
                            <asp:TextBox ID="txtQTY" runat="server" Width="300px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Price
                        </td>
                        <td>
                            <asp:TextBox ID="txtPrice" runat="server" Width="300px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Total
                        </td>
                        <td>
                            <asp:TextBox ID="txtTotal" runat="server" Width="300px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Vendor Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtVname" runat="server" Width="300px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Vendor Address
                        </td>
                        <td>
                            <asp:TextBox ID="txtVAdd" runat="server" TextMode="MultiLine" Height="50px" Width="300px"
                                Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Vendor Contact No
                        </td>
                        <td>
                            <asp:TextBox ID="txtVMob" runat="server" Width="300px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Purchase Date
                        </td>
                        <td>
                            <asp:TextBox ID="txtPDate" runat="server" Width="300px" Height="30px" Required="Required"></asp:TextBox>
                            <cc1:CalendarExtender ID="PDate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtPDate">
                            </cc1:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td align="right">
                            <asp:Button ID="Button1" runat="server" Text="Submit" Height="40px" Width="100px"
                                OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td align="right" valign="top">
                <h1 class="MH1">
                    Past Purchase Orders</h1>
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="Tb"
                    OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="QTY">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("QTY") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("Total") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Purchase Date">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# bind("PurchaseDate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# bind("PurchaseID") %>'
                                    CommandName="Details">Details</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblTemp" runat="server" Text=""></asp:Label>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="lblTemp"
        PopupControlID="Panel1" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server">
        <div align="right">
            <a href="ManagePurchase.aspx">
                <img alt="Close" id="ImageButton1" height="30px" width="30px" title="Close" src="../ImgButtons/free-vector-close-button-red_101555_Close_Button_red.png" />
            </a>
            <%--<asp:ImageButton ID="ImageButton1" runat="server" Height="30px" Width="30px" ToolTip="Close"
                CommandName="Close" ImageUrl="~/ImgButtons/free-vector-close-button-red_101555_Close_Button_red.png" />--%>
        </div>
        <h1 class="MH1">
            Purchase Order Detail</h1>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="10"
            CellSpacing="10" OnItemCommand="DetailsView1_ItemCommand">
            <Fields>
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="QTY">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# bind("QTY") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# bind("Total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vendor Name">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# bind("VendorName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vendor Address">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# bind("VendorAddress") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Vendor Contact">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# bind("VendorContact") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Purchase Date">
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# bind("PurchaseDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
</asp:Content>
