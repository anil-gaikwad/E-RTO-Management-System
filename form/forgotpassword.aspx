<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="forgotpassword.aspx.cs" Inherits="form_forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div>
        <center>
         <table style="height: 245px; width: 500px;" >
        <tr><td align="center" colspan="2"><h2>FORGOT PASSWORD</h2></td></tr>
        <tr style="height:38px">
            <td style="font-size:20px;">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User Name&nbsp;&nbsp; :-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="134px" align="left"></asp:TextBox>
            </td>
            </tr>
            
         <tr style="height:38px">
            <td style="font-size:20px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                New password&nbsp; :-</td>
                <td><asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="133px" align="left" ForeColor="Red" TextMode="Password"></asp:TextBox>
            </td>
            </tr>
        
        
        <tr style="height:38px">
            <td >
                &nbsp;</td>
            <td style="font-size:20px;">
                <asp:Button ID="Button1" runat="server" Text="Reset Password" backcolor="#3399ff" Font-Size="18px" Height="32px" BorderColor="#3399FF" BorderStyle="None" OnClick="Button1_Click1" />
                </td>
            </tr>
        </table>
            </center>
    </div>
   
    </asp:Content>