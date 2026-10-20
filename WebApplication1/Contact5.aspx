<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact5.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Klient</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Horizontal" Width="300px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            <asp:BoundField DataField="prerenimi" HeaderText="prerenimi" SortExpression="prerenimi" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [KlientSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [KlientSet] ([eesnimi], [prerenimi], [telefon]) VALUES (@eesnimi, @prerenimi, @telefon)" ProviderName="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [eesnimi], [prerenimi], [telefon] FROM [KlientSet]" UpdateCommand="UPDATE [KlientSet] SET [eesnimi] = @eesnimi, [prerenimi] = @prerenimi, [telefon] = @telefon WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="prerenimi" Type="String" />
            <asp:Parameter Name="telefon" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="prerenimi" Type="String" />
            <asp:Parameter Name="telefon" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            <asp:BoundField DataField="prerenimi" HeaderText="prerenimi" SortExpression="prerenimi" />
            <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
    </main>
</asp:Content>