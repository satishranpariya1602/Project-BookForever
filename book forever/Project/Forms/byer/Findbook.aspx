<%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/Masters/byerhome.master" AutoEventWireup="true" CodeFile="Findbook.aspx.cs" Inherits="Forms_Visitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="byerhomeHead" runat="Server">
</asp:Content>
  

<asp:Content ID="Content2" ContentPlaceHolderID="byerhomeBody" runat="Server">

    
    <div class="col-md-12 TitleCenter40" contenteditable="false" style="color: white;">
        SEARCH BOOK 

         <br />
        <hr />
    </div>
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <asp:TextBox ID="txtfind" runat="server" placeholder="Search By Book Name,Author Name,Isbn No etc." class="input-lg" BackColor="Transparent" SkinID="txt" Style="text-align: center; color: sandybrown"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredtxtUserName" runat="server" ErrorMessage="Please enter any input" ControlToValidate="txtfind" Display="Dynamic" ForeColor="White" Font-Size="Large"></asp:RequiredFieldValidator>
    </div>
    <div class="col-md-12">
       &nbsp
    </div>
   
 
     <div class="col-md-12">
   <div class="col-md-5"> &nbsp &nbsp /t</div>
    <div class="col-md-6">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:RadioButtonList ID="RadioButtonList1" runat="server" SkinID="rdb" >
          <asp:ListItem Value="sub_categoery" style="color:aliceblue;text-align:center">Book name</asp:ListItem>
          <asp:ListItem Value="categoery" style="color:aliceblue;text-align:center">Field</asp:ListItem>
            <asp:ListItem Value="author" style="color:aliceblue;text-align:center">author</asp:ListItem>
                 </asp:RadioButtonList>
       
           
    </div>
    </div>




    <div class="col-md-12">
   <div class="col-md-5"> </div>
    <div class="col-md-7">
  
        <asp:Button ID="Button1" runat="server" Text="Search" SkinID="btn" OnClick="Button1_Click"/>    
    </div>
    </div>

</asp:Content>

