<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact10.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>Lisa Toode</h2>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" GridLines="Horizontal" Height="50px" Width="125px">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
            <asp:TemplateField HeaderText="Kategooria_Id" SortExpression="Kategooria_Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Kategooria_Id") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nimetus" DataValueField="Id" SelectedValue='<%# Bind("Kategooria_Id") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" SelectCommand="SELECT * FROM [KategooriaSet]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Kategooria_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [ToodeSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ToodeSet] ([nimetus], [kirjeldus], [hind], [Kategooria_Id]) VALUES (@nimetus, @kirjeldus, @hind, @Kategooria_Id)" SelectCommand="SELECT * FROM [ToodeSet]" UpdateCommand="UPDATE [ToodeSet] SET [nimetus] = @nimetus, [kirjeldus] = @kirjeldus, [hind] = @hind, [Kategooria_Id] = @Kategooria_Id WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="hind" Type="Decimal" />
            <asp:Parameter Name="Kategooria_Id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kirjeldus" Type="String" />
            <asp:Parameter Name="hind" Type="Decimal" />
            <asp:Parameter Name="Kategooria_Id" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
    </main>
</asp:Content>