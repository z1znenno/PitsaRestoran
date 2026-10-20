<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact9.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>Toode</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" Width="403px">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
            <asp:BoundField DataField="KategooriaNimetus" HeaderText="KategooriaNimetus" SortExpression="KategooriaNimetus" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [ToodeSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ToodeSet] ([nimetus], [kirjeldus], [hind], [Kategooria_Id]) VALUES (@nimetus, @kirjeldus, @hind, @Kategooria_Id)" SelectCommand="SELECT ToodeSet.Id, ToodeSet.nimetus, ToodeSet.kirjeldus, ToodeSet.hind, KategooriaSet.nimetus AS KategooriaNimetus FROM ToodeSet INNER JOIN KategooriaSet ON ToodeSet.Kategooria_Id = KategooriaSet.Id" UpdateCommand="UPDATE [ToodeSet] SET [nimetus] = @nimetus, [kirjeldus] = @kirjeldus, [hind] = @hind, [Kategooria_Id] = @Kategooria_Id WHERE [Id] = @Id">
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