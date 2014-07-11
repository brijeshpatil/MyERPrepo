<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_ManageSubCat, App_Web_q3m31vp5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="Tb"
        GridLines="Horizontal" onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowcommand="GridView1_RowCommand" onrowediting="GridView1_RowEditing" 
        ShowHeaderWhenEmpty="True" DataKeyNames="SubCatID" 
         onrowupdating="GridView1_RowUpdating">
        <Columns>
            <asp:TemplateField HeaderText="SubCategoryID">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("SubCatID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("SubCatID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category Name">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </EditItemTemplate>
                <HeaderTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("CatName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SubCategoryName">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("SubCatName") %>' Required="Required"></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Required="Required"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" CommandName="Add" Text="Add" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("SubCatName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <%--<asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" 
                        onclientclick="return confirm('Are you sure to delete this SubCategory??')">Delete</asp:LinkButton>
                </ItemTemplate>
                <EditItemTemplate></EditItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <EmptyDataTemplate>
            <h3>No Subcategory Found To Display.!!!</h3>
        </EmptyDataTemplate>
    </asp:GridView>


</asp:Content>

