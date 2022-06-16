<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MiscellaneousDetail.aspx.cs" Inherits="MiscellaneousDetail" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit"  TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="Rightside">
<div  class="container">
 <b class="rtop"><b class="r1"></b> <b class="r2"></b> <b class="r3"></b> <b class="r4"></b></b>

<h2 style=" font-size:large; border-bottom:2px solid #CCC" id="MiscellaneousDetailHeader" runat="server"></h2>
<br />
<p id="MiscellaneousDetailDate" style="color:#73A" runat="server"></p> 
<br />
<p id="MiscellaneousDetailSummary" style="color:Silver" runat="server"></p>
<hr />
<br />
<br />
<asp:Image Width="640px" Height="400px" ID="MiscellaneousDetailPicture" runat="server" />
<br />
<br />

    <div id="MiscellaneousDetailContent" runat="server">


    
</div>
<hr />
    
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>

    <ajaxToolkit:Rating ID="MiscellaneousRating" runat="server"
    CurrentRating="0"
    MaxRating="10"
    StarCssClass="ratingStar"
    WaitingStarCssClass="savedRatingStar"
    FilledStarCssClass="filledRatingStar"
    EmptyStarCssClass="emptyRatingStar" onchanged="MiscellaneousRating_Changed" onload="MiscellaneousRating_Load" /> 
   
    <p> &#1740;&#1705; &#1575;&#1605;&#1578;&#1740;&#1575;&#1586; &#1575;&#1586; &#1740;&#1705; &#1578;&#1575; &#1583;&#1607; &#1576;&#1607; &#1575;&#1740;&#1606; &#1605;&#1602;&#1575;&#1604;&#1607; &#1576;&#1583;&#1607;&#1740;&#1583;.</p>
    <hr />





    <div id="Comment" style=" direction:rtl">
   
   
    <asp:ListView ID="CommentList" runat="server"  
            DataSourceID="MiscellaneousCommentsDataSource" DataKeyNames="CommentID" 
     onitemdeleting="CommentList_ItemDeleting" 
            onitemdatabound="CommentList_ItemDataBound"   >
           
           
        <EmptyDataTemplate>
            <span>&#1606;&#1592;&#1585;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
        </EmptyDataTemplate>

        <ItemTemplate>
        <span style="">
        &#1606;&#1608;&#1588;&#1578;&#1607; &#1588;&#1583;&#1607; &#1578;&#1608;&#1587;&#1591;:  <asp:Label ID="CommentNameLabel" runat="server" 
                Text='<%# Eval("CommentName") %>' />
                &#1583;&#1585;:
            <asp:Label ID="CommentDateLabel" runat="server" 
                Text='<%# Eval("CommentDate") %>' />
            <br />
            <br />
            <asp:Label ID="CommentTextLabel" runat="server" Text='<%# Eval("CommentText") %>' />
            <br />
            <br />
            <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# Eval("CommentWebsite") %>' runat="server">&#1608;&#1576;&#1587;&#1575;&#1740;&#1578;</asp:HyperLink>  &nbsp;&nbsp;&nbsp; <asp:Label ID="HyperLink2" Text='<%# Eval("CommentEmail","&#1575;&#1740;&#1605;&#1740;&#1604;: {0} ") %>' runat="server">&#1575;&#1740;&#1605;&#1740;&#1604;</asp:Label>&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="UserProf" NavigateUrl='<%# "UserProfile.aspx?UserName=" + Membership.GetUser(Eval("UserIDfk")) %>' runat="server">&#1662;&#1585;&#1608;&#1601;&#1575;&#1740;&#1604; &#1705;&#1575;&#1585;&#1576;&#1585;</asp:HyperLink>&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="DeleteC" Visible="false" CommandName="Delete" runat="server" OnClientClick="return confirm('This will permanently delete this customer and all of their orders. Are you sure you want to do this!?!?');">&#1581;&#1584;&#1601;</asp:LinkButton>

            <br />
            </span>
            <hr />
        </ItemTemplate>


        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                            ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
      
    </asp:ListView>
   
    <asp:SqlDataSource ID="MiscellaneousCommentsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
            
            SelectCommand="SELECT [CommentID], [PostIDfk], [UserIDfk], [CommentDate], [CommentEmail], [CommentName], [CommentWebsite], [CommentText] FROM [Comment] WHERE ([PostIDfk] = @PostIDfk)" 
            DeleteCommand="DELETE FROM Comment WHERE [CommentID] = @CommentID">
        <DeleteParameters>
              <asp:Parameter Name="CommentID" />
        </DeleteParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="PostIDfk" QueryStringField="PostID" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</div>


<div id="CommentPost" style=" direction:rtl">
    &nbsp;<asp:LoginView ID="LoginView1" runat="server">
     <LoggedInTemplate>
     <p>&#1606;&#1592;&#1585; &#1582;&#1608;&#1583; &#1585;&#1575; &#1576;&#1585;&#1575;&#1740; &#1605;&#1575; &#1575;&#1585;&#1587;&#1575;&#1604; &#1705;&#1606;&#1740;&#1583;</p>
     <br />
   <b>&#1606;&#1575;&#1605;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b> &nbsp;<asp:TextBox ID="CommentName" Width="200px" runat="server"></asp:TextBox>
    &nbsp;<br />
     <br />
   <b>&#1608;&#1576;&#1587;&#1575;&#1740;&#1578;:&nbsp; </b> &nbsp;<asp:TextBox ID="CommentWebsite" Width="200px" runat="server"></asp:TextBox>
    &nbsp;<br />
    <br />
    <asp:TextBox ID="CommentText" Height="200px" Width="500px" TextMode="MultiLine" runat="server"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="CommentTextRequiredFieldValidator" 
        runat="server" ErrorMessage="&#1604;&#1591;&#1601;&#1575; &#1606;&#1592;&#1585; &#1582;&#1608;&#1583; &#1585;&#1575; &#1608;&#1575;&#1585;&#1583; &#1705;&#1606;&#1740;&#1583;." 
        ControlToValidate="CommentText" ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <br />
    <br />
    <asp:Button ID="SubmitComment" runat="server" Text="&#1575;&#1585;&#1587;&#1575;&#1604; &#1606;&#1592;&#1585;" 
        onclick="SubmitComment_Click" />


     </LoggedInTemplate>


     <AnonymousTemplate>


     <div style=" border:solid">
     <p>&#1576;&#1585;&#1575;&#1740; &#1575;&#1585;&#1587;&#1575;&#1604; &#1606;&#1592;&#1585; &#1582;&#1608;&#1583; &#1576;&#1575;&#1740;&#1583; &#1576;&#1607; &#1587;&#1740;&#1587;&#1578;&#1605; &#1608;&#1575;&#1585;&#1583; &#1588;&#1608;&#1740;&#1583;.</p>
     <br />
     <br />
     <a href="Login.aspx">&#1608;&#1585;&#1608;&#1583;</a>
     <br />
     <br />
     <a href="UserRegistration.aspx">&#1593;&#1590;&#1608;&#1740;&#1578;</a>
     </div>

     </AnonymousTemplate>


    </asp:LoginView>


   <b class="rbottom"><b class="r4"></b> <b class="r3"></b> <b class="r2"></b> <b class="r1"></b></b>
   </div>
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

