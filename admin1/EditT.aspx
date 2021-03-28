<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="EditT.aspx.cs" Inherits="admin1_EditT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div>
         <br />
         <br />
         <br />  
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="test"></asp:ListItem>
    <asp:ListItem Value="test1"></asp:ListItem>
    <asp:ListItem Value="test2"></asp:ListItem>
        <asp:ListItem Value="test3"></asp:ListItem>
    </asp:DropDownList>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
    <asp:Button ID="Button1" runat="server" Text="show test" OnClick="Button1_Click1" />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1163px" OnRowEditing="GridView1_RowEditing"  OnRowCommand="GridView1_RowCommand"  OnRowDeleting="GridView1_RowDeleting1"  OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="QID" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lnqid" runat="server" Text="QID"  CommandName="sort" CommandArgument="qid"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqid" runat="server" Text='<%#Bind("qid") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqid" runat="server" Text='<%#Bind("qid") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnqid" runat="server" Text='<%#Bind("qid") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
 <asp:TemplateField HeaderText="QANS" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="qname" runat="server" Text="QUESTION" CommandName="sort" CommandArgument="qname"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqname" runat="server" Text='<%#Bind("qname") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqname" runat="server" Text='<%#Bind("qname") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnqname" runat="server" Text='<%#Bind("qname") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="QOP1" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="qop1" runat="server" Text="QOP1" CommandName="sort" CommandArgument="qop1"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqop1" runat="server" Text='<%#Bind("qop1") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqop1" runat="server" Text='<%#Bind("qop1") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnqop1" runat="server" Text='<%#Bind("qop1") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
<asp:TemplateField HeaderText="QOP2" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="qop2" runat="server" Text="QOP2" CommandName="sort" CommandArgument="qop2"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqop2" runat="server" Text='<%#Bind("qop2") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqop2" runat="server" Text='<%#Bind("qop2") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                <asp:TextBox ID="tnqop2" runat="server" Text='<%#Bind("qop2") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="QOP3" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="qop3" runat="server" Text="QOP3" CommandName="sort" CommandArgument="qop3"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqop3" runat="server" Text='<%#Bind("qop3") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqop3" runat="server" Text='<%#Bind("qop3") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnqop3" runat="server" Text='<%#Bind("qop3") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
            <asp:TemplateField HeaderText="QANS" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="qans" runat="server" Text="QANS" CommandName="sort" CommandArgument="qans"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqans" runat="server" Text='<%#Bind("qans") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqans" runat="server" Text='<%#Bind("qans") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnqans" runat="server" Text='<%#Bind("qans") %>'></asp:TextBox>
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
    </div>
</asp:Content>

