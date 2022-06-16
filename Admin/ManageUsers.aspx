<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="Admin_ManageUsers" %>

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

 <h2>
        &#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1705;&#1575;&#1585;&#1576;&#1585;&#1575;&#1606;</h2>

     <hr />

       <p>
        <asp:Repeater ID="FilteringUI" runat="server" 
            onitemcommand="FilteringUI_ItemCommand">
            <ItemTemplate>
                <asp:LinkButton runat="server" ID="lnkFilter" 
                                Text='<%# Container.DataItem %>' 
                                CommandName='<%# Container.DataItem %>'></asp:LinkButton>
            </ItemTemplate>
            
            <SeparatorTemplate>|</SeparatorTemplate>
        </asp:Repeater>
    </p>
    <br />
    <p>
        <asp:LinkButton ID="lnkFirst" runat="server" onclick="lnkFirst_Click">&lt;&lt; اولین</asp:LinkButton> |
        <asp:LinkButton ID="lnkPrev" runat="server" onclick="lnkPrev_Click">&lt; قبلی</asp:LinkButton> |
        <asp:LinkButton ID="lnkNext" runat="server" onclick="lnkNext_Click">بعدی &gt;</asp:LinkButton> |
        <asp:LinkButton ID="lnkLast" runat="server" onclick="lnkLast_Click">آخرین &gt;&gt;</asp:LinkButton>
    </p>

    <p>
        <asp:GridView ID="UserAccounts" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="UserName"  onrowediting="UserAccounts_RowEditing" 
        onrowcancelingedit="UserAccounts_RowCancelingEdit"   
            onrowupdating="UserAccounts_RowUpdating" HorizontalAlign="Right">
                 

            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="UserName" 
                    DataNavigateUrlFormatString="UserInformation.aspx?user={0}" 
                    Text="&#1605;&#1583;&#1740;&#1585;&#1740;&#1578;" />


                <asp:CheckBoxField DataField="IsApproved" HeaderText="&#1578;&#1575;&#1740;&#1740;&#1583; &#1588;&#1583;&#1607;" />
                <asp:CheckBoxField DataField="IsLockedOut" HeaderText="&#1602;&#1601;&#1604; &#1588;&#1583;&#1607;" />
                <asp:CheckBoxField DataField="IsOnline" HeaderText="&#1570;&#1606;&#1604;&#1575;&#1740;&#1606;" />


                <asp:CommandField ShowEditButton="True" EditText="&#1608;&#1740;&#1585;&#1575;&#1740;&#1588;" />


        <asp:TemplateField HeaderText="&#1575;&#1740;&#1605;&#1740;&#1604;">    
                     <ItemTemplate>    
                          <asp:Label runat="server" ID="Label1" Text='<%# Eval("Email") %>'></asp:Label>    

                     </ItemTemplate>    
                     <EditItemTemplate>    
                          <asp:TextBox runat="server" ID="Email" Text='<%# Bind("Email") %>'></asp:TextBox>    

                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"    
                               ControlToValidate="Email" Display="Dynamic"    
                               ErrorMessage="You must provide an email address."
                               SetFocusOnError="True">*</asp:RequiredFieldValidator>    

                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"    
                               ControlToValidate="Email" Display="Dynamic"    
                               ErrorMessage="The email address you have entered is not valid. Please fix
                               this and try again."    
                               SetFocusOnError="True"    

                               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*
                          </asp:RegularExpressionValidator>    
                     </EditItemTemplate>    
            </asp:TemplateField>


                <asp:BoundField DataField="UserName" HeaderText="&#1606;&#1575;&#1605; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;" />
          
            </Columns>
        </asp:GridView>
    </p>
    <br />
    <p>
    <asp:ValidationSummary ID="ValidationSummary1"
               runat="server"
               ShowMessageBox="True"
               ShowSummary="False" />
         

         </div>
</asp:Content>

