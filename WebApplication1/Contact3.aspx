<%@ Page Title="Pitsa Restoran" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <br />
        <h2>Lisa ametitöötajad</h2>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"
            DataKeyNames="Id" DataSourceID="SqlDataSourceMaaratus"
            DefaultMode="Insert" Height="50px" Width="300px">
            <Fields>
                <asp:BoundField DataField="alguskuupaev" HeaderText="Alguskuupäev" />

                <asp:TemplateField HeaderText="Töötaja">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlTootaja" runat="server"
                            DataSourceID="SqlDataSourceTootaja"
                            DataTextField="perenimi" DataValueField="Id"
                            SelectedValue='<%# Bind("Tootaja_Id") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Amet">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlAmet" runat="server"
                            DataSourceID="SqlDataSourceAmet"
                            DataTextField="nimetus" DataValueField="Id"
                            SelectedValue='<%# Bind("amet_Id") %>'>
                        </asp:DropDownList>
                    </InsertItemTemplate>
                </asp:TemplateField>

                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSourceMaaratus" runat="server"
            ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>"
            SelectCommand="SELECT [Id], [alguskuupaev], [Tootaja_Id], [amet_Id] FROM [AmetiMaaratusSet]"
            InsertCommand="INSERT INTO [AmetiMaaratusSet] ([alguskuupaev], [Tootaja_Id], [amet_Id]) VALUES (@alguskuupaev, @Tootaja_Id, @amet_Id)">
            <InsertParameters>
                <asp:Parameter Name="alguskuupaev" Type="DateTime" />
                <asp:Parameter Name="Tootaja_Id" Type="Int32" />
                <asp:Parameter Name="amet_Id" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceTootaja" runat="server"
            ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>"
            SelectCommand="SELECT [Id], [perenimi] FROM [TootajaSet] ORDER BY [perenimi]">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceAmet" runat="server"
            ConnectionString="<%$ ConnectionStrings:PitsaRestoran2ConnectionString1 %>"
            SelectCommand="SELECT [Id], [nimetus] FROM [AmetSet] ORDER BY [nimetus]">
        </asp:SqlDataSource>
    </main>
</asp:Content>