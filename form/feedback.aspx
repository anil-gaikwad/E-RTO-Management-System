<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="feedback.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 33px;
        }
        .auto-style2
        {
            width: 215px;
        }
        .auto-style3
        {
            width: 154px;
        }
    </style>
   
        <center>
    <div style="background-color:lightgreen; height:auto;" >
    <table style="height: 330px; background-color:skyblue;">
        <tr>
            <td  colspan="3" align="center">
                <h2>Feedback</h2> </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Name&nbsp; :&nbsp; </td>
            <td style="margin-left: 80px" class="container">
                <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="140px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Pls Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Mobile No :</td>
            <td class="container">
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="141px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Pls Enter E_Mail address" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter valid Range" 
                    MaximumValue="9999999999" MinimumValue="1111111111" ForeColor="Red">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail&nbsp;&nbsp; :</td>
            <td class="container">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="141px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="pls Enter your Email address" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter regular expression" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Comment&nbsp; :</td>
            <td class="container">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="182px"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Write Comment.." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td  colspan="3" class="container">
                <asp:Button ID="Button1" runat="server" Text="Submit"  Height="26px" Width="92px" style="font-size:16px;" BackColor="#CCCCFF" BorderColor="#66CCFF" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Reset"  Height="26px" Width="92px" Style="font-size:16px;" BackColor="Silver" BorderColor="Gray" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </tr>
    </table>
    
    </div>
        </center>
  
    </asp:Content>