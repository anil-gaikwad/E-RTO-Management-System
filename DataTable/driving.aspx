<%@ Page Language="C#" AutoEventWireup="true" CodeFile="driving.aspx.cs" Inherits="DataTable_driving" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div>  <h2 style="text-align:center">Driving License</h2></div>
    
    </div>
       <center> 
           <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="FNAME" HeaderText="FIRST NAME" SortExpression="FNAME" />
                   <asp:BoundField DataField="LNAME" HeaderText="LAST NAME" SortExpression="LNAME" />
                   <asp:BoundField DataField="LNUMBER" HeaderText="LL NUMBER" SortExpression="LNUMBER" />
                   <asp:BoundField DataField="DNUMBER" HeaderText="DL NUMBER" SortExpression="DNUMBER" />
                   <asp:BoundField DataField="IDATE" HeaderText="ISSUE DATE" SortExpression="IDATE" />
                   <asp:BoundField DataField="EDATE" HeaderText="EXPIRY DATE" SortExpression="EDATE" />
                   <asp:BoundField DataField="ISTATE" HeaderText="ISSUE STATE" SortExpression="ISTATE" />
                   <asp:CommandField ShowEditButton="True" />
                   <asp:TemplateField ShowHeader="False">
                       <ItemTemplate>
                           <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
        </asp:GridView>

           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM &quot;DRIVING&quot;"></asp:SqlDataSource>

       </center>
    </form>
</body>
</html>
