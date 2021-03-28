<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="signin.aspx.cs" Inherits="login_form_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">  
    <div style="background-color:lightseagreen; height: 420px; ">
    <center>
<div class="modal"> 
                    
    <div class="container">
        <br/>
        <asp:Label ID="Label1" runat="server" Text="Sign in to your account" style="Font-Size:24px; color:lightseagreen; height:initial;"></asp:Label>
       
        </div>
       
      <div class="container">
      <label  style="float:left; color:indianred;">User Name  </label>
          <br />
       <asp:TextBox ID="TextBox1" runat="server" Width="260px" height="30px" style="float:left; border-radius:10px; " ToolTip="Enter User Name" ></asp:TextBox>
        </div>
      
      <div class="container">
          <label style="float: left; color:indianred;">Password </label>
          <br />
          <asp:TextBox ID="TextBox2" runat="server" Width="260px" Height="30px" Style="float: left; border-radius:10px; " TextMode="Password" ToolTip="Enter Password" ></asp:TextBox>
      </div>
        <div  style="text-align:left; width:375px;" >
        <span  >
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/form/forgotpassword.aspx">Forgot your password</asp:HyperLink></span>
        </div>
      <br/>
      <br/>
        <div >
          
             <asp:Button ID="SignIn" runat="server" Text="SignIn" style="width:90px;font-family: Arial;font-size:20px; border-radius:6px;  cursor:pointer; background-color: DeepSkyBlue;
	   text-align:center; display:block; height:34px; " OnClick="SignIn_Click"  />
               
          </div>
        <br />
      <div >
          
              <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/form/userregister.aspx">New User?<a href="userregister.aspx">Create an account</a></asp:HyperLink>
      </div>
                
        </div>
    </center>
</div>
   
    </asp:Content>