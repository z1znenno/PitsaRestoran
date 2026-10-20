<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact7.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>Lisa tellimus</h2>
<p>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id"
    DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="300px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />

        <%-- Kuupäev: kalender --%>
        <asp:TemplateField HeaderText="Kuupaev" SortExpression="Kuupaev">
            <InsertItemTemplate>
                <asp:TextBox ID="txtKuupaev" runat="server" TextMode="Date"
                    Text='<%# Bind("Kuupaev", "{0:yyyy-MM-dd}") %>' />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtKuupaev"
                    ErrorMessage="Vali kuupäev" ForeColor="Red" Display="Dynamic" />
            </InsertItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtKuupaevEdit" runat="server" TextMode="Date"
                    Text='<%# Bind("Kuupaev", "{0:yyyy-MM-dd}") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <%# Eval("Kuupaev", "{0:dd.MM.yyyy}") %>
            </ItemTemplate>
        </asp:TemplateField>

        <%-- Kellaaeg: kellaaja valik --%>
        <asp:TemplateField HeaderText="Kellaaeg" SortExpression="Kellaaeg">
            <InsertItemTemplate>
                <asp:TextBox ID="txtKellaaeg" runat="server" TextMode="Time"
                    Text='<%# Bind("Kellaaeg") %>' />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtKellaaeg"
                    ErrorMessage="Vali kellaaeg" ForeColor="Red" Display="Dynamic" />
            </InsertItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtKellaaegEdit" runat="server" TextMode="Time"
                    Text='<%# Bind("Kellaaeg") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <%# Eval("Kellaaeg") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="staatus" HeaderText="staatus" SortExpression="staatus" />

        <asp:TemplateField HeaderText="KlientId" SortExpression="KlientId">
            <InsertItemTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceKlient"
                    DataTextField="prerenimi" DataValueField="Id" SelectedValue='<%# Bind("KlientId") %>' />
                <asp:SqlDataSource ID="SqlDataSourceKlient" runat="server"
                    ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>"
                    SelectCommand="SELECT * FROM [KlientSet]" />
            </InsertItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("KlientId") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("KlientId") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="laudId" SortExpression="laudId">
            <InsertItemTemplate>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceLaud"
                    DataTextField="number" DataValueField="Id" SelectedValue='<%# Bind("laudId") %>' />
                <asp:SqlDataSource ID="SqlDataSourceLaud" runat="server"
                    ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>"
                    SelectCommand="SELECT * FROM [laudSet]" />
            </InsertItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("laudId") %>' />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("laudId") %>' />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>" DeleteCommand="DELETE FROM [TellimusSet] WHERE [Id] = @Id" InsertCommand="INSERT INTO [TellimusSet] ([Kuupaev], [Kellaaeg], [staatus], [KlientId], [laudId]) VALUES (@Kuupaev, @Kellaaeg, @staatus, @KlientId, @laudId)" SelectCommand="SELECT * FROM [TellimusSet]" UpdateCommand="UPDATE [TellimusSet] SET [Kuupaev] = @Kuupaev, [Kellaaeg] = @Kellaaeg, [staatus] = @staatus, [KlientId] = @KlientId, [laudId] = @laudId WHERE [Id] = @Id">
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