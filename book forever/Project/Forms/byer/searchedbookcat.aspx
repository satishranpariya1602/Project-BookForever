<%@ Page Title="" Theme="Theme" Language="C#" MasterPageFile="~/Forms/Masters/byerhome.master" AutoEventWireup="true" CodeFile="searchedbookcat.aspx.cs" Inherits="Forms_Visitor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="byerhomeHead" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 38px;
        }

        .auto-style2 {
            width: 345px;
        }

        .auto-style4 {
            width: 390px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="byerhomeBody" runat="Server">

    <div class="auto-style6 col-md-12   " style="text-align: center; height: 634px; margin-top: 20px;">
        <div class="col-md-12">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
           
        
           <asp:DataList ID="DataList1" runat="server" CellPadding="0" CellSpacing="50" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="910px" Height="500px">


               <ItemTemplate>
                   <table class="auto-style2">
                       <tr>
                           <td class="auto-style7">&nbsp;</td>
                           <td class="auto-style4">&nbsp;</td>
                           <td rowspan="3" class="auto-style3">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style7">&nbsp;</td>
                           <td class="auto-style4">
                               <asp:Image ID="Image1" runat="server" class="img-rounded" Height="300px" ImageUrl='<%# Eval("img") %>' Style="border-style: groove; border-width: 5px;" Width="318px" CssClass="auto-style4" />
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style8">&nbsp;</td>
                           <td class="auto-style4">
                               <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="X-Large" NavigateUrl='<%#"/Forms/byer/bookdetail.aspx?id="+Eval("id")+"&BID="+Request.QueryString["BId"]%>' Text='<%# Eval("sub_categoery") %>'></asp:HyperLink>
                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>

            &nbsp;<br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([categoery] = @categoery)">
                <SelectParameters>
                    <asp:SessionParameter Name="categoery" SessionField="book" Type="String" />
                    
                </SelectParameters>
            </asp:SqlDataSource>





            </div>
            </div>
</asp:Content>

