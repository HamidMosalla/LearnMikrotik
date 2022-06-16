<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewCourse.aspx.cs" Inherits="Admin_NewCourse" %>

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
                <li><a href="UsersAndRoles.aspx" title="مدیریت اعضا"><span>مدیریت نقش ها</span></a></li>

            </ul>
        </div>
    </div>

   



<div id="GeneralRTL">

 <asp:Label ID="CourseTitleLable" runat="server" Text="&#1605;&#1602;&#1575;&#1604;&#1607; &#1576;&#1575; &#1605;&#1608;&#1601;&#1602;&#1740;&#1578; &#1575;&#1585;&#1587;&#1575;&#1604; &#1588;&#1583;." EnableViewState="False" Visible="False" ForeColor="#FF3300"></asp:Label>
    <br />


       <p> &#1593;&#1606;&#1608;&#1575;&#1606; &#1583;&#1608;&#1585;&#1607;: <asp:TextBox Width="400px" ID="CourseTitle" runat="server"></asp:TextBox> 
           <asp:RequiredFieldValidator ID="CourseTitleRequiredFieldValidator" runat="server" 
               ControlToValidate="CourseTitle" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1593;&#1606;&#1608;&#1575;&#1606; &#1605;&#1602;&#1575;&#1604;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>

        <p>&#1605;&#1705;&#1575;&#1606; &#1583;&#1608;&#1585;&#1607;: 
            <asp:TextBox ID="Location" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="LocationRequiredFieldValidator" runat="server" 
               ControlToValidate="Location" ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1605;&#1705;&#1575;&#1606; &#1583;&#1608;&#1585;&#1607; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." 
               ForeColor="#FF3300"></asp:RequiredFieldValidator>
        </p>


        

        <p>&#1586;&#1605;&#1575;&#1606; &#1588;&#1585;&#1608;&#1593; &#1583;&#1608;&#1585;&#1607;:

            <asp:DropDownList ID="StartYear" runat="server">
                <asp:ListItem Value="1391">1391</asp:ListItem>
                <asp:ListItem>1392</asp:ListItem>
                <asp:ListItem Value="1393"></asp:ListItem>
                <asp:ListItem>1394</asp:ListItem>
                <asp:ListItem Value="1395">1395</asp:ListItem>
                <asp:ListItem>1396</asp:ListItem>
                <asp:ListItem>1397</asp:ListItem>
                <asp:ListItem>1398</asp:ListItem>
                <asp:ListItem>1399</asp:ListItem>
                <asp:ListItem>1400</asp:ListItem>
                <asp:ListItem>1401</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="StartMonth" runat="server" 
                 AutoPostBack="true" onselectedindexchanged="StartMonth_SelectedIndexChanged" >
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem Value="3"></asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="StartDay" runat="server">
            </asp:DropDownList>

        </p>


       <p>&#1586;&#1605;&#1575;&#1606; &#1662;&#1575;&#1740;&#1575;&#1606; &#1583;&#1608;&#1585;&#1607;:
        <asp:DropDownList ID="EndYear" runat="server">
                <asp:ListItem Value="1391">1391</asp:ListItem>
                <asp:ListItem>1392</asp:ListItem>
                <asp:ListItem Value="1393"></asp:ListItem>
                <asp:ListItem>1394</asp:ListItem>
                <asp:ListItem Value="1395">1395</asp:ListItem>
                <asp:ListItem>1396</asp:ListItem>
                <asp:ListItem>1397</asp:ListItem>
                <asp:ListItem>1398</asp:ListItem>
                <asp:ListItem>1399</asp:ListItem>
                <asp:ListItem>1400</asp:ListItem>
                <asp:ListItem>1401</asp:ListItem>
            </asp:DropDownList>

             <asp:DropDownList ID="EndMonth" runat="server" 
                 AutoPostBack="true" 
               onselectedindexchanged="EndMonth_SelectedIndexChanged" >
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem Value="3"></asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>


            <asp:DropDownList ID="EndDay" runat="server">
            </asp:DropDownList>

        </p>
        <div style=" margin-right:200px;">
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
         
        <HTMLEditor:Editor Height="370px"  ID="CourseEditor" runat="server"   Width="765px" />

         </div> 
        <br />

        <asp:RequiredFieldValidator ID="CourseEditorRequiredFieldValidator" runat="server" 
            ErrorMessage="&#1662;&#1585; &#1705;&#1585;&#1583;&#1606; &#1605;&#1581;&#1578;&#1608;&#1575;&#1740; &#1582;&#1576;&#1585; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." ControlToValidate="CourseEditor" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:FileUpload ID="CoursePicture" runat="server" />

        <br />
        <br />

        <asp:Button ID="SubmitCourse" runat="server" 
        Text="&#1575;&#1585;&#1587;&#1575;&#1604; &#1582;&#1576;&#1585;" Height="28px"  
        Width="99px" onclick="SubmitCourse_Click"  /> 
          
            </div>


</asp:Content>

