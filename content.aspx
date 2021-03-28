<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div class="menu1">
                 <h4> Welcome to RTO</h4>
            </div>  
         <div style="height:400px; border-style:inset">
             <asp:ScriptManager ID="ScriptManager1" runat="server" AllowCustomErrorsRedirect="True" ViewStateMode="Enabled" AsyncPostBackTimeout="130"></asp:ScriptManager>
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick"></asp:Timer>
                     <asp:Image ID="Image1" runat="server" Height="400" class="slide"  />
                 </ContentTemplate>
             </asp:UpdatePanel>
          </div>
    
               <div class="road" style="border:ridge">
                        <div class=" suzuki">
                       <div class="suzuki_rim1"></div>
                       <div class="suzuki_rim2"></div>
                   </div>
                   <div class="car">
                     <div class="car_rim1"></div>
                       <div class="car_rim2"></div>
                   </div>
                   <div class="btruck" >
                    <div class="btruck_rim1"></div>
                   <div class="btruck_rim2"></div>
                    </div>
                     <div class="gtruck">
                  <div class="gtruck_rim1"></div>
                  <div class="gtruck_rim2"></div>
                  </div>
                    <div class="pickup">
                    <div class="pickup_rim1"></div>
                       <div class="pickup_rim2"></div>
                   </div>
                   </div>
 
</asp:Content>

