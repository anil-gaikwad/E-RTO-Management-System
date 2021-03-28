<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="admin1_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     
    <table>  <tr>
            <td>
                <h2 style="animation:ease;background-color:ButtonFace;background-size:cover;backface-visibility:initial;font:300;color-interpolation-filters:linearRGB;font-family:'Malgun Gothic'"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FEEDBACK LIST </h2></td>
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
                    <asp:ListItem Value="name">name</asp:ListItem>
                    <asp:ListItem Value="mob">mobile</asp:ListItem>
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Search By :"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Show  "  
                    style="height: 26px" OnClick="Button1_Click1" />
&nbsp;
                </td>
        </tr>
        <tr>
            <td >
                </td>
        </tr>
        <tr>
            <td >
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="name" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical" 
                 >
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns> 
                        <asp:BoundField DataField="name" HeaderText="NAME" ReadOnly="True" 
                            SortExpression="name" InsertVisible="true" />
                        <asp:BoundField DataField="mob" HeaderText="MOBILE" 
                            SortExpression="mob" />
                          <asp:BoundField DataField="email" HeaderText="EMAIL" 
                            SortExpression="email" />
                          <asp:BoundField DataField="cment" HeaderText="COMMENT" 
                            SortExpression="cment" />
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

