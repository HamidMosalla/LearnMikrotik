<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegCourseDetail.aspx.cs" Inherits="Admin_UserRegCourseDetail" %>

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



<div id="GeneralRTL" >


<div style="direction:rtl">

    <asp:Label ID="MailSucMessage" ForeColor="Red" Text="پیغام شما با موفقیت ارسال شد." Visible="false" runat="server"></asp:Label>

<table border="1" cellpadding="10">
    <tr >
        <td><b>نام:</b></td>
        <td><p id="FirtName" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>نام خانوادگی:</b></td>
        <td><p id="LastName" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>نام پدر:</b></td>
        <td><p id="FatherName" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>جنسیت:</b></td>
        <td><p id="Gender" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>تاریخ تولد:</b></td>
        <td><p id="BirthDate" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>تلفن:</b></td>
        <td><p id="PhoneNumber" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>موبایل:</b></td>
        <td><p id="CellNumber" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>ایمیل:</b></td>
        <td><p id="Email" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>شغل:</b></td>
        <td><p id="Occupation" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>آخرین مدرک تحصیلی:</b></td>
        <td><p id="LastDegree" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>شماره شناسنامه:</b></td>
        <td><p id="ShoShenasname" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>محل صدور شناسنامه:</b></td>
        <td><p id="SodourShenasname" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>کد ملی:</b></td>
        <td><p id="ShoMeli" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>ادرس:</b></td>
        <td><p id="Address" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>پیش نیاز گذرانده شده:</b></td>
        <td><p id="PassedPrerequisite" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>شماره ی پیش نیاز:</b></td>
        <td><p id="PrerequisiteNumber" runat="server"></p></td>
    </tr>

     <tr>
        <td><b>رزومه:</b></td>
        <td><p id="Resume" runat="server"></p></td>
    </tr>
  
</table> 
</div>

</div>


</asp:Content>

