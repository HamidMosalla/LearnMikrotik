<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegCourse.aspx.cs" Inherits="Admin_UserRegCourse" %>

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
                <li><a href="UserRegCourse.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>ثبت نام شدگان برای دوره ها</span></a></li>
                <li><a href="UsersAndRoles.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1606;&#1602;&#1588; &#1607;&#1575;</span></a></li>

            </ul>
        </div>
    </div>



<div id="GeneralRTL" >


    <asp:ListView ID="ListView1" runat="server" 
        DataKeyNames="CourseID,CourseRegisterID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                    <td>
                    <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                </td>

                 <td>
                    <asp:Label ID="CourseRegisterIDLabel" runat="server" 
                        Text='<%# Eval("CourseRegisterID") %>' />
                </td>

                <td>
                    <asp:Label ID="UserIDfkLabel" runat="server" Text='<%# Membership.GetUser(Eval("UserIDfk")) %>' />
                </td>

                 <td>
                    <asp:Label ID="FirtNameLabel" runat="server" Text='<%# Eval("FirtName") %>' />
                </td>

                <td>
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                </td>

                <td>
                         <asp:HyperLink ID="CourseTitleLink" Text='<%# Eval("CourseTitle") %>' NavigateUrl='<%# "UserRegCourseDetail.aspx?CourseRegisterID=" + Eval("CourseRegisterID")%>'  runat="server"></asp:HyperLink>
                </td>

                <td>
                    <asp:Label ID="CourseLocationLabel" runat="server" 
                        Text='<%# Eval("CourseLocation") %>' />
                </td>

                <td>
                    <asp:Label ID="CourseDateStartLabel" runat="server" 
                        Text='<%# Eval("CourseDateStart") %>' />
                </td>

                <td>
                    <asp:Label ID="CourseDateEndLabel" runat="server" 
                        Text='<%# Eval("CourseDateEnd") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
      
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
       
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">

                <td>
                    <asp:Label ID="CourseIDLabel" runat="server" Text='<%# Eval("CourseID") %>' />
                </td>

                 <td>
                    <asp:Label ID="CourseRegisterIDLabel" runat="server" 
                        Text='<%# Eval("CourseRegisterID") %>' />
                </td>

                <td>
                    <asp:Label ID="UserIDfkLabel" runat="server" Text='<%# Membership.GetUser(Eval("UserIDfk")) %>' />
                </td>

                 <td>
                    <asp:Label ID="FirtNameLabel" runat="server" Text='<%# Eval("FirtName") %>' />
                </td>

                <td>
                    <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                </td>

                <td>
                     <asp:HyperLink ID="CourseTitleLink" Text='<%# Eval("CourseTitle") %>' NavigateUrl='<%# "UserRegCourseDetail.aspx?CourseRegisterID=" + Eval("CourseRegisterID")%>'  runat="server"></asp:HyperLink>
                </td>

                <td>
                    <asp:Label ID="CourseLocationLabel" runat="server" 
                        Text='<%# Eval("CourseLocation") %>' />
                </td>

                <td>
                    <asp:Label ID="CourseDateStartLabel" runat="server" 
                        Text='<%# Eval("CourseDateStart") %>' />
                </td>

                <td>
                    <asp:Label ID="CourseDateEndLabel" runat="server" 
                        Text='<%# Eval("CourseDateEnd") %>' />
                </td>

            </tr>
        </ItemTemplate>

        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                    شماره ی دوره</th>
                                <th runat="server">
                                    شماره ی ثبت نام</th>
                                <th runat="server">
                                    نام کاربری</th>
                                <th runat="server">
                                    نام</th>
                                <th runat="server">
                                    نام خانوادگی</th>
                                <th runat="server">
                                    عنوان دوره</th>
                                <th runat="server">
                                    مکان</th>
                                <th runat="server">
                                    پایان دوره</th>
                                <th runat="server">
                                    شروع دوره</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
    </asp:ListView>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
        SelectCommand="SELECT Course.CourseID, Course.CourseTitle, Course.CourseLocation, Course.CourseDateStart, CourseRegister.CourseRegisterID, Course.CourseDateEnd, CourseRegister.UserIDfk, CourseRegister.FirtName, CourseRegister.LastName, CourseRegister.CourseIDfk FROM Course INNER JOIN CourseRegister ON Course.CourseID = CourseRegister.CourseIDfk">
    </asp:SqlDataSource>


</div>

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />




</asp:Content>

