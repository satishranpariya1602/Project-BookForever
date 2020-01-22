 <%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/masters/byerhome.master" AutoEventWireup="true" CodeFile="uploadbook.aspx.cs" Inherits="Forms_Admin_Entity_Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="byerhomeHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="byerhomeBody" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-md-4">
        </div>
    <div class="col-md-4">
    <div class="Form-group">
        <h1 style="color:white;">Upload Book</h1>
        <hr />
        <!------------------------------->
        <div class="form-group; col-md-12" >
            <asp:Label ID="Label2" runat="server" Text="Upload Your Book Image:" SkinID="lbl"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
          
        </div>
          <div class="form-group" >
              &nbsp;</div>
        <div class="form-group">
            <asp:Label ID="lblName" runat="server" Text="Name of Author" AssociatedControlID="txtName" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" placeholder="Enter Author name" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="Name required" ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" Font-Size="18px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexname" runat="server" ControlToValidate="txtName"
                ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." Display="Dynamic" ForeColor="White" Font-Size="18px" />
        </div>
        <div class="form-group">
            <asp:Label ID="lblcategoery" runat="server" Text="categoery" AssociatedControlID="txtcategoery" SkinID="lbl" ></asp:Label>
            <asp:TextBox ID="txtcategoery" runat="server" placeholder="enter categoery of book" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Requiredcategoery" runat="server" ErrorMessage="categoery required" ControlToValidate="txtcategoery" Display="Dynamic" ForeColor="Red" Font-Size="18px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="Requiredxcategoery" runat="server" ControlToValidate="txtcategoery"
                ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." Display="Dynamic" ForeColor="white" Font-Size="18px" />
        </div>

             <div class="form-group">
            <asp:Label ID="lblsubcategoery" runat="server" Text="Book Name" AssociatedControlID="txtsubcategoery" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtsubcategoery" runat="server" placeholder="enter book name" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="sub categoery require" ControlToValidate="txtsubcategoery" Display="Dynamic" ForeColor="Red" Font-Size="18px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtsubcategoery"
                ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." Display="Dynamic" ForeColor="white" Font-Size="18px" />
        </div>

        <div class="form-group">
            <asp:Label ID="lblprice" runat="server" Text="price" AssociatedControlID="txtprice" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtprice" runat="server" placeholder="Enter price of Book" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblinformation" runat="server" Text="extra information" AssociatedControlID="txtinformation" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtinformation" runat="server" placeholder="Enter information" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
        </div>

        
       
        
       
        <!-------------->
        <div class="form-group" style="text-align: center;">
            <asp:Button ID="btnCreate" runat="server" Text="UPLOAD" OnClick="btnCreate_Click" SkinID="btn" />
        </div>
        
    </div>
        </div>
</asp:Content>

