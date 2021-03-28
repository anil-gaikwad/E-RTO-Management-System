<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="contactus.aspx.cs" Inherits="login_contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 294px;
        }
        .auto-style2 {
            width: 347px;
        }
    </style>
</head>
<body>
    
    <div  style="font-family:'Bell MT'; font-size:20px; background-color:gainsboro;">
 
         <table style="height: 89px" >
             <tr>
        <td class="auto-style2" >Name:-<asp:HyperLink ID="HyperLink2"  runat="server">ANIL GAIKWAD</asp:HyperLink>
            <br />
        E-mail:-anilgaikwad2298@gmail.com<br />
        Contact:-+918329744296<br />
                 </td>
                 
        <td>
        Name:-<asp:HyperLink ID="HyperLink1"  runat="server">MAHESH MHAMANE</asp:HyperLink> <br />
          E-mail:-maheshsmhamane@gmail.com<br />
         Contact:-+917083142605
            
        </td></tr>
             <tr>
             <td colspan="2"></td></tr>
             </table>
    </div>
    </body>
</html>
   </asp:Content>