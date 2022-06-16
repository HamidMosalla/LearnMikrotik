<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="Userlogin">

        <asp:Login ID="myLogin" runat="server" 
            CreateUserText="&#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1606;&#1583;&#1575;&#1585;&#1740;&#1583;&#1567; &#1740;&#1705; &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1580;&#1583;&#1740;&#1583; &#1575;&#1740;&#1580;&#1575;&#1583; &#1705;&#1606;&#1740;&#1583;!"
            CreateUserUrl="~/UserRegistration.aspx"
            LoginButtonText="&#1608;&#1585;&#1608;&#1583;" 
            PasswordLabelText="&#1705;&#1604;&#1605;&#1607; &#1740; &#1593;&#1576;&#1608;&#1585;:" 
            RememberMeText="&#1605;&#1585;&#1575; &#1576;&#1607; &#1582;&#1575;&#1591;&#1585; &#1583;&#1575;&#1588;&#1578;&#1607; &#1576;&#1575;&#1588;." TitleText="&#1608;&#1585;&#1608;&#1583; &#1576;&#1607; &#1587;&#1575;&#1740;&#1578;" 
            UserNameLabelText="&#1575;&#1740;&#1605;&#1740;&#1604;:" onloginerror="myLogin_LoginError">

        </asp:Login>
    <asp:HyperLink ID="ChangePass" NavigateUrl="~/RecoverPassword.aspx" runat="server">&nbsp  &#1662;&#1587;&#1608;&#1585;&#1583; &#1582;&#1608;&#1583; &#1585;&#1575; &#1601;&#1585;&#1575;&#1605;&#1608;&#1588; &#1705;&#1585;&#1583;&#1607; &#1575;&#1605;. </asp:HyperLink>
    
    </div>

</asp:Content>

