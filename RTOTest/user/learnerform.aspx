<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/RTOTest/MasterPage.master" CodeFile="learnerform.aspx.cs" Inherits="learnerform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">  
   
<div  style="background-image: url('../images/nature5.jpg'); margin:0px; height:830px; background-size:cover;"> 
    <center>
    <div class="head"> <table style="width:500px;  background-color:lavender;">
       <tr> <td colspan="3">
    <center><h1 style="background-color:burlywood;">Learner License Form</h1></center>
       
  </td> <
           </tr>
        <tr style="height:38px;">
            <td style=" width: 150px; ">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  First Name :</td>
            <td style=" width: 200px;" >
                <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox>
            </td><td style=" width: 37px;">  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter First Name.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr style="height:38px;">
            <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name :</td>
            <td style=" width: 200px;" >
                <asp:TextBox ID="TextBox2" runat="server" Width="130px"></asp:TextBox>
                <br />
            </td>
            <td style=" width: 37px;"> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Last Name.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
            <tr style="height:38px;">
            <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date of Birth :</td>
            <td style=" width: 200px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="130px"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server" Text="eg. dd-month-yyyy" ForeColor="#999999"></asp:Label>
            </td>
            <td style=" width: 37px;"> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Date of Birth.." ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
         <tr>
        <td style=" width: 150px; " >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address :</td>
             <td style=" height: 38px; width: 150px;">
                 <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="161px"></asp:TextBox>
&nbsp;</td>
       <td>

           <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Address" ForeColor="Red">*</asp:RequiredFieldValidator>

       </td>
            </tr>
             <tr style="height:38px;"> 
                  <td style=" width: 150px; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Qualification :</td>
            <td style=" width: 200px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="165px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Below the 8 th class</asp:ListItem>
                    <asp:ListItem>SSC</asp:ListItem>
                    <asp:ListItem>HSC</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                </asp:DropDownList>
            </td>
                <td>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Qualification" ForeColor="Red">*</asp:RequiredFieldValidator>

                </td>
             </tr>
        <tr> 

                <td  style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adhaar No :</td>
            <td style=" height: 38px; width: 150px;">
                <asp:TextBox ID="TextBox5" runat="server" Width="130px"></asp:TextBox>
                <br />
            </td>
            <td style=" width: 37px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Entee Adhar no.." ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Plz Enter Valid Adhaar no."  ForeColor="Red" MaximumValue="999999999999" MinimumValue="000000000000">*</asp:RangeValidator>
            </td>
        </tr>
            <tr> 

                <td style="width: 150px; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mobile :</td>
            <td style=" height: 38px; width: 150px;">
                <asp:TextBox ID="TextBox6" runat="server" Width="130px"></asp:TextBox>
                <br />
            </td>
            <td style=" width: 37px; height: 38px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Mobile No.." ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Plz Enter Valid Mobile no." 
                    MaximumValue="9999999999" MinimumValue="0000000000" ForeColor="Red">*</asp:RangeValidator>
            </td>
        </tr>
             <tr style="height:38px;"> 
                  <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp; Select License :</td>
            <td style=" width: 200px;">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="168px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem> 2 wheeler</asp:ListItem>
                    <asp:ListItem>3 wheeler</asp:ListItem>
                    <asp:ListItem>4 wheeler</asp:ListItem>
                    <asp:ListItem>other</asp:ListItem>
                    </asp:DropDownList>
               <br />
            </td><td style=" width: 37px;">
                 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Select License" ForeColor="Red">*</asp:RequiredFieldValidator>
                 
                 </td></tr>
            <tr style="height:38px;">
                <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Document 1 :
               </td>
                <td style=" width: 200px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="219px" />
                </td><td style=" width: 37px;">
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="FileUpload1" ErrorMessage="select Document" ForeColor="Red">*</asp:RequiredFieldValidator>
                
                 </td>
            </tr>
        <tr style="height:38px;">
                <td style=" width: 150px; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Document 2 :
               </td>
                <td style=" width: 200px;" >
                    <asp:FileUpload ID="FileUpload2" runat="server" Height="27px" Width="219px" />
                </td><td style=" width: 37px;">
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="FileUpload2" ErrorMessage="Select Document" ForeColor="Red">*</asp:RequiredFieldValidator>
                
                 </td>
            </tr>
        
             <tr><td style=" width: 150px;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Photo : </td>
                <td style=" height: 38px; width: 150px;">
                    <asp:FileUpload ID="FileUpload3" runat="server" Height="25px" Width="221px" />
                 </td><td  style="width: 37px;height: 38px;">
                
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="FileUpload3" ErrorMessage="Upload photo" ForeColor="Red">*</asp:RequiredFieldValidator>
                
                 </td>
            </tr>
           <tr style="height:38px;"> 
                <td style=" width: 150px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State :</td>
            <td style=" width: 200px;">
               <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="165px">
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
            </td><td style=" width: 37px;">
                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Select Document" ForeColor="Red">*</asp:RequiredFieldValidator>
                 
                 </td></tr>
            <tr style="height:38px;">
            <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City : </td>
            <td style=" width: 200px;">
                <asp:TextBox ID="TextBox7" runat="server" Width="130px"></asp:TextBox>
                <br />
            </td><td style=" width: 37px;">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter city.." ForeColor="Red">*</asp:RequiredFieldValidator>
                 </td>
        </tr>
           
        <tr style="height:38px;">
            <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pincode :</td>
            <td style=" width: 200px;" >
                <asp:TextBox ID="TextBox8" runat="server" Width="130px"></asp:TextBox>
            </td>
            <td style=" width: 37px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="Enter pincode." ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
       <tr style="height:38px;">
           <td style=" width: 150px; "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail :</td>
           <td style=" width: 200px;">
               <asp:TextBox ID="TextBox9" runat="server" Width="130px"></asp:TextBox>
           </td><td style=" width: 37px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Enter E-mail Address." ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Plz.Enter Valid E-mail Address." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red">*</asp:RegularExpressionValidator>
            </td>
       </tr>
        <tr style="height:38px;">
            <td colspan="3"; style="margin-left: 40px">
                <br />
                <asp:Button ID="Submit" runat="server" Text="Submit"  Width="100px"  style="font-size:18px; height:30px; background-color:deepskyblue;" OnClick="Submit_Click" />    
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="Reset" runat="server" Text="Reset" Width="100px" style="font-size:18px; height:30px; background-color:red;" OnClick="Reset_Click"  />
            </td>
        </tr>
        <tr>
            <td colspan="3"; style="margin-left: 40px">
                &nbsp;</td>
        </tr>
    </table>
  
    </div>
    </center>
</div>
    </asp:Content>