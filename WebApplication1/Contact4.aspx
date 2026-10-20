<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact4.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>Laud</h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="286px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
            <asp:BoundField DataField="kohtadeArv" HeaderText="kohtadeArv" SortExpression="kohtadeArv" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [laudSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [laudSet] ([number], [kohtadeArv]) VALUES (@number, @kohtadeArv)" ProviderName="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [number], [kohtadeArv] FROM [laudSet]" UpdateCommand="UPDATE [laudSet] SET [number] = @number, [kohtadeArv] = @kohtadeArv WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="number" Type="Int32" />
            <asp:Parameter Name="kohtadeArv" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="number" Type="Int32" />
            <asp:Parameter Name="kohtadeArv" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
            <asp:BoundField DataField="kohtadeArv" HeaderText="kohtadeArv" SortExpression="kohtadeArv" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</p>
    </main>
</asp:Content>