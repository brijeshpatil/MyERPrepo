<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_ManageProduct, App_Web_q3m31vp5" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function chkDel() {
            
        }
        
    </script>
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
            padding: 1%;
            box-shadow: 0px 0px 10px red;
            width: 30%;
        }
        
        #ContentPlaceHolder1_Panel1 table, #ContentPlaceHolder1_Panel1 tr, #ContentPlaceHolder1_Panel1 td
        {
            border: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
    <table width="100%">
        <tr>
            <td>
                <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>--%>
                <table class="TbForm">
                    <tr>
                        <td>
                            <asp:DropDownList ID="drpCategory" runat="server" Width="350px" Height="30px" AutoPostBack="True"
                                OnSelectedIndexChanged="drpCategory_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="drpSubCat" runat="server" Width="350px" Height="30px" Required="Required">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtProductName" runat="server" Width="350px" PlaceHolder="Product Name"
                                Required="Required" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Product Image
                            <asp:FileUpload ID="fpProductImage" runat="server" Required="Required" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtPrice" runat="server" Width="350px" PlaceHolder="Product Price"
                                Required="Required" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtQTY" runat="server" Width="350px" PlaceHolder="Product QTY" Height="30px"
                                Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtMDGDate" runat="server" Width="350px" PlaceHolder="Product MFG Date"
                                Required="Required" Height="30px"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtMDGDate_CalendarExtender" runat="server" PopupPosition="Right"
                                Enabled="True" TargetControlID="txtMDGDate">
                            </cc1:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtEXPDate" runat="server" Width="350px" PlaceHolder="Product EXP Date"
                                Required="Required" Height="30px"></asp:TextBox>
                            <cc1:CalendarExtender ID="txtEXPDate_CalendarExtender" runat="server" PopupPosition="Right"
                                Enabled="True" TargetControlID="txtEXPDate">
                            </cc1:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:CheckBox ID="chkInStock" runat="server" Text="Is this product in Stock??" TextAlign="Left"
                                Height="30px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="40px" Width="100px"
                                OnClick="btnSubmit_Click" />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblErrorProduct" runat="server" Text=""></asp:Label>
                <%--   </ContentTemplate>
                </asp:UpdatePanel>--%>
            </td>
            <td align="right">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
                    ShowHeader="true" ShowFooter="true" CssClass="Tb" DataKeyNames="ProductID">
                    <Columns>
                       <%-- <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox2" runat="server" />
                            </ItemTemplate>
                            <HeaderTemplate>
                                <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="true" OnCheckedChanged="CheckBox3_CheckedChanged"
                                    ToolTip="Select All" />
                            </HeaderTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="DeleteAll" OnClientClick="return chkDel();">Delete</asp:LinkButton>
                            </FooterTemplate>
                        </asp:TemplateField>--%>
                        <asp:TemplateField HeaderText="Product Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# bind("ProductImage") %>'
                                    Width="100px" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("QTY") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Show">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# bind("ProductID") %>'
                                    CommandName="Show">Show</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Label4"
        PopupControlID="Panel1" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    <asp:Panel ID="Panel1" runat="server">
        <table align="right">
            <tr>
                <td>
                    <a href="ManageProduct.aspx">
                        <img alt="Close" id="ImageButton1" height="20px" width="20px" src="../ImgButtons/free-vector-close-button-red_101555_Close_Button_red.png"
                            title="Close" />
                    </a>
                    <%--              <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" Width="20px" ImageUrl="~/ImgButtons/free-vector-close-button-red_101555_Close_Button_red.png"
                            ToolTip="Close" OnClick="ImageButton1_Click" />--%>
                </td>
            </tr>
        </table>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" OnModeChanging="DetailsView1_ModeChanging"
            CellPadding="10" OnItemUpdating="DetailsView1_ItemUpdating">
            <Fields>
                <asp:TemplateField HeaderText="Product Image">
                    <EditItemTemplate>
                        <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# bind("ProductImage") %>'
                            Width="100px" />
                        <br />
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl='<%# bind("ProductImage") %>'
                            Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# bind("CatName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sub Category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# bind("SubCatName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("ProductName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="QTY">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("QTY") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# bind("QTY") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="MFGDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("MFGDate") %>'></asp:TextBox>
                        <cc1:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="TextBox4">
                        </cc1:CalendarExtender>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# bind("MFGDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EXPDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("EXPDate") %>'></asp:TextBox>
                        <cc1:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="TextBox5">
                        </cc1:CalendarExtender>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# bind("EXPDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="In Stock">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# bind("InStock") %>' />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# bind("InStock") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </asp:Panel>
</asp:Content>
