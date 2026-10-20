<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact6.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tellimus</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." GridLines="Vertical" Width="526px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Kuupaev" HeaderText="Kuupaev" SortExpression="Kuupaev" />
            <asp:BoundField DataField="Kellaaeg" HeaderText="Kellaaeg" SortExpression="Kellaaeg" />
            <asp:BoundField DataField="staatus" HeaderText="staatus" SortExpression="staatus" />
            <asp:BoundField DataField="prerenimi" HeaderText="prerenimi" SortExpression="prerenimi" />
            <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [TellimusSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TellimusSet] ([Kuupaev], [Kellaaeg], [staatus], [KlientId], [laudId]) VALUES (@Kuupaev, @Kellaaeg, @staatus, @KlientId, @laudId)" SelectCommand="SELECT TellimusSet.Id, TellimusSet.Kuupaev, TellimusSet.Kellaaeg, TellimusSet.staatus, KlientSet.prerenimi, laudSet.number FROM TellimusSet INNER JOIN KlientSet ON TellimusSet.KlientId = KlientSet.Id INNER JOIN laudSet ON TellimusSet.laudId = laudSet.Id" UpdateCommand="UPDATE [TellimusSet] SET [Kuupaev] = @Kuupaev, [Kellaaeg] = @Kellaaeg, [staatus] = @staatus, [KlientId] = @KlientId, [laudId] = @laudId WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Kuupaev" Type="DateTime" />
            <asp:Parameter DbType="Time" Name="Kellaaeg" />
            <asp:Parameter Name="staatus" Type="String" />
            <asp:Parameter Name="KlientId" Type="Int32" />
            <asp:Parameter Name="laudId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Kuupaev" Type="DateTime" />
            <asp:Parameter DbType="Time" Name="Kellaaeg" />
            <asp:Parameter Name="staatus" Type="String" />
            <asp:Parameter Name="KlientId" Type="Int32" />
            <asp:Parameter Name="laudId" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
    </main>
</asp:Content>