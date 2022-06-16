<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserProfileCPanel.aspx.cs" Inherits="Users_UserProfileCPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="adminmenu">
        <div id="adminlist">
            <ul>
              <li><a href="UserIndex.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1589;&#1601;&#1581;&#1607; &#1740; &#1575;&#1589;&#1604;&#1740;"><span>&#1705;&#1606;&#1578;&#1585;&#1604; &#1662;&#1606;&#1604; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;</span></a></li>
                <li><a href="UserSendArticle.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1582;&#1576;&#1575;&#1585;"><span>&#1575;&#1585;&#1587;&#1575;&#1604; &#1605;&#1602;&#1575;&#1604;&#1607;</span></a></li>
                <li><a href="UserProfileCPanel.aspx" title="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1575;&#1582;&#1576;&#1575;&#1585;"><span>&#1608;&#1740;&#1585;&#1575;&#1740;&#1588; &#1662;&#1585;&#1608;&#1601;&#1575;&#1740;&#1604;</span></a></li>
            </ul>
        </div>
    </div>

    <div style="direction:rtl; " >


        <br />
      <asp:Label ID="MessLabel" runat="server" ForeColor="Red" Text="سایز یا حجم یا فرمت انتخاب شده برای اواتار قابل قبول نیست، حجم باید زیر 150 کیلوبایت و سایز زیر 180 در 180 پیکسل باشد." Visible="False" EnableViewState="False" Font-Bold="True"></asp:Label>
      <asp:Label ID="MessegeLabelSucc" runat="server" ForeColor="Red" Text="تغیرات با موفقیت ذخیره شد." Visible="False" EnableViewState="False" Font-Bold="True"></asp:Label>



    <br />
    <br />

    <table border="0">
    <tr>
        <td><b>&#1606;&#1575;&#1605;:</b></td>
        <td><asp:TextBox runat="server" ID="UsersName" Columns="30"></asp:TextBox></td>
    </tr>
    <tr>
        <td><b>&#1606;&#1575;&#1605; &#1582;&#1575;&#1606;&#1608;&#1575;&#1583;&#1711;&#1740;:</b></td>
        <td><asp:TextBox runat="server" ID="UsersLastName" Columns="30" ></asp:TextBox></td>
    </tr>


    <tr>
        <td><b>&#1570;&#1608;&#1575;&#1578;&#1575;&#1585;:</b></td>
        <td>
            <asp:Image ID="UsersAvatarImage" runat="server" 
                ImageUrl="~/Images/UserAvatar/default_avatar.jpg" />
            <br />
            <asp:FileUpload ID="AvatarFileUpload" runat="server" />

        </td>
    </tr>

    <tr>
        <td colspan="2">
            <b>&#1583;&#1585;&#1576;&#1575;&#1585;&#1607;:</b><br />
            <asp:TextBox runat="server" ID="UsersAbout" TextMode="MultiLine" Columns="55" Rows="15"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><b>&#1608;&#1576;&#1587;&#1575;&#1740;&#1578;:</b></td>
        <td><asp:TextBox runat="server" ID="UsersWebSite" Columns="30"></asp:TextBox></td>
    </tr>

    <tr>
        <td><b>&#1575;&#1740;&#1605;&#1740;&#1604;:</b></td>
        <td><asp:TextBox runat="server" ID="UsersEmail" Columns="30"></asp:TextBox></td>
    </tr>

    <tr>
        <td><b>&#1605;&#1587;&#1606;&#1580;&#1585;:</b></td>
        <td><asp:TextBox runat="server" ID="UsersMessenger" Columns="30"></asp:TextBox></td>
    </tr>

    <tr>
        <td colspan="2">
            <asp:Button ID="SubmitChange" runat="server" Text="&#1584;&#1582;&#1740;&#1585;&#1607;" 
                onclick="SubmitChange_Click" />
        </td>
    </tr>
</table> 
</div>

</asp:Content>

