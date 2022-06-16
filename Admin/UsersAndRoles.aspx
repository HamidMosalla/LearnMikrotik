<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UsersAndRoles.aspx.cs" Inherits="Admin_UsersAndRoles" %>

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


    <p align="center">
        <asp:Label ID="ActionStatus" runat="server" CssClass="Important"></asp:Label>
    </p>
    
    <h3>
        &#1605;&#1583;&#1740;&#1585;&#1740;&#1578; &#1606;&#1602;&#1588; &#1607;&#1575;&#1740; &#1705;&#1575;&#1585;&#1576;&#1585;&#1575;&#1606;</h3>
    <p>
    <asp:DropDownList ID="RoleList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RoleList_SelectedIndexChanged">
        </asp:DropDownList>
        <b> :&#1575;&#1606;&#1578;&#1582;&#1575;&#1576; &#1606;&#1602;&#1588; </b>
    </p>
    <br />
    <p>
        <asp:GridView ID="RolesUserList" runat="server" AutoGenerateColumns="False" EmptyDataText="No users belong to this role."
            OnRowDeleting="RolesUserList_RowDeleting" HorizontalAlign="Right">
            <Columns>
                <asp:TemplateField HeaderText="&#1705;&#1575;&#1585;&#1576;&#1585;&#1575;&#1606;">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="UserNameLabel" Text='<%# Container.DataItem %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField DeleteText="&#1581;&#1584;&#1601;" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    <asp:TextBox ID="UserNameToAddToRole" runat="server"></asp:TextBox>
    &nbsp;
    <asp:Button ID="AddUserToRoleButton" runat="server" Text="اضافه کردن کاربر به نقش" OnClick="AddUserToRoleButton_Click" />
    </p>

    </div>
</asp:Content>

