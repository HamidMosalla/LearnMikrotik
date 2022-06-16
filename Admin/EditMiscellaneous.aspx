<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditMiscellaneous.aspx.cs" Inherits="Admin_EditMiscellaneous" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





<div id="adminmenu">
        <div id="adminlist">
            <ul>
                <li><a href="AdminIndex.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1589;&#1601;&#1581;&#1607; &#1740; &#1575;&#1589;&#1604;&#1740;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1589;&#1601;&#1581;&#1607; &#1740; &#1575;&#1589;&#1604;&#1740;</span></a></li>
                <li><a href="AdminSendArticle.aspx" title="&#1575;&#1585;&#1587;&#1575;&#1604; &#1605;&#1602;&#1575;&#1604;&#1607;"><span>&#1575;&#1585;&#1587;&#1575;&#1604; &#1605;&#1602;&#1575;&#1604;&#1607;</span></a></li>
                <li><a href="EditArticle.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1605;&#1602;&#1575;&#1604;&#1607;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1605;&#1602;&#1575;&#1604;&#1607;</span></a></li>
                <li><a href="AdminSendMiscellaneous.aspx" title="&#1575;&#1585;&#1587;&#1575;&#1604; &#1711;&#1608;&#1606;&#1575;&#1711;&#1608;&#1606;"><span>&#1575;&#1585;&#1587;&#1575;&#1604; &#1711;&#1608;&#1606;&#1575;&#1711;&#1608;&#1606;</span></a></li>
                <li><a href="EditMiscellaneous.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1711;&#1608;&#1606;&#1575;&#1711;&#1608;&#1606;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1711;&#1608;&#1606;&#1575;&#1711;&#1608;&#1606;</span></a></li>
                <li><a href="AdminSendPicture.aspx" title="&#1575;&#1585;&#1587;&#1575;&#1604; &#1593;&#1705;&#1587; &#1607;&#1575;"><span>&#1575;&#1585;&#1587;&#1575;&#1604; &#1593;&#1705;&#1587; &#1607;&#1575;</span></a></li>
                <li><a href="EditPicture.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1593;&#1705;&#1587; &#1607;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1593;&#1705;&#1587; &#1607;&#1575;</span></a></li>
                <li><a href="AdminSendVideo.aspx" title="&#1575;&#1585;&#1587;&#1575;&#1604; &#1608;&#1740;&#1583;&#1574;&#1608;&#1607;&#1575;"><span>&#1575;&#1585;&#1587;&#1575;&#1604; &#1608;&#1740;&#1583;&#1574;&#1608;&#1607;&#1575;</span></a></li>
                <li><a href="EditVideo.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1608;&#1740;&#1583;&#1574;&#1608;&#1607;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1608;&#1740;&#1583;&#1574;&#1608;&#1607;&#1575;</span></a></li>
                <li><a href="AdminSendjQuery.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1608;&#1740;&#1583;&#1574;&#1608;&#1607;&#1575;"><span>&#1575;&#1585;&#1587;&#1575;&#1604; &#1583;&#1585; &#1580;&#1740;&#1705;&#1608;&#1574;&#1585;&#1740;</span></a></li>
                <li><a href="EditjQuery.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1608;&#1740;&#1583;&#1574;&#1608;&#1607;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1580;&#1740;&#1705;&#1608;&#1574;&#1585;&#1740;</span></a></li>
                <li><a href="ManageUsers.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;</span></a></li>
                <li><a href="NewCourse.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1583;&#1608;&#1585;&#1607; &#1607;&#1575;</span></a></li>
                 <li><a href="UserRegCourse.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>ثبت نام شدگان برای دوره ها</span></a></li>
                <li><a href="UsersAndRoles.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1606;&#1602;&#1588; &#1607;&#1575;</span></a></li>

            </ul>
        </div>
    </div>



<div id="GeneralRTL" style="margin-right:200px;">






    <asp:DetailsView ID="DetailsView1" runat="server"  Height="400px" Width="500px" 
        AllowPaging="True" AutoGenerateRows="False" CellPadding="4" 
        DataKeyNames="PostID,PostIDfk" DataSourceID="SqlDataSource1" 
        ForeColor="#333333"  GridLines="Horizontal" 
        onitemdeleting="DetailsView1_ItemDeleting">

         <PagerSettings Mode="NumericFirstLast"  FirstPageText="&#1575;&#1608;&#1604;&#1740;&#1606;"
          LastPageText="&#1570;&#1582;&#1585;&#1740;&#1606;"  Position="Bottom"/>     
                              
                               
                              


        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999"/>
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="PostID" HeaderText="&#1588;&#1605;&#1575;&#1585;&#1607; &#1740; &#1662;&#1587;&#1578;" InsertVisible="False" 
                ReadOnly="True" SortExpression="PostID" HeaderStyle-Width="100" >
<HeaderStyle Width="100px"></HeaderStyle>
            </asp:BoundField>
            <asp:TemplateField HeaderText="عنوان پست" SortExpression="PostTitle">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" Width="500" runat="server" Text='<%# Bind("PostTitle") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PostTitle") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PostTitle") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="تاریخ پست" SortExpression="PostDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" Width="500" runat="server" Text='<%# Bind("PostDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PostDate") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PostDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="عکس پست" SortExpression="PostPicture">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" Width="500" runat="server" Text='<%# Bind("PostPicture") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PostPicture") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("PostPicture") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="خلاصه ی گوناگون" SortExpression="ArticleSummary">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" Width="500" Height="200" TextMode="MultiLine" runat="server" Text='<%# Bind("MsSummary") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MsSummary") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("MsSummary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="محتوای گوناگون" SortExpression="ArticleContent">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" Width="500" Height="400" TextMode="MultiLine" runat="server" Text='<%# Bind("MsContent") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("MsContent") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("MsContent") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                CancelText="&#1604;&#1594;&#1608;" DeleteText="&#1581;&#1584;&#1601;" EditText="&#1608;&#1740;&#1585;&#1575;&#1740;&#1588;" UpdateText="&#1576;&#1607; &#1585;&#1608;&#1586; &#1585;&#1587;&#1575;&#1606;&#1740;" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         
    </asp:DetailsView>




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        SelectCommand="SELECT Post.PostID, Post.PostTitle, Post.PostDate, Post.PostPicture, Miscellaneous.MsSummary, Miscellaneous.MsContent, Miscellaneous.PostIDfk FROM Miscellaneous INNER JOIN Post ON Miscellaneous.PostIDfk = Post.PostID"
        UpdateCommand="Update_Post_Miscellaneous" UpdateCommandType="StoredProcedure"
        DeleteCommand="DELETE FROM Post WHERE PostID=@PostID">

        <UpdateParameters>
        <asp:Parameter Name="PostID" Type="Int32" />
         <asp:Parameter Name="PostDate" Type="String" />
          <asp:Parameter Name="PostPicture" Type="String" />
           <asp:Parameter Name="PostIDfk" Type="Int32" />
            <asp:Parameter Name="MsSummary" Type="String" />
             <asp:Parameter Name="MsContent" Type="String" />
    </UpdateParameters>

    </asp:SqlDataSource>


</div>






</asp:Content>

