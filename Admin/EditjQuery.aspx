<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditjQuery.aspx.cs" Inherits="Admin_EditjQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="GeneralRTL" style="margin-right:200px;">


    <asp:DetailsView ID="DetailsView1" runat="server" Height="500px" Width="300px" 
        AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
        DataKeyNames="jQueryID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" onitemdeleting="DetailsView1_ItemDeleting">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="&#1593;&#1606;&#1608;&#1575;&#1606;" SortExpression="jQueryTitle">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1"  Width="500" runat="server" Text='<%# Bind("jQueryTitle") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1"  Width="500" runat="server" Text='<%# Bind("jQueryTitle") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1"  Width="500" runat="server" Text='<%# Bind("jQueryTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="&#1605;&#1581;&#1578;&#1608;&#1575;" SortExpression="jQueryContent">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" Width="500" Height="200" TextMode="MultiLine" runat="server" Text='<%# Bind("jQueryContent") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" Width="500" Height="200" TextMode="MultiLine" runat="server" Text='<%# Bind("jQueryContent") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" Width="500" Height="200" TextMode="MultiLine" runat="server" Text='<%# Bind("jQueryContent") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="&#1593;&#1705;&#1587;" SortExpression="jQueryPicture">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" Width="500" runat="server" Text='<%# Bind("jQueryPicture") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" Width="500" runat="server" Text='<%# Bind("jQueryPicture") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" Width="500" runat="server" Text='<%# Bind("jQueryPicture") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        DeleteCommand="DELETE FROM [jQuery] WHERE [jQueryID] = @jQueryID" 
        InsertCommand="INSERT INTO [jQuery] ([jQueryTitle], [jQueryContent], [jQueryPicture]) VALUES (@jQueryTitle, @jQueryContent, @jQueryPicture)" 
        SelectCommand="SELECT * FROM [jQuery]" 
        UpdateCommand="UPDATE [jQuery] SET [jQueryTitle] = @jQueryTitle, [jQueryContent] = @jQueryContent, [jQueryPicture] = @jQueryPicture WHERE [jQueryID] = @jQueryID">
        <DeleteParameters>
            <asp:Parameter Name="jQueryID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="jQueryTitle" Type="String" />
            <asp:Parameter Name="jQueryContent" Type="String" />
            <asp:Parameter Name="jQueryPicture" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="jQueryTitle" Type="String" />
            <asp:Parameter Name="jQueryContent" Type="String" />
            <asp:Parameter Name="jQueryPicture" Type="String" />
            <asp:Parameter Name="jQueryID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>

</asp:Content>

