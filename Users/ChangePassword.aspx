<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Users_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="UserReg">

    <asp:ChangePassword ID="ChangePwd" runat="server" 
        SuccessPageUrl="~/Default.aspx">
        <ChangePasswordTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">
                                    &#1578;&#1594;&#1740;&#1740;&#1585; &#1662;&#1587;&#1608;&#1585;&#1583;</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="CurrentPasswordLabel" runat="server" 
                                        AssociatedControlID="CurrentPassword">&#1662;&#1587;&#1608;&#1585;&#1583; &#1602;&#1583;&#1740;&#1605;&#1740;:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" 
                                        ControlToValidate="CurrentPassword" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="ChangePwd">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="NewPasswordLabel" runat="server" 
                                        AssociatedControlID="NewPassword">&#1662;&#1587;&#1608;&#1585;&#1583; &#1580;&#1583;&#1740;&#1583;:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" 
                                        ControlToValidate="NewPassword" ErrorMessage="New Password is required." 
                                        ToolTip="New Password is required." ValidationGroup="ChangePwd">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" 
                                        AssociatedControlID="ConfirmNewPassword">&#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1580;&#1583;&#1740;&#1583;:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" 
                                        ControlToValidate="ConfirmNewPassword" 
                                        ErrorMessage="Confirm New Password is required." 
                                        ToolTip="Confirm New Password is required." ValidationGroup="ChangePwd">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" 
                                        ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" 
                                        Display="Dynamic" 
                                        ErrorMessage="&#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1576;&#1575;&#1740;&#1583; &#1576;&#1575; &#1662;&#1587;&#1608;&#1585;&#1583; &#1580;&#1583;&#1740;&#1583; &#1607;&#1605;&#1582;&#1608;&#1575;&#1606;&#1740; &#1583;&#1575;&#1588;&#1578;&#1607; &#1576;&#1575;&#1588;&#1583;." 
                                        ValidationGroup="ChangePwd"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ChangePasswordPushButton" runat="server" 
                                        CommandName="ChangePassword" Text="&#1578;&#1594;&#1740;&#1740;&#1585; &#1662;&#1587;&#1608;&#1585;&#1583;" 
                                        ValidationGroup="ChangePwd" />
                                </td>
                                <td>
                                    <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" 
                                        CommandName="Cancel" Text="&#1604;&#1594;&#1608;" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ChangePasswordTemplate>
        <MailDefinition BodyFileName="~/App_Data/ChangePassword.txt">
        </MailDefinition>
        <SuccessTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center">
                                    &#1662;&#1575;&#1740;&#1575;&#1606; &#1578;&#1594;&#1740;&#1740;&#1585; &#1662;&#1587;&#1608;&#1585;&#1583;</td>
                            </tr>
                            <tr>
                                <td>
                                    &#1662;&#1587;&#1608;&#1585;&#1583; &#1576;&#1575; &#1605;&#1608;&#1601;&#1602;&#1740;&#1578; &#1578;&#1594;&#1740;&#1740;&#1585; &#1740;&#1575;&#1601;&#1578;!</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ContinuePushButton" runat="server" CausesValidation="False" 
                                        CommandName="Continue" Text="ادامه" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </SuccessTemplate>
    </asp:ChangePassword>

    </div>

</asp:Content>

