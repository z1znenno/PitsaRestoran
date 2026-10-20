<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact11.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>TellimusToode</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="352px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="TellimusId" HeaderText="TellimusId" SortExpression="TellimusId" />
            <asp:BoundField DataField="ToodeId" HeaderText="ToodeId" SortExpression="ToodeId" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [TellimusToodeSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TellimusToodeSet] ([TellimusId], [ToodeId]) VALUES (@TellimusId, @ToodeId)" ProviderName="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [TellimusId], [ToodeId] FROM [TellimusToodeSet]" UpdateCommand="UPDATE [TellimusToodeSet] SET [TellimusId] = @TellimusId, [ToodeId] = @ToodeId WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TellimusId" Type="Int32" />
            <asp:Parameter Name="ToodeId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TellimusId" Type="Int32" />
            <asp:Parameter Name="ToodeId" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
    </main>
</asp:Content>