<%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/masters/Admin.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Forms_Admin_Entity_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="Form col-md-12">
        <h1>Details</h1>
        <hr />
        <!----------------------------------------------->
        <div class="form-group">
            <asp:Label ID="lblName" runat="server" Text="Name : " AssociatedControlID="txtName" SkinID="lbl"></asp:Label>
            <asp:Label ID="txtName" runat="server" Text="" SkinID="lbl2" CssClass="form-control"></asp:Label>
        </div>

        <div class="form-group">
            <asp:Label ID="lblAddress" runat="server" Text="Address : " AssociatedControlID="txtAddress" SkinID="lbl"></asp:Label>
            <asp:Label ID="txtAddress" runat="server" Text="" SkinID="lbl2" CssClass="form-control"></asp:Label>
        </div>

        <div class="form-group">
            <asp:Label ID="lblContact" runat="server" Text="Contact : " AssociatedControlID="txtContact" SkinID="lbl"></asp:Label>
            <asp:Label ID="txtContact" runat="server" Text="" SkinID="lbl2" CssClass="form-control"></asp:Label>
        </div>

        <div class="form-group">
            <asp:Label ID="lblEmail" runat="server" Text="Email : " AssociatedControlID="txtEmail" SkinID="lbl"></asp:Label>
            <asp:Label ID="txtEmail" runat="server" Text="" SkinID="lbl2" CssClass="form-control"></asp:Label>
        </div>


        <div class="form-group">
            <asp:Label ID="lblpass" runat="server" Text="Password : " AssociatedControlID="txtpass" SkinID="lbl"></asp:Label>
            <asp:Label ID="txtpass" runat="server" Text="" SkinID="lbl2" CssClass="form-control"></asp:Label>
        </div>

      
        <!------------------------>


        <div class="row">
            <div class="col-md-12">
                <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" OnClick="btnEdit_Click" SkinID="linkbtn" />
                | <a href="Default.aspx">Back to list</a>
            </div>
        </div>
    </div>
</asp:Content>

