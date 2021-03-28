<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="userregister.aspx.cs" Inherits="userregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div  style="background-image: url('../images/nature7.jpg'); margin:0px; height:700px; background-size:cover;">
   <center>

            <div  class="modal1" >
              
                <div class="container1" >
                    
                    <h2 style="color:magenta;">New User Registration </h2>
                </div>
                <br />
                <div class="container1">
                    <label style="float: left; ">User Name  </label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"  ToolTip="Enter Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter User Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>

                <div class="container1">
                    <label style="float: left;">Password </label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;"  TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Enter  8 digit password" ForeColor="Red"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="container1">
                    <label style="float: left;"> Re-Enter Password </label>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;" TextMode="Password" ToolTip="Enter Re-Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password Not Match" ForeColor="Red"></asp:CompareValidator>
                </div>
                <div class="container1">
                    <label style="float: left;">First Name  </label>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;" ToolTip="Enter First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="container1">
                    <label style="float: left;">Last Name  </label>
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;" ToolTip="Enter Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="container1" ">
                    <label  style="float:left">Gender </label>
                    <br/>
                    <div style="float:left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="152px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Gender" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </div>
                <div class="container1">
                    <label style="float: left;">Mobile </label>
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;" ToolTip="Enter mobile number"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter 10 digit " ForeColor="Red" ValidationExpression="(0-9){10}" EnableClientScript="False"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="container1">
                    <label style="float: left;">Email  </label>
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" Width="260px" Height="30px" Style="float: left; border-radius: 6px;" ToolTip="Enter Email"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Email Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>

                </div>

                <div class="container1">
                    <br />
                    <asp:Button ID="SignUp" runat="server" Text="SignIn" Width="100px" style="font-size:large;" BackColor="#00CC00" Height="35px"  OnClick="SignUp_Click"  />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                <asp:Button ID="Cancel" runat="server" Text="Cancel"  Width="100px" style="font-size:large ;" BackColor="#FF3300" Height="35px" OnClick="Cancel_Click"  />

                </div>

            </div>
        </center>
</div>
  </asp:Content>