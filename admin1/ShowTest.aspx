<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="ShowTest.aspx.cs" Inherits="admin1_ShowTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <br />
    <br />
   
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="test"></asp:ListItem>
    <asp:ListItem Value="test1"></asp:ListItem>
    <asp:ListItem Value="test2"></asp:ListItem>
        <asp:ListItem Value="test3"></asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="SHOW" OnClick="Button1_Click1" />
    <br />
    <br />
    <table>
        <tr>
            <td >
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="qid" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" >
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                         <asp:BoundField DataField="qid" HeaderText="Qid" SortExpression="qid" />
                        <asp:BoundField DataField="qname" HeaderText="QNAME" SortExpression="qname" />
                        <asp:BoundField DataField="qop1" HeaderText="QOPTION1" 
                            SortExpression="qop1" />
                        <asp:BoundField DataField="qop2" HeaderText="QOPTION2" 
                            SortExpression="qop2" />
                          <asp:BoundField DataField="qop3" HeaderText="QOPTION3" 
                            SortExpression="qop3" />
                          <asp:BoundField DataField="qans" HeaderText="QANS" 
                            SortExpression="qans" />
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

