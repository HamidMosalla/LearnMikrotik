<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminSendPicture.aspx.cs" Inherits="Admin_AdminSendPicture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="../JavaScript/jQuery/jquery.blockUI.js" type="text/javascript"></script>
    <script src="../JavaScript/jQuery/jquery.validate.js" type="text/javascript"></script>
    <script src="../JavaScript/jQuery/jquery.form.js" type="text/javascript"></script>
    <script src="../JavaScript/jQuery/jquery.js" type="text/javascript"></script>
    <script src="../JavaScript/jQuery/jquery.MetaData.js" type="text/javascript"></script>
    <script src="../JavaScript/jQuery/jquery.MultiFile.js" type="text/javascript"></script>
    <script src="../JavaScript/jQuery/jquery.MultiFile.pack.js" type="text/javascript"></script>

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

 <asp:Label ID="PicturePostMessage" runat="server" Text="عکس ها با موفقیت ارسال شدند." Visible="false" EnableViewState="false" ForeColor="Red" ></asp:Label>
   
    <br />
       <p> عنوان عکس ها: <asp:TextBox Width="280px" ID="PicturePostTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="ArticlePostTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="PicturePostTitle" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1593;&#1606;&#1608;&#1575;&#1606; &#1605;&#1602;&#1575;&#1604;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>
      <br />
        <br />
        <br />
        <br />
       <p>   متن عکس ها: <asp:TextBox ID="PicturesSummary" Width="350px" Height="100px" TextMode="MultiLine" runat="server" EnableTheming="True"></asp:TextBox></p>
        <br />
        <asp:FileUpload ID="PictureUpload" class="multi" accept="gif|jpeg|bmp|png|jpg" runat="server" />
        <br />
        (عکس ها را تک تک انتخاب کنید)
        <br />
        <br />
          <br />
        <br />
          <br />
        <br />
          <br />
        <br />
          <br />
        <br />
          <br />
        <br />

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="SubmitPictures" runat="server" Text="ارسال عکس ها" Height="28px"  Width="99px" onclick="SubmitPicture_Click" />
            
            </div>

        <br />
        <br />        
        <br />

</asp:Content>

