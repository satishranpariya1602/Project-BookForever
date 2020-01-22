<%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/Masters/admin.master" AutoEventWireup="true" CodeFile="bookdetail.aspx.cs" Inherits="Forms_Visitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="adminhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminBody" runat="Server">
     <div class="col-md-12" style="text-align:center;margin-top: 90px;" >
         <asp:Image ID="Img" width="35%" height="35%" class="img-rounded" style="border-style: groove; border-width: 5px;" runat="server" />
     </div> 
    <div class="col-md-12" style="text-align:center"" >
        <asp:Label ID="lbltitle" runat="server" Text="NAME OF BOOK:" SkinId="lbl" ForeColor="Red" ></asp:Label>
       <asp:Label ID="lbltitle2" runat="server" Text="" SkinId="lbl" ForeColor="Red" ></asp:Label> </div>
    <div class="col-md-12" style="text-align:center"" >
      <asp:Label ID="lblauthor" runat="server" Text="NAME OF AUTHOR:" SkinId="lbl" ForeColor="Red" ></asp:Label>
       <asp:Label ID="lblauthor2" runat="server" Text="" SkinId="lbl" ForeColor="Red" ></asp:Label>
     </div> 
      <div class="col-md-12" style="text-align:center"" >
       <asp:Label ID="lblcat" runat="server" Text="CATEGOERY:" SkinId="lbl" ForeColor="Red" ></asp:Label>
       <asp:Label ID="lblcat2" runat="server" Text="" SkinId="lbl" ForeColor="Red" ></asp:Label>
      
     </div>
    <div class="col-md-12" style="text-align:center " >
       <asp:Label ID="lblprice" runat="server" Text="PRICE:" SkinId="lbl" ForeColor="Red" ></asp:Label>
       <asp:Label ID="lblprice2" runat="server" Text="" SkinId="lbl" ForeColor="Red" ></asp:Label>
     
     </div>
     <div class="form-group" style="text-align: center;">
            <asp:Button ID="btnadd" runat="server" Text="ADD" SkinID="btn" OnClick="btnbuy_Click" />
            <asp:Button ID="btndelet" runat="server" Text="DELETE" SkinID="btn" OnClick="btndelet_Click"  />
        </div>
     
   
</asp:Content>

