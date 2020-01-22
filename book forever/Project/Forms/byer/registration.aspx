 <%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/masters/byer.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Forms_Admin_Entity_Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="byerHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="byerBody" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-md-4">
        </div>
    <div class="col-md-4">
    <div class="Form-group">
        <br />
         <br />
         <br />
        <h1 style="color:white;">Registration</h1>
        <hr /> 
        <!------------------------------->
        
        <div class="form-group">
            <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="txtName" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" placeholder="Enter Your name" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredName" runat="server" ErrorMessage="Name required" ControlToValidate="txtName" Display="Dynamic" ForeColor="white" Font-Size="18px"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexname" runat="server" ControlToValidate="txtName"
                ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." Display="Dynamic" ForeColor="white" Font-Size="18px" />
        </div>
        <div class="form-group">
            <asp:Label ID="lblAddress" runat="server" Text="Address" AssociatedControlID="txtAddress" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter Your address" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredAddress" runat="server" ErrorMessage="Address required" ControlToValidate="txtAddress" Display="Dynamic" ForeColor="white" Font-Size="18px"></asp:RequiredFieldValidator>
            
        </div>

        <div class="form-group">
            <asp:Label ID="lblContact" runat="server" Text="Contact" AssociatedControlID="txtContact" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtContact" runat="server" placeholder="Enter your contact No" SkinID="txt"  BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lblEmail" runat="server" Text="E-mail" AssociatedControlID="txtEmail" SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter Your email" SkinID="txt" BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email required" ControlToValidate="txtemail" Display="Dynamic" ForeColor="white" Font-Size="18px"></asp:RequiredFieldValidator>
             
             </div>

         <div class="form-group">
            <asp:Label ID="lblpass" runat="server" Text="Password"  SkinID="lbl"></asp:Label>
            <asp:TextBox ID="txtpassword" runat="server" textmode="Password" placeholder="Enter Your password" SkinID="txt"  BackColor="Transparent" ForeColor="#00ffff"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="password required" ControlToValidate="txtName" Display="Dynamic" ForeColor="white" Font-Size="18px"></asp:RequiredFieldValidator>
            |</div>
        <div class="form-group" style="text-align: center;">
            <asp:Button ID="btnCreate" runat="server" Text="Register" OnClick="btnCreate_Click" SkinID="btn" />
        </div>
        
    </div>
        </div>
</asp:Content>

