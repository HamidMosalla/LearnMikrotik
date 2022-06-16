<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserIndex.aspx.cs" Inherits="Users_UserIndex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div id="adminmenu">
        <div id="adminlist">
            <ul>
              <li><a href="UserIndex.aspx" title="مدیریت صفحه ی اصلی"><span>کنترل پنل کاربری</span></a></li>
                <li><a href="UserSendArticle.aspx" title="مدیریت اخبار"><span>ارسال مقاله</span></a></li>
                <li><a href="UserProfileCPanel.aspx" title="مدیریت اخبار"><span>ویرایش پروفایل</span></a></li>
            </ul>
        </div>
    </div>




</asp:Content>

