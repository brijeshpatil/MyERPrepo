<%@ page title="" language="C#" masterpagefile="~/Admin/AdminMasterPage.master" autoeventwireup="true" inherits="Admin_AddEmployee, App_Web_q3m31vp5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/MyTable.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%;">
        <tr>
            <td align="left">
                <table class="TbForm">
                    <tr>
                        <td>
                            First Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server" Width="350px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server" Width="350px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender
                        </td>
                        <td>
                            <asp:RadioButtonList ID="rdoGender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            User Name
                        </td>
                        <td>
                            <asp:TextBox ID="txtUname" runat="server" Width="350px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server" Width="350px" Height="30px" Required="Required"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Status
                        </td>
                        <td>
                            <asp:CheckBox ID="chkStatu" runat="server" Text="IsActive" Checked="true" Width="250px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                OnClick="btnSubmit_Click" Height="40px" Width="100px" />
                            &nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" 
                                Height="40px" Width="100px" onclick="btnCancel_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td align="right">
            <h1 class="MH1">Manage Employee</h1>
            <br /><br />
                <asp:GridView ID="GridEmployee" runat="server" AutoGenerateColumns="False" DataKeyNames="EmpID"
                    OnRowCommand="GridEmployee_RowCommand" CssClass="Tb" 
                    CellPadding="10" CellSpacing="10">
                    <Columns>
                        <asp:TemplateField HeaderText="First Name">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# bind("Fname") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# bind("Lname") %>'></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" Checked='<%# bind("IsActive") %>' />
                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandName="Status" CommandArgument='<%# bind("EmpID") %>'
                                    Text='<%# bind("IsActive") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Change" CommandArgument='<%# bind("EmpID") %>'>Change</asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <%--<ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Delete" OnClientClick="return confirm('Are you sure to delete this Employee?');"
                                    CommandArgument='<%# bind("EmpID") %>'>Delete</asp:LinkButton>
                            </ItemTemplate>--%>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
