<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserSendArticle.aspx.cs" Inherits="Users_UserSendArticle" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor" TagPrefix="HTMLEditor" %>

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



    <div id="GeneralRTL">

 <asp:Label ID="NewsPostMessage" runat="server" Text="مقاله با موفقیت ارسال شد، این مقاله بعد از تایید مدیر در نمایش نمایش داده خواهد شد." EnableViewState="False" Visible="False" ForeColor="#FF3300"></asp:Label>
    <br />
       <p> &#1593;&#1606;&#1608;&#1575;&#1606; &#1582;&#1576;&#1585;: <asp:TextBox Width="400px" ID="ArticlePostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="ArticlePostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="ArticlePostTitle" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1593;&#1606;&#1608;&#1575;&#1606; &#1605;&#1602;&#1575;&#1604;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>
         <p> &#1582;&#1604;&#1575;&#1589;&#1607; &#1740; &#1582;&#1576;&#1585;:
       <asp:TextBox ID="ArticleSummary" Width="350px" Height="100px" TextMode="MultiLine" runat="server" EnableTheming="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ArticleSummaryRequiredFieldValidator" 
            runat="server" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1582;&#1604;&#1575;&#1589;&#1607; &#1740; &#1605;&#1602;&#1575;&#1604;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            ControlToValidate="ArticleSummary" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </p>
        <br />

        <div>

            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>

        <HTMLEditor:Editor Height="370px"  ID="ArticleEditor" runat="server" 
                Width="765px" />

        </div>
        <asp:RequiredFieldValidator ID="ArticleEditorRequiredFieldValidator" runat="server" 
            ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1605;&#1581;&#1578;&#1608;&#1575;&#1740; &#1582;&#1576;&#1585; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." ControlToValidate="ArticleEditor" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:FileUpload ID="ArticlePicture" runat="server" />

        <br />
        <br />

        <asp:Button ID="SubmitArticle" runat="server" Text="&#1575;&#1585;&#1587;&#1575;&#1604; &#1582;&#1576;&#1585;" Height="28px"  
            Width="99px" onclick="SubmitArticle_Click" />
            </div>



</asp:Content>

