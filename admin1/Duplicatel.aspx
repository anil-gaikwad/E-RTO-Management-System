<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Duplicatel.aspx.cs" Inherits="admin_Duplicatel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        <br />
    <br />
    <br />
    <h1 style="text-align:center;background-color:green">DUPLICATE</h1>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1163px" OnRowEditing="GridView1_RowEditing"  OnRowCommand="GridView1_RowCommand"  OnRowDeleting="GridView1_RowDeleting1"  OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" OnRowCancelingEdit="GridView1_RowCancelingEdit1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
<asp:TemplateField HeaderText="FNAME" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lnfname" runat="server" Text="FNAME" CommandName="sort" CommandArgument="fname"></asp:LinkButton>
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
            <asp:TemplateField HeaderText="LNAME" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="llname" runat="server" Text="LNAME" CommandName="sort" CommandArgument="lname"></asp:LinkButton>
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

            <asp:TemplateField HeaderText="ddate" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="lddate" runat="server" Text="DOBIRTH" CommandName="sort" CommandArgument="ddate"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lddate" runat="server" Text='<%#Bind("ddate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tddate" runat="server" Text='<%#Bind("ddate") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnddate" runat="server" Text='<%#Bind("ddate") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >

             <asp:TemplateField HeaderText="DNUMBER" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="dnumber" runat="server" Text="DNUMBER" CommandName="sort" CommandArgument="dnumber"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="ldnumber" runat="server" Text='<%#Bind("dnumber") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tdnumber" runat="server" Text='<%#Bind("dnumber") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tndnumber" runat="server" Text='<%#Bind("dnumber") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >

             <asp:TemplateField HeaderText="IDATE" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="idate" runat="server" Text="IDATE" CommandName="sort" CommandArgument="idate"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lidate" runat="server" Text='<%#Bind("idate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tidate" runat="server" Text='<%#Bind("idate") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnidate" runat="server" Text='<%#Bind("idate") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
             <asp:TemplateField HeaderText="EDATE" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="edate" runat="server" Text="EDATE" CommandName="sort" CommandArgument="edate"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="ledate" runat="server" Text='<%#Bind("edate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tedate" runat="server" Text='<%#Bind("edate") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnedate" runat="server" Text='<%#Bind("edate") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
             <asp:TemplateField HeaderText="ISTATE" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="istate" runat="server" Text="ISTATE" CommandName="sort" CommandArgument="istate"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="listate" runat="server" Text='<%#Bind("istate") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tistate" runat="server" Text='<%#Bind("istate") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnistate" runat="server" Text='<%#Bind("istate") %>'></asp:TextBox>
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

