<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/RTOTest/MasterPage.master" CodeFile="Reneview.aspx.cs" Inherits="login_Reneview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
      
 <div  style="background-image: url('../images/nature1.jpg'); margin:0px; height:530px; background-size:cover;">
        
        <table  style="width:450px; background-color:azure; height: 467px;">
         <tr  style="height:38px;">
             <td  align="center" colspan="3">   <h2 style="background-color:cyan;">Renewal License Form</h2>
             </td></tr>
                
  <tr>
            <td>
            </td>
        </tr>
        
          
        <tr style="height:38px;">
            <td>
               
                &nbsp;&nbsp;&nbsp; &nbsp;
               
                First Name :</td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter First Name"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter First Name." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr style="height:38px;">
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Last Name :
                </td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter Last Name"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Last Name." ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
        </tr>
              <tr style="height:45px;">
            <td>
                &nbsp;&nbsp;
                Date of Birth :
                </td>
            <td >
                <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter Birth Date(dd-mmm-yyyy)"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter date of birth." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
             <tr style="height:38px;">
            <td>&nbsp;&nbsp; DL Number :</td>
            <td >
                <asp:TextBox ID="TextBox4" runat="server" ToolTip="Enter Driving license Number"></asp:TextBox>
                <br />
            </td><td>  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter DL Number.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="height:45px;">
            <td>&nbsp;&nbsp;&nbsp;&nbsp; Issue Date :</td>
                <td >
                    <asp:TextBox ID="TextBox5" runat="server" ToolTip="Enter Issue Date (dd-mmm-yyyy)"></asp:TextBox>
                    <br />
            </td>

            <td> 
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Issue Date.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
               <tr style="height:45px;"><td>&nbsp;&nbsp; Expiry Date :</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox6" runat="server" ToolTip="Enter Expiry Date (dd-mmm-yyyy)"></asp:TextBox>
                    <br />
            </td>

            <td> 
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Expiry Date.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
           <tr style="height:38px;">
          <td>&nbsp;&nbsp; Issue State :</td>
                <td >
                       <asp:DropDownList ID="DropDownList1" runat="server">
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
               <td>
                   <br/>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select Value" ControlToValidate="DropDownList1" ForeColor="Red">*</asp:RequiredFieldValidator>
               </td>
            </tr>
        <tr>
            <td colspan="3";  style="margin-left: 40px">
                
                <br /> 
           <center>     <asp:Button ID="Submit" runat="server" Text="Submit" Width="88px" Style="font-size:18px;" OnClick="Submit_Click" BackColor="#66CCFF" BorderColor="#33CCFF" Height="30px"  />  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="Reset" runat="server" Text="Reset" Width="88px" Style="font-size:18px;" OnClick="Reset_Click" BackColor="Silver" BorderColor="#999999" Height="30px"  /></center>
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