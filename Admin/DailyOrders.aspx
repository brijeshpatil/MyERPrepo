<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_DailyOrders, App_Web_q3m31vp5" %>

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
            border: 10px solid #FC7D01;
            border-radius: 10px 10px 10px 10px;
            
            box-shadow: 0px 0px 10px #FC7D01;
        }
        
        #ContentPlaceHolder1_Panel1 table
        {
            width: 100%;
        }
        
        #ContentPlaceHolder1_Panel1 table, #ContentPlaceHolder1_Panel1 tr, #ContentPlaceHolder1_Panel1 td
        {
            border: 0px;
        }
       .Tb
       {
           box-shadow: 0px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:GridView ID="GridView1" runat="server" CssClass="Tb" AutoGenerateColumns="False"
        OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="Employee Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("fname")+" "+Eval("lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order No">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("DOID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Grand Total">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("GrandTotal") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Date">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("OrderDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# bind("DOID") %>'
                        CommandName="Details">Details</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="lblPop" runat="server" Text=""></asp:Label>
    <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="lblPop"
        PopupControlID="Panel1" BackgroundCssClass="modalBackground">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="Panel1" runat="server" Height="450px" ScrollBars="Vertical">

    <asp:GridView ID="GridODetails" runat="server" AutoGenerateColumns="False" CssClass="Tb" Width="100%" GridLines="Horizontal">
            <Columns>
                <asp:TemplateField HeaderText="Order Detail">
                    <ItemTemplate>
                   <table>
                            <tr>
                                <td rowspan="5">
                                    <asp:Image ID="Image1" runat="server" Height="120px" Width="150px" 
                                        ImageUrl='<%# bind("ProductImage") %>' />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPName" runat="server" Text='<%# bind("ProductName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblPrice" runat="server" Text='<%# bind("Price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblQTY" runat="server" Text='<%# bind("QTY") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblTotal" runat="server" Text='<%# bind("Total") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Employee Name</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" 
                                        Text='<%# Eval("fname")+" "+Eval("lname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Customer Name</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text='<%# bind("CustomerName") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Payment Type</td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# bind("PayType") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>Order Date</td>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text='<%# bind("OrderDate") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td align="right">
                                    <asp:LinkButton ID="lnkDone" CommandName="Done" runat="server">Done</asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <hr />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
     
    </asp:Panel>
</asp:Content>
