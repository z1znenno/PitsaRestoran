<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %> </h2>
        <br />
        <h2>Tootaja</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="586px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                    <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                    <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [TootajaSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TootajaSet] ([eesnimi], [perenimi], [isikukood]) VALUES (@eesnimi, @perenimi, @isikukood)" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [eesnimi], [perenimi], [isikukood] FROM [TootajaSet]" UpdateCommand="UPDATE [TootajaSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [isikukood] = @isikukood WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="eesnimi" Type="String" />
                    <asp:Parameter Name="perenimi" Type="String" />
                    <asp:Parameter Name="isikukood" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="eesnimi" Type="String" />
                    <asp:Parameter Name="perenimi" Type="String" />
                    <asp:Parameter Name="isikukood" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    <h2>Lisa tootaja</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                <asp:BoundField DataField="isikukood" HeaderText="isikukood" SortExpression="isikukood" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </main>
</asp:Content>
