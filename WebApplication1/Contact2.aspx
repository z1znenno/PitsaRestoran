<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <br />
        <h2>Ametitöötajad</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="361px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="alguskuupaev" HeaderText="alguskuupaev" SortExpression="alguskuupaev" />
                    <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [AmetiMaaratusSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AmetiMaaratusSet] ([alguskuupaev], [Tootaja_Id], [amet_Id]) VALUES (@alguskuupaev, @Tootaja_Id, @amet_Id)" SelectCommand="SELECT AmetiMaaratusSet.Id, AmetiMaaratusSet.alguskuupaev, TootajaSet.perenimi, ametSet.nimetus FROM AmetiMaaratusSet INNER JOIN ametSet ON AmetiMaaratusSet.amet_Id = ametSet.Id INNER JOIN TootajaSet ON AmetiMaaratusSet.Tootaja_Id = TootajaSet.Id" UpdateCommand="UPDATE [AmetiMaaratusSet] SET [alguskuupaev] = @alguskuupaev, [Tootaja_Id] = @Tootaja_Id, [amet_Id] = @amet_Id WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="alguskuupaev" Type="DateTime" />
        <asp:Parameter Name="Tootaja_Id" Type="Int32" />
        <asp:Parameter Name="amet_Id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="alguskuupaev" Type="DateTime" />
        <asp:Parameter Name="Tootaja_Id" Type="Int32" />
        <asp:Parameter Name="amet_Id" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    </main>
</asp:Content>
