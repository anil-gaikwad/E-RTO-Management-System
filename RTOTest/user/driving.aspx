<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/RTOTest/MasterPage.master" CodeFile="driving.aspx.cs" Inherits="login_Default3" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
      <center>
 <div  style="background-image: url('../images/nature11.jpg'); margin:0px; height:530px; background-size:cover;">
    
        <table style="width: 400px; background-color:floralwhite; border-radius:6px; height:300px;margin-top:auto;">

            <tr>
           <td colspan="3" align="center">
                <h2 style=" background-color:gainsboro; ">Driving License Form</h2>
              </td>
            </tr>
         
        <tr style="height:40px;">
            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name :</td>
            <td  >&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="22px" ToolTip="Enter  First Name" Width="150px" ></asp:TextBox>
                <br />
            </td><td >  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter first name.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
             <tr style="height:40px;">
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name :</td>
            <td   >
                <asp:TextBox ID="TextBox2" runat="server" Height="22px" ToolTip="Enter Last Name" Width="150px" ></asp:TextBox>
                <br />
            </td><td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter last name.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="height:40px;">
            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LL Number :</td>
            <td  >
                <asp:TextBox ID="TextBox3" runat="server" Height="22px" ToolTip="Enter Learning Number" Width="151px"></asp:TextBox>
            </td><td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter LL Number.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
             <tr style="height:40px;">
            <td > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DL Number :</td>
            <td  >
                <asp:TextBox ID="TextBox4" runat="server" Height="22px" ToolTip="Enter Driving License Number" Width="150px" ></asp:TextBox>
                <br />
            </td><td >  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter DL Number.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="height:40px;">
            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Issue Date :
                <br/>
            </td>
            
                <td >
                    <asp:TextBox ID="TextBox5" runat="server" Height="22px" ToolTip="Enter Issue Date (dd-mmm-yyyy)" Width="150px" ></asp:TextBox>
                    <br/>
            </td>

            <td > 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Issue Date.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
             <tr>
               <td class="auto-style1" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Expiry Date :
                   <br/>
               </td>
                <td class="auto-style1" >
                    <asp:TextBox ID="TextBox6" runat="server" Height="22px" ToolTip="Enter Expiry Date (dd-mmm-yyyy)" Width="150px" ></asp:TextBox>
                    <br/>
            </td>

            <td class="auto-style1" > 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Expiry Date.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
           <tr style="height:40px;">
          <td > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Issue State :</td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="161px">
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
               <td ">
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select Value" ControlToValidate="DropDownList1" ForeColor="Red">*</asp:RequiredFieldValidator>
               </td>

        </tr>
        <tr>
            <td colspan="3";  style="margin-left: 40px; text-align:center">
                <br />
                <asp:Button ID="Submit" runat="server" Text="Submit"  BackColor="#33CCFF" bordercolor="#33CCFF" Height="33px"  Font-Size="Large" Width="86px" OnClick="Submit_Click"  />    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="Reset" runat="server" Text="Reset"  BackColor="Silver"  Height="33px" BorderColor="#CCCCCC"  Font-Size="Large" Width="86px" OnClick="Reset_Click"  />
          
                   </td>
        </tr>
        <tr>
            <td colspan="3";  style="margin-left: 40px">
                &nbsp;</td>
        </tr>
    </table>
    </div>
          </center>
     
    </asp:Content>