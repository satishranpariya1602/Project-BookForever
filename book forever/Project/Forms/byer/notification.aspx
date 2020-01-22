<%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/Masters/byerhome.master" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="Forms_Visitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="byerhomeHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="byerhomeBody" runat="Server">
      <div class="Form">
       
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
                <asp:BoundField DataField="msg" HeaderText="msg" SortExpression="msg" />


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
        <asp:SqlDataSource ID="IndexDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [msg] WHERE ([reciver_id] = @reciver_id)">
            <SelectParameters>
                <asp:SessionParameter Name="reciver_id" SessionField="Bid" Type="String" />
            </SelectParameters>
          </asp:SqlDataSource>
    </div>
</asp:Content>

