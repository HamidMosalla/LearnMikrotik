<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSendVideo.aspx.cs" Inherits="Admin_AdminSendVideo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="HTMLEditor" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





<div id="adminmenu">
        <div id="adminlist">
            <ul>
               <li><a href="AdminIndex.aspx" title="مدیریت صفحه ی اصلی"><span>مدیریت صفحه ی اصلی</span></a></li>
                <li><a href="AdminSendArticle.aspx" title="ارسال مقاله"><span>ارسال مقاله</span></a></li>
                <li><a href="EditArticle.aspx" title="مدیریت مقاله"><span>مدیریت مقاله</span></a></li>
                <li><a href="AdminSendMiscellaneous.aspx" title="ارسال گوناگون"><span>ارسال گوناگون</span></a></li>
                <li><a href="EditMiscellaneous.aspx" title="مدیریت گوناگون"><span>مدیریت گوناگون</span></a></li>
                <li><a href="AdminSendPicture.aspx" title="ارسال عکس ها"><span>ارسال عکس ها</span></a></li>
                <li><a href="EditPicture.aspx" title="مدیریت عکس ها"><span>مدیریت عکس ها</span></a></li>
                <li><a href="AdminSendVideo.aspx" title="ارسال ویدئوها"><span>ارسال ویدئوها</span></a></li>
                <li><a href="EditVideo.aspx" title="مدیریت ویدئوها"><span>مدیریت ویدئوها</span></a></li>
                <li><a href="AdminSendjQuery.aspx" title="مدیریت ویدئوها"><span>ارسال در جیکوئری</span></a></li>
                <li><a href="EditjQuery.aspx" title="مدیریت ویدئوها"><span>مدیریت جیکوئری</span></a></li>
                <li><a href="ManageUsers.aspx" title="مدیریت اعضا"><span>مدیریت اعضا</span></a></li>
                <li><a href="NewCourse.aspx" title="مدیریت اعضا"><span>مدیریت دوره ها</span></a></li>
                 <li><a href="UserRegCourse.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1593;&#1590;&#1575;"><span>ثبت نام شدگان برای دوره ها</span></a></li>
                <li><a href="UsersAndRoles.aspx" title="مدیریت اعضا"><span>مدیریت نقش ها</span></a></li>

            </ul>
        </div>
    </div>

   



<div id="GeneralRTL">

 <asp:Label ID="VideoPostMessage" runat="server" Text="&#1608;&#1740;&#1583;&#1574;&#1608; &#1576;&#1575; &#1605;&#1608;&#1601;&#1602;&#1740;&#1578; &#1575;&#1585;&#1587;&#1575;&#1604; &#1588;&#1583;." EnableViewState="False" Visible="False" ForeColor="#FF3300"></asp:Label>
    <br />
       <p> &#1593;&#1606;&#1608;&#1575;&#1606; &#1608;&#1740;&#1583;&#1574;&#1608;: <asp:TextBox Width="400px" ID="VideoPostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="VideoPostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="VideoPostTitle" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1593;&#1606;&#1608;&#1575;&#1606; &#1608;&#1740;&#1583;&#1574;&#1608; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>
        <br />

        <div>

            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <p>مختصری در مورد ویدئو:</p>
        <HTMLEditor:Editor Height="370px"  ID="VideoSummaryEditor" runat="server" 
                Width="765px" />

        </div>
        <br />
        <br />
   &#1570;&#1662;&#1604;&#1608;&#1583; &#1578;&#1575;&#1605;&#1606;&#1740;&#1604; &#1608;&#1740;&#1583;&#1574;&#1608; : <asp:FileUpload ID="VideoPicture" runat="server" />
        <br />
        <br />
        &#1570;&#1662;&#1604;&#1608;&#1583; &#1608;&#1740;&#1583;&#1574;&#1608;<asp:FileUpload ID="VideoUpload" runat="server" />

        (&#1601;&#1585;&#1605;&#1578; &#1605;&#1606;&#1575;&#1587;&#1576; mp4 &#1576;&#1585;&#1575;&#1740; &#1578;&#1605;&#1575;&#1605; &#1576;&#1585;&#1608;&#1586;&#1585;&#1607;&#1575; &#1575;&#1711;&#1585; &#1601;&#1585;&#1605;&#1578;&#1740; &#1594;&#1740;&#1585; &#1575;&#1586; &#1575;&#1740;&#1606; &#1570;&#1662;&#1604;&#1608;&#1583; &#1605;&#1740;&#1705;&#1606;&#1740;&#1583; &#1604;&#1591;&#1601;&#1575; 
    &#1601;&#1585;&#1605;&#1578; &#1607;&#1575;&#1740; &#1662;&#1588;&#1578;&#1740;&#1576;&#1575;&#1606;&#1740; &#1588;&#1583;&#1607; html5 &#1585;&#1575; &#1583;&#1585; &#1606;&#1592;&#1585; &#1583;&#1575;&#1588;&#1578;&#1607; &#1576;&#1575;&#1588;&#1740;&#1583;&#1548; &#1583;&#1585; &#1594;&#1740;&#1585; &#1575;&#1606;&#1589;&#1608;&#1585;&#1578; &#1601;&#1602;&#1591; &#1576;&#1585;&#1575;&#1740; &#1585;&#1608;&#1740; 
    &#1575;&#1740;&#1606;&#1578;&#1585;&#1606;&#1578; &#1575;&#1705;&#1587;&#1662;&#1604;&#1608;&#1585;&#1585; &#1575;&#1580;&#1585;&#1575; &#1582;&#1608;&#1575;&#1607;&#1583; &#1588;&#1583; &#1608; &#1605;&#1605;&#1705;&#1606; &#1575;&#1587;&#1578; &#1576;&#1585;&#1608;&#1586;&#1585;&#1607;&#1575;&#1740; &#1583;&#1740;&#1711;&#1585; &#1570;&#1606; &#1585;&#1575; &#1587;&#1575;&#1662;&#1608;&#1585;&#1578; &#1606;&#1705;&#1606;&#1606;&#1583;.)<br />
        <br />

        <asp:Button ID="SubmitVideo" runat="server" Text="&#1575;&#1585;&#1587;&#1575;&#1604; &#1582;&#1576;&#1585;" Height="28px"  
            Width="99px" onclick="SubmitVideo_Click" />
            </div>



</asp:Content>

