<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div id="Rightside">

<div class="container">
 <b class="rtop"><b class="r1"></b> <b class="r2"></b> <b class="r3"></b> <b class="r4"></b></b>

<asp:ListView ID="ListView1" runat="server" DataKeyNames="CourseID" DataSourceID="SqlDataSource1">
       

        <EmptyDataTemplate>
            <span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>
       


        <ItemTemplate>
            <span style="">
                <asp:HyperLink ID="ArticleTitleLink" Text='<%# Eval("CourseTitle") %>' NavigateUrl='<%# "CourseDetail.aspx?CourseID=" + Eval("CourseID") + "&CourseTitle=" + Server.UrlEncode(Eval("CourseTitle").ToString())%>'  runat="server"></asp:HyperLink>
            <br />
            <asp:Image ID="ArticleImage" Width="70" Height="70" ImageUrl='<%# Eval("[CoursePicture]") %>' runat="server" />
            <br />
           <asp:Label ID="DateStart" runat="server" Text='<%# Eval("CourseDateEnd") %>' ForeColor="Gray" /> &nbsp: از تاریخ:
           <asp:Label ID="DateEnd" runat="server" Text='<%# Eval("CourseDateStart") %>' ForeColor="Gray" /> &nbsp: تا تاریخ

                <br />
            </span>
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="&#1575;&#1608;&#1604;&#1740;&#1606;" LastPageText="&#1570;&#1582;&#1585;&#1740;&#1606;" NextPageText="&#1576;&#1593;&#1583;&#1740;" PreviousPageText="&#1602;&#1576;&#1604;&#1740;" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="&#1575;&#1608;&#1604;&#1740;&#1606;" LastPageText="&#1570;&#1582;&#1585;&#1740;&#1606;" NextPageText="&#1576;&#1593;&#1583;&#1740;" PreviousPageText="&#1602;&#1576;&#1604;&#1740;" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
       
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
         
        
        
        SelectCommand="SELECT [CourseID], [CourseTitle], [CourseLocation], [CourseDateStart], [CourseDateEnd], [CoursePicture] FROM [Course]">
    </asp:SqlDataSource>

    
    
</div>
</div>





<div id="LeftSide">
<div  class="container">
 <b class="rtop"><b class="r1"></b> <b class="r2"></b> <b class="r3"></b> <b class="r4"></b></b>

<h4 style="background-color:Blue; color:Aqua">آخرین مقالات</h4>
 <asp:ListView ID="ArticleListView" runat="server" DataKeyNames="PostID" DataSourceID="ArticleSqlDataSource">
       
        <EmptyDataTemplate>
            <span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <span style="">
            <asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "ArticleDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
            <br />
            <asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
                <br />
            </span>
        </ItemTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="ArticleSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        
                        
                         SelectCommand="SELECT Top 5 PostID, PostType, PostTitle, PostDate FROM Post WHERE (PostType = N'Article') ORDER BY PostID DESC">
    </asp:SqlDataSource>

    <hr />

     <h4 style="background-color:Blue; color:Aqua">آخرین مطالب متفرقه</h4>
    <asp:ListView ID="MiscellaneousListView" runat="server" DataKeyNames="PostID" DataSourceID="MiscellaneousSqlDataSource">
       
        <EmptyDataTemplate>
            <span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <span style="">
            <asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "MiscellaneousDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
            <br />
            <asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
                <br />
            </span>
        </ItemTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="MiscellaneousSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        
                        
                       SelectCommand="SELECT Top 5 PostID, PostType, PostTitle, PostDate FROM Post WHERE (PostType = N'Miscellaneous') ORDER BY PostID DESC">
    </asp:SqlDataSource>


    <hr />
     <h4 style="background-color:Blue; color:Aqua">آخرین عکس ها</h4>
    <asp:ListView ID="PictureListView" runat="server" DataKeyNames="PostID" DataSourceID="PictureSqlDataSource">
       
        <EmptyDataTemplate>
            <span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <span style="">
            <asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "PictureDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
            <br />
            <asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
                <br />
                <asp:Image ID="Image1" Width="100px" Height="70px" ImageUrl='<%# Eval("PostPicture") %>' runat="server" />
                <br />
            </span>
        </ItemTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="PictureSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        
                        
                         
                         SelectCommand="SELECT TOP (5) PostID, PostType, PostTitle, PostDate, PostPicture FROM Post WHERE (PostType = N'Picture') ORDER BY PostID DESC">
    </asp:SqlDataSource>

    <hr />

    <h4 style="background-color:Blue; color:Aqua">آخرین ویدئوها</h4>
    <asp:ListView ID="VideoListView" runat="server" DataKeyNames="PostID" DataSourceID="VideoPictureSqlDataSource">
       
        <EmptyDataTemplate>
            <span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <span style="">
            <asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "VideoDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
            <br />
            <asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
                <br />
                <asp:Image ID="Image1" Width="100px" Height="70px" ImageUrl='<%# Eval("PostPicture") %>' runat="server" />
                <br />
            </span>
        </ItemTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="VideoPictureSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        
                        
                         
                         SelectCommand="SELECT TOP (5) PostID, PostType, PostTitle, PostDate, PostPicture FROM Post WHERE (PostType = N'Video') ORDER BY PostID DESC">
    </asp:SqlDataSource>


 <b class="rbottom"><b class="r4"></b> <b class="r3"></b> <b class="r2"></b> <b class="r1"></b></b>
</div>
</div>


</asp:Content>

