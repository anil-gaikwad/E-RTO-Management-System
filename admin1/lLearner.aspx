<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="lLearner.aspx.cs" Inherits="admin1_lLearner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        <br />
    <br />
    <br />
    <h1 style="text-align:center;background-color:green">LEARNER</h1>
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

             <asp:TemplateField HeaderText="address" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="address" runat="server" Text="ADDRESS" CommandName="sort" CommandArgument="address"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="laddress" runat="server" Text='<%#Bind("address") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="taddress" runat="server" Text='<%#Bind("address") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnaddress" runat="server" Text='<%#Bind("address") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >

<asp:TemplateField HeaderText="qualification" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="qualification" runat="server" Text="QUALIFICATION" CommandName="sort" CommandArgument="qualification"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lqualification" runat="server" Text='<%#Bind("qualification") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tqualification" runat="server" Text='<%#Bind("qualification") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnqualification" runat="server" Text='<%#Bind("qualification") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
<asp:TemplateField HeaderText="adhaar" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="adhaar" runat="server" Text="ADHAAR" CommandName="sort" CommandArgument="adhaar"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="adhaar" runat="server" Text='<%#Bind("adhaar") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tadhaar" runat="server" Text='<%#Bind("adhaar") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnadhaar" runat="server" Text='<%#Bind("adhaar") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
<asp:TemplateField HeaderText="mob" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="mob" runat="server" Text="MOBILE" CommandName="sort" CommandArgument="mob"></asp:LinkButton>
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


             <asp:TemplateField HeaderText="slic" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="slic" runat="server" Text="SELECTLICENSE" CommandName="sort" CommandArgument="slic"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lslic" runat="server" Text='<%#Bind("slic") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tslic" runat="server" Text='<%#Bind("slic") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnslic" runat="server" Text='<%#Bind("slic") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
             <asp:TemplateField HeaderText="documents" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="documents" runat="server" Text="DOCUMENT1" CommandName="sort" CommandArgument="documents"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="ldocuments" runat="server" Text='<%#Bind("documents") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tdocuments" runat="server" Text='<%#Bind("documents") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tndocuments" runat="server" Text='<%#Bind("documents") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
 <asp:TemplateField HeaderText="documentd" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="documentd" runat="server" Text="DOCUMENT2" CommandName="sort" CommandArgument="documentd"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="ldocumentd" runat="server" Text='<%#Bind("documentd") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tdocumentd" runat="server" Text='<%#Bind("documentd") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tndocumentd" runat="server" Text='<%#Bind("documentd") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
            <asp:TemplateField HeaderText="photo" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="photo" runat="server" Text="PHOTO" CommandName="sort" CommandArgument="photo"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lphoto" runat="server" Text='<%#Bind("photo") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tphoto" runat="server" Text='<%#Bind("photo") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnphoto" runat="server" Text='<%#Bind("photo") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
<asp:TemplateField HeaderText="state" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="state" runat="server" Text="STATE" CommandName="sort" CommandArgument="state"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lstate" runat="server" Text='<%#Bind("state") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tstate" runat="server" Text='<%#Bind("state") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnstate" runat="server" Text='<%#Bind("state") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >

<asp:TemplateField HeaderText="city" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="city" runat="server" Text="CITY" CommandName="sort" CommandArgument="city"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lcity" runat="server" Text='<%#Bind("city") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tcity" runat="server" Text='<%#Bind("city") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tncity" runat="server" Text='<%#Bind("city") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
            
            
             <asp:TemplateField HeaderText="pin" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="pin" runat="server" Text="PIN" CommandName="sort" CommandArgument="pin"></asp:LinkButton>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="lpin" runat="server" Text='<%#Bind("pin") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="tpin" runat="server" Text='<%#Bind("pin") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="tnpin" runat="server" Text='<%#Bind("pin") %>'></asp:TextBox>
                </FooterTemplate>
            </asp:TemplateField  >
             <asp:TemplateField HeaderText="email" >
                <HeaderTemplate>
                    <asp:LinkButton ID ="email" runat="server" Text="EMAIL" CommandName="sort" CommandArgument="email"></asp:LinkButton>
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

