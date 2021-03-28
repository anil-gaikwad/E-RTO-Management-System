<%@ Page Title="" Language="C#" MasterPageFile="~/admin1/MasterPage.master" AutoEventWireup="true" CodeFile="NewAdmin.aspx.cs" Inherits="admin1_NewAdmin" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>   <table style="border-spacing:inherit">     
 <tr><td colspan="2">
                <div class="container1">
                    <br/>
                    <h2 style="background-color:gray;scrollbar-highlight-color:aqua;font-family:'Comic Sans MS'"> ADMIN Registration </h2>
                </div>
                <br />
                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                <br /></td></tr>
        <tr><td>
               
                    <label style="float: left;">User Name  </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter User Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
               </td></tr>
        <tr><td>
               
                    <label style="float: left;">Password </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"  TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
              </td></tr>
        <tr><td>
            
                    <label style="float: left;"> Re-Enter Password </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
             </td></tr><tr><td>
                                 <label style="float: left;">First Name  </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
              </td></tr>
        <tr><td>
              
                    <label style="float: left;">Last Name  </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                
                    </td></tr><tr><td>
                                 
                    <label  style="float:left">Gender </label>
                    <br/></td><td>
                    <div style="float:left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="152px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Gender" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td></tr>
 <tr><td>
                                    <label style="float: left;">Mobile </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter 10 digit Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{10}" EnableClientScript="False"></asp:RegularExpressionValidator>
                </td></tr>
        <tr><td>
                
                    <label style="float: left;">E-mail  </label>
                    <br /></td><td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="E-mail Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="True" EnableClientScript="False"></asp:RegularExpressionValidator>

                </td></tr>
<tr><td colspan="2">
           
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SignUp" runat="server" Text="SignIn" Width="100px" style="font-size:large" BackColor="#00CC00" Height="35px" OnClick="SignUp_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Button ID="Cancel" runat="server" Text="Cancel" Width="100px" style="font-size:large" BackColor="#FF3300" Height="35px" OnClick="Cancel_Click" />
         
                 </td></tr></table>  
       </center>
</asp:Content>