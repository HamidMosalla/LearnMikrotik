﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSendMiscellaneous.aspx.cs" Inherits="Admin_AdminSendMiscellaneous" %>

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

 <asp:Label ID="NewsPostMessage" runat="server" Text="&#1605;&#1602;&#1575;&#1604;&#1607; &#1576;&#1575; &#1605;&#1608;&#1601;&#1602;&#1740;&#1578; &#1575;&#1585;&#1587;&#1575;&#1604; &#1588;&#1583;." EnableViewState="False" Visible="False" ForeColor="#FF3300"></asp:Label>
    <br />
       <p> &#1593;&#1606;&#1608;&#1575;&#1606; &#1582;&#1576;&#1585;: <asp:TextBox Width="400px" ID="MiscellaneousPostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="MiscellaneousPostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="MiscellaneousPostTitle" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1593;&#1606;&#1608;&#1575;&#1606; &#1605;&#1602;&#1575;&#1604;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>
         <p> &#1582;&#1604;&#1575;&#1589;&#1607; &#1740; &#1582;&#1576;&#1585;:
       <asp:TextBox ID="MiscellaneousSummary" Width="350px" Height="100px" TextMode="MultiLine" runat="server" EnableTheming="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="MiscellaneousSummaryRequiredFieldValidator" 
            runat="server" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1582;&#1604;&#1575;&#1589;&#1607; &#1740; &#1605;&#1602;&#1575;&#1604;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            ControlToValidate="MiscellaneousSummary" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </p>
        <br />

        <div>

            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>

        <HTMLEditor:Editor Height="370px"  ID="MiscellaneousEditor" runat="server" 
                Width="765px" />

        </div>
        <asp:RequiredFieldValidator ID="MiscellaneousEditorRequiredFieldValidator" runat="server" 
            ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1605;&#1581;&#1578;&#1608;&#1575;&#1740; &#1582;&#1576;&#1585; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." ControlToValidate="MiscellaneousEditor" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:FileUpload ID="MiscellaneousPicture" runat="server" />

        <br />
        <br />

        <asp:Button ID="SubmitArticle" runat="server" Text="&#1575;&#1585;&#1587;&#1575;&#1604; &#1582;&#1576;&#1585;" Height="28px"  
            Width="99px" onclick="SubmitArticle_Click" />
            </div>

</asp:Content>

