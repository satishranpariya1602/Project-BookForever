<%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/Masters/byerhome.master" AutoEventWireup="true" CodeFile="delete.aspx.cs" Inherits="Forms_Admin_Entity_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="byerhomeHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="byerhomeBody" runat="Server">
    <div class="Form">
        <h1>Index</h1>
        <hr />
      

        <!------------------------------------>
        <asp:GridView
            ID="GridIndex"
            runat="server"
            Class="table table-responsive table-hover"
            AutoGenerateColumns="False"
            CellPadding="4"
            DataKeyNames="Id"
            DataSourceID="IndexDataSource"
            ForeColor="Black"
            GridLines="Horizontal"
            ShowHeaderWhenEmpty="True"
            BackColor="White"
            BorderColor="#CCCCCC"
            BorderStyle="None"
            BorderWidth="1px"
            OnRowCommand="GridIndex_RowCommand"
            OnRowEditing="GridIndex_RowEditing"
            OnRowDeleting="GridIndex_RowDeleting" OnSelectedIndexChanged="GridIndex_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="categoery" HeaderText="categoery" SortExpression="categoery" />
                <asp:BoundField DataField="sub_categoery" HeaderText="Book Name" SortExpression="sub_categoery" />

                
                <asp:TemplateField>
                    <ItemTemplate>
                        
                        <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" Font-Size="18px" />
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
        <asp:SqlDataSource ID="IndexDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([uploder_id] = @uploder_id)">
            <SelectParameters>
                <asp:SessionParameter Name="uploder_id" SessionField="Bid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

