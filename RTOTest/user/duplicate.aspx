<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/RTOTest/MasterPage.master" CodeFile="duplicate.aspx.cs" Inherits="login_Default3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <center>
             
     <div  style="background-image: url('../images/nature6.jpg'); margin:0px; height:530px; background-size:cover;">

         <table style="width:400px; background-color:floralwhite; height: 438px;" >
             <tr >
                 <td colspan="3";>
        <h2 style="background-color:hotpink;">Duplicate License Form</h2>
                     </td>
                   </tr>

        <tr style="height:40px;">
            <td style="height:38px; width:140px; text-align:center">
               
                First Name :
                </td>
            <td style="height:38px;" >
                <asp:TextBox ID="TextBox1" runat="server"  Width="160px" ToolTip="Enter First Name" Height="22px" ></asp:TextBox>
                <br />
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter First Name." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr style="height:40px;">
            <td style="height:38px; width:140px; text-align:center;">
         
                Last Name :
                </td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server"  Width="160px" ToolTip="Enter Last Name" Height="22px"></asp:TextBox>
                <br />
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Last Name." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
              <tr style="height:45px;">
            <td style="height:38px; width:140px; text-align:center;">
             
                Date of Birth :
                </td>
            <td height="42px;">
                <asp:TextBox ID="TextBox3" runat="server"  Width="160px" ToolTip="Enter birth Date(dd-mmm-yyyy)" Height="22px"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter date of birth." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
             <tr style="height:40px;">
            <td style="height:38px; width:140px; text-align:center;">
               DL Number :</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ToolTip="Enter Driving License Number" Height="22px" Width="160px"></asp:TextBox>
                <br />
            </td>
                 <td >  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter DL Number.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="height:45px;">
            <td style="height:38px; width:140px; text-align:center;">
                Issue Date :</td>
           
                <td height="42px">
                    <asp:TextBox ID="TextBox5" runat="server" ToolTip="Enter Issue Date(dd-mmm-yyyy)" Height="22px" Width="160px" ></asp:TextBox>
                    <br />
            </td>

            <td> 
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Issue Date.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
             <tr style="height:45px;">
               <td style="height:38px; width:140px; text-align:center;"> Expiry Date :</td>
                <td height="42px;">
                    <asp:TextBox ID="TextBox6" runat="server" ToolTip="Enter Expiry Date(dd-mmm-yyyy)" Height="22px" Width="160px" ></asp:TextBox>
                    <br />
            </td>

            <td> 
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Expiry Date.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
           
        <tr style="height:40px;"> 
             <td style="height:38px; width:140px; text-align:center;"> Issue State :</td>
                <td>
                   <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="162px">
                     <asp:ListItem Text="" ></asp:ListItem>
                         <asp:ListItem Text="ANDHARAPRADESH" ></asp:ListItem>
                         <asp:ListItem Text="ARUNCHALPRADESH" ></asp:ListItem>
                         <asp:ListItem Text="ASSAM" ></asp:ListItem>
                         <asp:ListItem Text="BIHAR" ></asp:ListItem>
                         <asp:ListItem Text="CHATTISGRAH" ></asp:ListItem>
                         <asp:ListItem Text="GOA" ></asp:ListItem>
                         <asp:ListItem Text="GUJRAT" ></asp:ListItem>
                         <asp:ListItem Text="HARYANA" ></asp:ListItem>
                         <asp:ListItem Text="HIMACHALPRADESH" ></asp:ListItem>
                         <asp:ListItem Text="JAMMU KASHMIR" ></asp:ListItem>
                         <asp:ListItem Text="JHARKHAND" ></asp:ListItem>
                         <asp:ListItem Text="KARNATAKA" ></asp:ListItem>
                         <asp:ListItem Text="KERLA" ></asp:ListItem>
                         <asp:ListItem Text="MADHYAPRADESH" ></asp:ListItem>
                         <asp:ListItem Text="MAHARASHTRA" ></asp:ListItem>
                         <asp:ListItem Text="MANIPUR" ></asp:ListItem>
                         <asp:ListItem Text="MAGHALAYA" ></asp:ListItem>
                         <asp:ListItem Text="MIZORAM" ></asp:ListItem>
                         <asp:ListItem Text="NAGALAND" ></asp:ListItem>
                         <asp:ListItem Text="ORISSA" ></asp:ListItem>
                         <asp:ListItem Text="RAJSTHAN" ></asp:ListItem>
                         <asp:ListItem Text="UTTARPRADESH" ></asp:ListItem>
                         <asp:ListItem Text="TAMILNADU" ></asp:ListItem>
                         <asp:ListItem Text="TELANGANA" ></asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Selected Values" ControlToValidate="DropDownList1" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="height:36px;">
            <td colspan="3";  style="margin-left: 40px">
                <br /><center>
                <asp:Button ID="Submit" runat="server" Text="Submit" Width="88px" Height="32px" style="font-size:18px; " OnClick="Submit_Click" BackColor="#66CCFF" BorderColor="#33CCFF"  />    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="Reset" runat="server" Text="Reset" Width="88px" Height="32px" style="font-size:18px; " OnClick="Reset_Click" BackColor="Silver" BorderColor="#999999"  />
           </center>
                     </td>
        </tr>
        <tr >
            <td colspan="3";  style="margin-left: 40px">
                &nbsp;</td>
        </tr>
             
    </table>
    </div>
  
      </center>
</asp:Content>