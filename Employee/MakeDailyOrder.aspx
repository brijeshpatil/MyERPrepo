<%@ page title="" language="C#" masterpagefile="~/Employee/EmployeeMasterPage.master" autoeventwireup="true" inherits="Employee_MakeDailyOrder, App_Web_klilulvz" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table width="100%">
        <tr>
            <td>
                <table class="TbForm" align="left">
                    <tr>
                        <td>
                            Product Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtProductName" runat="server" AutoPostBack="True" OnTextChanged="txtProductName_TextChanged"
                                PlaceHolder="Please Insert ProductName Here!" Height="30px" Width="350px"></asp:TextBox>
                            <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtProductName"
                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000"
                                ServiceMethod="GetProduct">
                            </cc1:AutoCompleteExtender>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            QTY
                        </td>
                        <td>
                            <asp:TextBox ID="txtQTY" runat="server" Height="30px" Width="350px" PlaceHolder="Enter Required Quantities"
                                Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <%--   <tr>
                        <td>
                            Total
                        </td>
                        <td>
                            <asp:TextBox ID="txtTotal" runat="server" Enabled="false" ForeColor="Black" BackColor="White"
                                Height="30px" Width="350px"></asp:TextBox>
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            PayType
                        </td>
                        <td>
                            <asp:DropDownList ID="drpPaType" runat="server" Height="30px" Width="355px" Enabled="False">
                                <asp:ListItem Value="0">Cash</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Customer Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtCName" runat="server" Height="30px" Width="350px" PlaceHolder="Enter Customer Name"
                                Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click"
                                Enabled="False" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
            <td align="right" valign="top">
                <asp:GridView ID="GridOrders" runat="server" CssClass="Tb" AutoGenerateColumns="False"
                    OnDataBound="GridOrders_DataBound" OnRowEditing="GridOrders_RowEditing" OnRowUpdating="GridOrders_RowUpdating"
                    ShowFooter="True" OnRowCommand="GridOrders_RowCommand" OnRowCancelingEdit="GridOrders_RowCancelingEdit"
                    OnRowDeleting="GridOrders_RowDeleting">
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label1_1" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="QTY">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("QTY") %>' Width="50px"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <div align="right">
                                    <asp:Label ID="Label4" runat="server" Text="Grand Total"></asp:Label>
                                </div>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("QTY") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <FooterTemplate>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("STotal") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="Label3_3" runat="server" Text='<%# bind("STotal") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Update">Update</asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:Button ID="Button2" runat="server" CommandName="Order" CssClass="btn" Text="Order" />
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
