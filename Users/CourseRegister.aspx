<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CourseRegister.aspx.cs" Inherits="Users_CourseRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<div id="Rightside">
<div  class="container">
<b class="rtop"><b class="r1"></b> <b class="r2"></b> <b class="r3"></b> <b class="r4"></b></b>


<div style="direction:rtl">

    <asp:Label ID="RegSucMessage" ForeColor="Red" Text="مشخصات شما با موفقیت ثبت شد." Visible="false" runat="server"></asp:Label>

<table border="0">
    <tr>
        <td><b>&#1606;&#1575;&#1605;:</b></td>
        <td><asp:TextBox runat="server" ID="FirstName" Columns="30"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="FirstName" ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td><b>&#1606;&#1575;&#1605; &#1582;&#1575;&#1606;&#1608;&#1575;&#1583;&#1711;&#1740;:</b></td>
        <td><asp:TextBox runat="server" ID="LastName" Columns="30"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="LastName" ID="RequiredFieldValidator2" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td><b>نام پدر:</b></td>
        <td><asp:TextBox runat="server" ID="FatherName" Columns="30"></asp:TextBox>
        </td>
    </tr>

    <tr>
        <td><b>&#1580;&#1606;&#1587;&#1740;&#1578;:</b></td>
        <td>
            <asp:RadioButtonList ID="GenerRadioButton" runat="server">
                <asp:ListItem Value="0">&#1605;&#1585;&#1583;</asp:ListItem>
                <asp:ListItem Value="1">&#1586;&#1606;</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ControlToValidate="GenerRadioButton" ID="RequiredFieldValidator3" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td><b>&#1578;&#1575;&#1585;&#1740;&#1582; &#1578;&#1608;&#1604;&#1583;:</b></td>
        <td>
        <asp:DropDownList ID="YearDropDown" runat="server">
            <asp:ListItem Selected="True"></asp:ListItem>
            </asp:DropDownList>

             <asp:RequiredFieldValidator ControlToValidate="YearDropDown" ID="RequiredFieldValidator4" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>

            <asp:DropDownList ID="MonthDropDown" runat="server" >
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
            <asp:RequiredFieldValidator ControlToValidate="MonthDropDown" ID="RequiredFieldValidator5" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>

            <asp:DropDownList ID="DayDropDown" runat="server">
             <asp:ListItem Selected="True"></asp:ListItem>
            </asp:DropDownList>
             <asp:RequiredFieldValidator ControlToValidate="DayDropDown" ID="RequiredFieldValidator6" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>

        </td>
    </tr>

    <tr>
        <td><b>&#1578;&#1604;&#1601;&#1606; &#1578;&#1605;&#1575;&#1587;:</b></td>
        <td><asp:TextBox runat="server" ID="PhoneNumber" Columns="30"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="PhoneNumber" ID="RequiredFieldValidator7" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td><b>&#1605;&#1608;&#1576;&#1575;&#1740;&#1604;:</b></td>
        <td><asp:TextBox runat="server" ID="CellNumber" Columns="30"></asp:TextBox></td>
    </tr>

    <tr>
        <td><b>&#1575;&#1740;&#1605;&#1740;&#1604;:</b></td>
        <td><asp:TextBox runat="server" ID="Email" Columns="30"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="Email" ID="RequiredFieldValidator8" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                ControlToValidate="Email" ForeColor="Red" runat="server" 
                ErrorMessage="&#1575;&#1740;&#1605;&#1740;&#1604; &#1605;&#1593;&#1578;&#1576;&#1585; &#1606;&#1740;&#1587;&#1578;" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td>
        <b>&#1588;&#1594;&#1604;:</b>
        <td><asp:TextBox runat="server" ID="Occupation" Columns="30"></asp:TextBox>
         </td>
    </tr>

    <tr>
        <td><b>&#1570;&#1582;&#1585;&#1740;&#1606; &#1570;&#1582;&#1585;&#1740;&#1606; &#1605;&#1583;&#1585;&#1705; &#1578;&#1581;&#1589;&#1740;&#1604;&#1740;:</b></td>
        <td>
            <asp:DropDownList ID="LastDegree" runat="server">
                <asp:ListItem>&#1587;&#1740;&#1705;&#1604;</asp:ListItem>
                <asp:ListItem>&#1583;&#1740;&#1662;&#1604;&#1605;</asp:ListItem>
                <asp:ListItem>&#1601;&#1608;&#1602; &#1583;&#1740;&#1662;&#1604;&#1605;</asp:ListItem>
                <asp:ListItem>&#1604;&#1740;&#1587;&#1575;&#1606;&#1587;</asp:ListItem>
                <asp:ListItem>&#1601;&#1608;&#1602; &#1604;&#1740;&#1587;&#1575;&#1606;&#1587;</asp:ListItem>
                <asp:ListItem>&#1583;&#1705;&#1578;&#1585;&#1575;</asp:ListItem>
            </asp:DropDownList>
         <asp:RequiredFieldValidator ControlToValidate="LastDegree" ID="RequiredFieldValidator9" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td><b>&#1588;&#1605;&#1575;&#1585;&#1607; &#1588;&#1606;&#1575;&#1587;&#1606;&#1575;&#1605;&#1607;:</td>
        <td><asp:TextBox runat="server" ID="ShoShenasname" Columns="30"></asp:TextBox>  </td>
    </tr> 

    <tr>
        <td><b>&#1605;&#1581;&#1604; &#1589;&#1583;&#1608;&#1585; &#1588;&#1606;&#1575;&#1587;&#1606;&#1575;&#1605;&#1607;:</b></td>
        <td><asp:TextBox runat="server" ID="SodourShenasname" Columns="30"></asp:TextBox></td>
    </tr>

    <tr>
        <td><b>&#1588;&#1605;&#1575;&#1585;&#1607; &#1740; &#1605;&#1604;&#1740;:</b></td>
        <td><asp:TextBox runat="server" ID="ShoMeli" Columns="30"></asp:TextBox>
         <asp:RequiredFieldValidator ControlToValidate="ShoMeli" ID="RequiredFieldValidator10" ForeColor="Red" runat="server"  ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td><b>&#1570;&#1583;&#1585;&#1587;:</b></td>
        <td><asp:TextBox runat="server" ID="Address" Columns="40"></asp:TextBox></td>
    </tr>

    <tr>
        <td><b>&#1583;&#1608;&#1585;&#1607; &#1607;&#1575;&#1740; &#1662;&#1740;&#1588; &#1606;&#1740;&#1575;&#1586; &#1711;&#1584;&#1585;&#1575;&#1606;&#1583;&#1607; &#1588;&#1583;&#1607;:</b></td>
        <td>
            <asp:CheckBox ID="MTCNACheckBox" runat="server" Text="MTCNA" />
            <br />
            <asp:CheckBox ID="MTCRECheckBox" runat="server" Text="MTCRE" />

        </td>
    </tr>

    <tr>
        <td><b>&#1588;&#1605;&#1575;&#1585;&#1607; &#1740; &#1583;&#1608;&#1585;&#1607; &#1740; MTCNA :</b></td>
        <td><asp:TextBox runat="server" ID="MTCNANumber" Columns="30"></asp:TextBox></td>
    </tr>

    <tr>
     <td><b>&#1588;&#1605;&#1575;&#1585;&#1607; &#1740; &#1583;&#1608;&#1585;&#1607; &#1740; MTCRE :</b></td>
       <td><asp:TextBox runat="server" ID="MTCRENumber" Columns="30"></asp:TextBox></td>
    </tr>




    <tr>
        <td><b>&#1585;&#1586;&#1608;&#1605;&#1607; &#1740; &#1705;&#1575;&#1585;&#1740;:</b></td>
        <td><asp:TextBox runat="server" TextMode="MultiLine" ID="Resume" Rows="10" Columns="30"></asp:TextBox></td>
    </tr>

    <tr><td><br /></td></tr>

    <tr>
        <td colspan="2" >
            <asp:Button runat="server" ID="SubmitRegistration"   
                Text="&#1579;&#1576;&#1578; &#1606;&#1575;&#1605;" 
                onclick="SubmitRegistration_Click" />
        </td>
    </tr>
</table> 

   
     








</div>     
<b class="rbottom"><b class="r4"></b> <b class="r3"></b> <b class="r2"></b> <b class="r1"></b></b>
</div>
</div>

<div id="LeftSide">
<div  class="container">
 <b class="rtop"><b class="r1"></b> <b class="r2"></b> <b class="r3"></b> <b class="r4"></b></b>

 <br />
 <br />
 <br />
 <br />
 <br />
 <br />
 <br />
 <br />
 <br />

 <b class="rbottom"><b class="r4"></b> <b class="r3"></b> <b class="r2"></b> <b class="r1"></b></b>
</div>
</div>





</asp:Content>

