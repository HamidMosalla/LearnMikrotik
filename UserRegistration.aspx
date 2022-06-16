<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 90px;
        }
        .style3
        {
            width: 101px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="UserReg">

    <asp:CreateUserWizard ID="RegisterUser" runat="server" 
            ContinueDestinationPageUrl="~/Login.aspx" 
            oncreatinguser="RegisterUser_CreatingUser" AnswerLabelText="&#1580;&#1608;&#1575;&#1576; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740;:" 
            ConfirmPasswordLabelText="&#1578;&#1705;&#1585;&#1575;&#1585; &#1705;&#1604;&#1605;&#1607; &#1740; &#1593;&#1576;&#1608;&#1585;:" 
            
            
            
            CreateUserButtonText="&#1575;&#1740;&#1580;&#1575;&#1583; &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;:" EmailLabelText="&#1575;&#1740;&#1605;&#1740;&#1604;:" 
            
            
            
            PasswordLabelText="&#1705;&#1604;&#1605;&#1607; &#1740; &#1593;&#1576;&#1608;&#1585;:" QuestionLabelText="&#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740;:" 
            UserNameLabelText="&#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;:" 
            onactivestepchanged="RegisterUser_ActiveStepChanged" 
            oncreateduser="RegisterUser_CreatedUser" 
            AnswerRequiredErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            CompleteSuccessText="Your account has been successfully created. You'll receive an e-mail with a confirmation link that you need to click to confirm  your e-mail address and activate your account." 
            ConfirmPasswordCompareErrorMessage="&#1662;&#1587;&#1608;&#1585;&#1583; &#1608; &#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1576;&#1575;&#1740;&#1583; &#1576;&#1575; &#1607;&#1605; &#1607;&#1605;&#1582;&#1608;&#1575;&#1606;&#1740; &#1583;&#1575;&#1588;&#1578;&#1607; &#1576;&#1575;&#1588;&#1606;&#1583;." 
            ConfirmPasswordRequiredErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            DuplicateEmailErrorMessage="&#1575;&#1740;&#1605;&#1740;&#1604;&#1740; &#1705;&#1607; &#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1740;&#1583; &#1602;&#1576;&#1604;&#1575; &#1605;&#1608;&#1585;&#1583; &#1575;&#1587;&#1578;&#1601;&#1575;&#1583;&#1607; &#1602;&#1585;&#1575;&#1585; &#1711;&#1585;&#1601;&#1578;&#1607;&#1548; &#1604;&#1591;&#1601;&#1575; &#1575;&#1740;&#1605;&#1740;&#1604; &#1583;&#1740;&#1711;&#1585;&#1740; &#1608;&#1575;&#1585;&#1583; &#1705;&#1606;&#1740;&#1583;." 
            DuplicateUserNameErrorMessage="&#1575;&#1740;&#1606; &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1602;&#1576;&#1604;&#1575; &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1588;&#1583;&#1607;&#1548; &#1604;&#1591;&#1601;&#1575; &#1606;&#1575;&#1705; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1583;&#1740;&#1711;&#1585;&#1740; &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1705;&#1606;&#1740;&#1583;." 
            EmailRegularExpressionErrorMessage="&#1575;&#1740;&#1606; &#1575;&#1740;&#1605;&#1740;&#1604; &#1602;&#1576;&#1604;&#1575; &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1588;&#1583;&#1607;&#1548; &#1604;&#1591;&#1601;&#1575; &#1575;&#1740;&#1605;&#1740;&#1604; &#1583;&#1740;&#1711;&#1585;&#1740; &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1705;&#1606;&#1740;&#1583;." 
            EmailRequiredErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1575;&#1740;&#1605;&#1740;&#1604; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            InvalidAnswerErrorMessage="&#1604;&#1591;&#1601;&#1575; &#1580;&#1608;&#1575;&#1576; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1583;&#1740;&#1711;&#1585;&#1740; &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1705;&#1606;&#1740;&#1583;." 
            InvalidEmailErrorMessage="&#1604;&#1591;&#1601;&#1575; &#1575;&#1740;&#1605;&#1740;&#1604;&#1740; &#1605;&#1593;&#1578;&#1576;&#1585; &#1608;&#1575;&#1585;&#1583; &#1705;&#1606;&#1740;&#1583;." 
            InvalidQuestionErrorMessage="&#1604;&#1591;&#1601;&#1575; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1583;&#1740;&#1711;&#1585;&#1740; &#1608;&#1575;&#1585;&#1583; &#1705;&#1606;&#1740;&#1583;." 
            PasswordRegularExpressionErrorMessage="&#1604;&#1591;&#1601;&#1575; &#1662;&#1587;&#1608;&#1585;&#1583; &#1583;&#1740;&#1711;&#1585;&#1740; &#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1705;&#1606;&#1740;&#1583;." 
            PasswordRequiredErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1662;&#1587;&#1608;&#1585;&#1583; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            QuestionRequiredErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            UnknownErrorMessage="&#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1588;&#1605;&#1575; &#1576;&#1575; &#1605;&#1608;&#1601;&#1602;&#1740;&#1578; &#1575;&#1740;&#1580;&#1575;&#1583; &#1606;&#1588;&#1583;&#1548; &#1604;&#1591;&#1601;&#1575; &#1583;&#1608;&#1576;&#1575;&#1585;&#1607; &#1578;&#1604;&#1575;&#1588; &#1705;&#1606;&#1740;&#1583;." 
            UserNameRequiredErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
            RequireEmail="False" DisableCreatedUser="True" 
            onsendingmail="RegisterUser_SendingMail" >
             

             <MailDefinition BodyFileName="~/App_Data/AccountVerification.txt" From="Admin@LearnMikrotik.ir"
              Subject="LearnMikrotik.ir: Your account Conformation link">
             </MailDefinition>

        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center" colspan="2">
                                &#1576;&#1585;&#1575;&#1740; &#1576;&#1607;&#1585;&#1607; &#1576;&#1585;&#1583;&#1606;
                                &#1575;&#1586; &#1575;&#1605;&#1705;&#1575;&#1606;&#1575;&#1578; &#1587;&#1575;&#1740;&#1578;
                                &#1604;&#1591;&#1601;&#1575; &#1579;&#1576;&#1578; &#1606;&#1575;&#1605; &#1705;&#1606;&#1740;&#1583;.
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style3">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">&#1575;&#1740;&#1605;&#1740;&#1604; :</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1575;&#1740;&#1605;&#1740;&#1604; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ToolTip="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UserName"
                                    ErrorMessage="&#1575;&#1740;&#1605;&#1740;&#1604; &#1605;&#1593;&#1578;&#1576;&#1585; &#1606;&#1740;&#1587;&#1578;"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style3">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">&#1705;&#1604;&#1605;&#1607; &#1740; &#1593;&#1576;&#1608;&#1585;:</asp:Label>
                                &nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                    ErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1662;&#1587;&#1608;&#1585;&#1583; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ToolTip="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1662;&#1587;&#1608;&#1585;&#1583; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style3">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">&#1578;&#1705;&#1585;&#1575;&#1585; &#1705;&#1604;&#1605;&#1607; &#1740; &#1593;&#1576;&#1608;&#1585;:</asp:Label>
                                &nbsp;
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword"
                                    ErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ToolTip="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style3">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">&#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740;:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question"
                                    ErrorMessage="&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ToolTip="&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" class="style3">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">&#1580;&#1608;&#1575;&#1576; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740;:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer"
                                    ErrorMessage="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ToolTip="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1587;&#1608;&#1575;&#1604; &#1575;&#1605;&#1606;&#1740;&#1578;&#1740; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;."
                                    ValidationGroup="RegisterUser">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                                    ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="&#1662;&#1587;&#1608;&#1585;&#1583; &#1608; &#1578;&#1575;&#1740;&#1740;&#1583; &#1662;&#1587;&#1608;&#1585;&#1583; &#1576;&#1575;&#1740;&#1583; &#1576;&#1575; &#1607;&#1605; &#1607;&#1605;&#1582;&#1608;&#1575;&#1606;&#1740; &#1583;&#1575;&#1588;&#1578;&#1607; &#1576;&#1575;&#1588;&#1606;&#1583;."
                                    ValidationGroup="RegisterUser"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color: Red;">
                                <p>
                                    &#1604;&#1591;&#1601;&#1575; &#1605;&#1581;&#1578;&#1608;&#1740;&#1575;&#1578; &#1583;&#1575;&#1582;&#1604;
                                    &#1578;&#1589;&#1608;&#1740;&#1585; &#1585;&#1575; &#1608;&#1575;&#1585;&#1583;
                                    &#1705;&#1606;&#1740;&#1583;.</p>
                                <recaptcha:RecaptchaControl ID="Recaptcha" runat="server" PublicKey="6LePQ9sSAAAAAJFWxSageN6alf7ozRURuPkLCr_q"
                                    PrivateKey="6LePQ9sSAAAAANh160HP88khfL4FBdoUj_0ieies" />
                                <asp:Literal ID="RecaptchaError" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>


            <asp:WizardStep ID="UserSettings" runat="server" StepType="Step" Title="Your Settings">
                <br />
                <p>
                    <b>&#1606;&#1575;&#1605;:</b><br />
                    <asp:TextBox ID="Name" Columns="40" runat="server"></asp:TextBox>
                </p>
                <br />
                <p>
                    <b>&#1606;&#1575;&#1605; &#1582;&#1575;&#1606;&#1608;&#1575;&#1583;&#1711;&#1740;:</b><br />
                    <asp:TextBox ID="LastName" Columns="40" runat="server"></asp:TextBox>
                </p>
                <br />
                <p>
                    <b>&#1575;&#1740;&#1605;&#1740;&#1604; &#1594;&#1740;&#1585; &#1575;&#1589;&#1604;&#1740;:</b><br />
                    <asp:TextBox ID="Email" Columns="40" runat="server"></asp:TextBox>
                </p>
                <br />
                <p>
                    <b>&#1605;&#1587;&#1606;&#1580;&#1585;:</b><br />
                    <asp:TextBox ID="Messenger" Columns="40" runat="server"></asp:TextBox>
                </p>
                <br />
                <p>
                    <b>&#1608;&#1576;&#1587;&#1575;&#1740;&#1578;:</b><br />
                    <asp:TextBox ID="WebSite" Columns="40" runat="server"></asp:TextBox>
                </p>
                <br />
                <p>
                    <b>&#1583;&#1585;&#1576;&#1575;&#1585;&#1607;:</b><br />
                    <asp:TextBox ID="About" TextMode="MultiLine" Width="95%" Rows="5" runat="server"></asp:TextBox>
                </p>
                <br />
            </asp:WizardStep>


            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td align="center">
                                &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740; &#1576;&#1575;
                                &#1605;&#1608;&#1601;&#1602;&#1740;&#1578; &#1575;&#1740;&#1580;&#1575;&#1583; &#1588;&#1583;&#1548;
                                &#1740;&#1705; &#1604;&#1740;&#1606;&#1705; &#1601;&#1593;&#1575;&#1604; &#1587;&#1575;&#1586;&#1740;
                                &#1576;&#1607; &#1575;&#1740;&#1605;&#1740;&#1604; &#1588;&#1605;&#1575; &#1601;&#1585;&#1587;&#1578;&#1575;&#1583;&#1607;
                                &#1588;&#1583;&#1548; &#1576;&#1585;&#1575;&#1740; &#1601;&#1593;&#1575;&#1604;
                                &#1588;&#1583;&#1606; &#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;
                                &#1582;&#1608;&#1583; &#1608; &#1608;&#1585;&#1608;&#1583; &#1576;&#1607; &#1570;&#1606;
                                &#1604;&#1575;&#1586;&#1605; &#1575;&#1587;&#1578; &#1576;&#1585; &#1585;&#1608;&#1740;
                                &#1570;&#1606; &#1705;&#1604;&#1740;&#1705; &#1705;&#1606;&#1740;&#1583;.
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue"
                                    Text="&#1575;&#1583;&#1575;&#1605;&#1607;" ValidationGroup="RegisterUser" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
        <FinishNavigationTemplate>
            <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" 
                CommandName="MovePrevious" Text="&#1589;&#1601;&#1581;&#1607; &#1740; &#1602;&#1576;&#1604;&#1740;" />
            <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" 
                Text="&#1575;&#1606;&#1580;&#1575;&#1605; &#1588;&#1583;" />
        </FinishNavigationTemplate>
        <StartNavigationTemplate>
            <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" 
                Text="&#1589;&#1601;&#1581;&#1607; &#1740; &#1576;&#1593;&#1583;&#1740;" />
        </StartNavigationTemplate>
        <StepNavigationTemplate>
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" 
                Text="&#1589;&#1601;&#1581;&#1607; &#1740; &#1576;&#1593;&#1583;&#1740;" />
        </StepNavigationTemplate>
    </asp:CreateUserWizard>

    <br />
    <asp:Label ID="InvalidUserNameOrPasswordMessage" ForeColor="red" runat="server" EnableViewState="false" Visible="false"></asp:Label>
</div>
</asp:Content>

