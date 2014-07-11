<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_ManageCategory, App_Web_q3m31vp5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="Tb"
        DataKeyNames="CatID" GridLines="Horizontal" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowcommand="GridView1_RowCommand" 
        onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
        ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:TemplateField HeaderText="Category ID">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("CatID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("CatID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("CatName") %>'></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"  Required="Required" ></asp:TextBox>
                    &nbsp;<asp:Button ID="Button1" runat="server" CommandName="Add" Text="Add" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("CatName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <%--<asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" 
                        onclientclick="return confirm('Are you sure to delete this Category??')">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>--%>
        </Columns>
        <EmptyDataTemplate>
            <h3>No Category Found To Display...</h3>
        </EmptyDataTemplate>
    </asp:GridView>

</asp:Content>

