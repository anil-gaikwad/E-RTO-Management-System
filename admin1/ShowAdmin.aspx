<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="ShowAdmin.aspx.cs" Inherits="ShowAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        <br />
    <br />
    <br />
    <h1 style="text-align:center;background-color:green">MANAGE ADMIN</h1>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1163px" OnRowEditing="GridView1_RowEditing"  OnRowCommand="GridView1_RowCommand"  OnRowDeleting="GridView1_RowDeleting1"  OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="uname" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lnuname" runat="server" Text="uname"  CommandName="sort" CommandArgument="uname"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="luname" runat="server" Text='<%#Bind("uname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tuname" runat="server" Text='<%#Bind("uname") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnuname" runat="server" Text='<%#Bind("uname") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
 <asp:TemplateField HeaderText="password" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lnpassword" runat="server" Text="password" CommandName="sort" CommandArgument="password"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lpassword" runat="server" Text='<%#Bind("password") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tpassword" runat="server" Text='<%#Bind("password") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnpassword" runat="server" Text='<%#Bind("password") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="repassword" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lnrepassword" runat="server" Text="repassword" CommandName="sort" CommandArgument="repassword"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lrepassword" runat="server" Text='<%#Bind("repassword") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="trepassword" runat="server" Text='<%#Bind("repassword") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnrepassword" runat="server" Text='<%#Bind("repassword") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
<asp:TemplateField HeaderText="fname" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lnfname" runat="server" Text="fname" CommandName="sort" CommandArgument="fname"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lfname" runat="server" Text='<%#Bind("fname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tfname" runat="server" Text='<%#Bind("fname") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="tnfname" runat="server" Text='<%#Bind("fname") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="lnlname" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="llname" runat="server" Text="lname" CommandName="sort" CommandArgument="lname"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="llname" runat="server" Text='<%#Bind("lname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tlname" runat="server" Text='<%#Bind("lname") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnlname" runat="server" Text='<%#Bind("lname") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
            <asp:TemplateField HeaderText="gender" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="gender" runat="server" Text="gender" CommandName="sort" CommandArgument="gender"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lgender" runat="server" Text='<%#Bind("gender") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tgender" runat="server" Text='<%#Bind("gender") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tngender" runat="server" Text='<%#Bind("gender") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >

             <asp:TemplateField HeaderText="mob" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="mob" runat="server" Text="mob" CommandName="sort" CommandArgument="mob"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lmob" runat="server" Text='<%#Bind("mob") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tmob" runat="server" Text='<%#Bind("mob") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnmob" runat="server" Text='<%#Bind("mob") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >

             <asp:TemplateField HeaderText="email" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="email" runat="server" Text="email" CommandName="sort" CommandArgument="email"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lemail" runat="server" Text='<%#Bind("email") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="temail" runat="server" Text='<%#Bind("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnemail" runat="server" Text='<%#Bind("email") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
            <asp:TemplateField HeaderText="Edit/Delete">
             <ItemTemplate>
                 <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit" ></asp:LinkButton>
              <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Delete" ></asp:LinkButton>
             </ItemTemplate>
                <EditItemTemplate> <asp:LinkButton ID="lnkUpadte" runat="server" Text="Upadte" CommandName="Update" ></asp:LinkButton>
                     <asp:LinkButton ID="lnkCancle" runat="server" Text="Cancle" CommandName="Cancel" ></asp:LinkButton>
                </EditItemTemplate>
               <FooterTemplate>
                <asp:LinkButton ID="lnkSave" runat="server" Text="Save" CommandName="Insert" ></asp:LinkButton>
               </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

</asp:Content>


