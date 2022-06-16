<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="Rightside">

<div class="container" style="direction:rtl">
 <b class="rtop"><b class="r1"></b> <b class="r2"></b> <b class="r3"></b> <b class="r4"></b></b>

 
<table border="0">
    <tr>
        <td><b>نام:</b></td>
        <td>
       <p  id="UserName" runat="server"></p>
        </td>
    </tr>
 
    <tr>
        <td><b>نام خانوادگی:</b></td>
        <td>
       <p  id="UserLastName" runat="server"></p>
        </td>
    </tr>

    <tr>
        <td><b>آواتار:</b></td>
        <td>
            <asp:Image ID="UserAvatar" runat="server" />
        </td>
    </tr>

    <tr>
        <td><b>درباره:</b></td>
        <td>
       <p  id="UserAbout" runat="server"></p>
        </td>
    </tr>

    <tr>
        <td><b>وبسایت:</b></td>
        <td>
            <asp:HyperLink ID="UserWebSite" runat="server"></asp:HyperLink>
        </td>
    </tr>
 
    <tr>
        <td><b>ایمیل:</b></td>
        <td>
       <p  id="UserEmail" runat="server"></p>
        </td>
    </tr>
 
    <tr>
        <td><b>مسنجر:</b></td>
        <td>
       <p  id="UserMessenger" runat="server"></p>
        </td>
    </tr>

     <tr>
        <td><b>وضعیت حضور:</b></td>
        <td>
       <p  id="UserOnline" runat="server"></p>
        </td>
    </tr>

     <tr>
        <td><b>تاریخ عضویت:</b></td>
        <td>
       <p  id="RegisterDate" runat="server"></p>
        </td>
    </tr>

     <tr>
        <td><b>آخرین فعالیت:</b></td>
        <td>
       <p  id="LastActivity" runat="server"></p>
        </td>
    </tr>

</table> 


</div>     

 <b class="rbottom"><b class="r4"></b> <b class="r3"></b> <b class="r2"></b> <b class="r1"></b></b>

</div>



<div id="LeftSide" style="direction:rtl">

<div class="container">
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

    <hr />

        <h4 style="background-color:Blue; color:Aqua">آخرین دوره ها</h4>
     <asp:ListView ID="CourseListView" runat="server" DataKeyNames="CourseID" DataSourceID="CourseSqlDataSource">
       
        <EmptyDataTemplate>
            <span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <span style="">
            <asp:HyperLink ID="TitleLink" Text='<%# Eval("CourseTitle") %>' NavigateUrl='<%# "Users/CourseRegister.aspx?CourseID=" + Eval("CourseID")%>'  runat="server"></asp:HyperLink>
            <br />
            &#1578;&#1575;&#1585;&#1740;&#1582; &#1588;&#1585;&#1608;&#1593;: <asp:Label ID="Date" runat="server" Text='<%# Eval("CourseDateStart") %>' ForeColor="Gray" />
                <br />
                 &#1605;&#1705;&#1575;&#1606; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585;&#1740;: <asp:Label ID="Location" runat="server" Text='<%# Eval("CourseLocation") %>' ForeColor="Gray" />
                  <br />
                <asp:Image ID="CoursePicture" runat="server" Width="80px" Height="50px" ImageUrl='<%# Eval("CoursePicture") %>' />
                  <br />
            </span>
        </ItemTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="CourseSqlDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        
                        SelectCommand="SELECT TOP 5 CourseID, CourseTitle, CourseLocation, CourseDateStart, CoursePicture FROM Course ORDER BY CourseID DESC">
    </asp:SqlDataSource>

<b class="rbottom"><b class="r4"></b> <b class="r3"></b> <b class="r2"></b> <b class="r1"></b></b>
</div>

</div>


</asp:Content>

