<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Masters/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Forms_Admin_Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminBody" runat="Server">

  <div class="Form">
        <h1>DATA</h1>
        <hr />
        <!------------------------------------>
        
        <asp:GridView
            ID="GridIndex"
            runat="server"
            Class="table table-responsive table-hover"
            AutoGenerateColumns="False"
            CellPadding="4"
            DataKeyNames="id"
            DataSourceID="SqlDataSource1"
            ForeColor="Black"
            GridLines="Horizontal"
            ShowHeaderWhenEmpty="True"
            BackColor="White"
            BorderColor="#CCCCCC"
            BorderStyle="None"
            BorderWidth="1px" OnRowCommand="GridIndex_RowCommand"
            
                >
            <Columns>
                <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />

                <asp:BoundField DataField="categoery" HeaderText="name" SortExpression="name" ReadOnly="True" />

                <asp:BoundField DataField="sub_categoery" HeaderText="contact" SortExpression="contact" ReadOnly="True" />

                
                  <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnCheck" runat="server" CommandName="Check" Text="Check" Font-Size="18px" />
                    </ItemTemplate>
                </asp:TemplateField>



            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Font-Size="18px" />
            <RowStyle Font-Size="17px" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
           </div>
</asp:Content>

