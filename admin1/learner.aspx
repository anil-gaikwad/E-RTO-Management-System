<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="learner.aspx.cs" Inherits="admin_Leaenerl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>  <tr>
            <td align="center" >
                <h2>LEARNER LICENSE LIST</h2></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Search on :"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="fname">fname</asp:ListItem>
                    <asp:ListItem Value="lname">lname</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Search By :"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Show  " onclick="Button1_Click" 
                    style="height: 26px" />
&nbsp;
                </td>
        </tr><tr><td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="fname" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="fname" HeaderText="FIRSTNAME" SortExpression="fname" />
                        <asp:BoundField DataField="lname" HeaderText="LASTNAME" SortExpression="lname" />
                        <asp:BoundField DataField="ddate" HeaderText="DATEOFBIRTH" 
                            SortExpression="ddate" />
                        <asp:BoundField DataField="address" HeaderText="ADDRESS" 
                            SortExpression="adddress" />
                        <asp:BoundField DataField="qualification" HeaderText="QUALIFICATION" 
                            SortExpression="qualification" />
                        <asp:BoundField DataField="adhaar" HeaderText="ADHARNO" 
                            SortExpression="adhaar" />
                        
                        <asp:BoundField DataField="mob" HeaderText="MOBILENO" 
                            SortExpression="mob" />
                        <asp:BoundField DataField="slic" HeaderText="LICENSETYPE" 
                            SortExpression="slic" />
                        <asp:BoundField DataField="documents" HeaderText="DOCUMENT1" 
                            SortExpression="documents" />
                        <asp:BoundField DataField="documentd" HeaderText="DOCUMENT2" 
                            SortExpression="documentd" />
                          <asp:BoundField DataField="photo" HeaderText="PHOTO" 
                            SortExpression="photo" />  
                          <asp:BoundField DataField="state" HeaderText="ISSUESTATE" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="CITY" 
                            SortExpression="city" />
                                            <asp:BoundField DataField="pin" HeaderText="PINCODE" 
                            SortExpression="pin" />
                          <asp:BoundField DataField="email" HeaderText="EMAIL" 
                            SortExpression="email" />
                      <%--  <asp:TemplateField HeaderText="Edit/Delete">
             <ItemTemplate>
                 <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CommandName="Edit" ></asp:LinkButton>
              <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="Delete" ></asp:LinkButton>
             </ItemTemplate>
                            </asp:TemplateField>
               --%>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td >
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


