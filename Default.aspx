<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	

<style type="text/css">  
		.accordion {  
			width: 400px;  
		}  
		  
		.accordionHeader {  
			border: 1px solid #2F4F4F;  
			color: white;  
			background-color: #2E4d7B;  
			font-family: Tahoma,Arial, Sans-Serif;  
			font-size: 12px;  
			font-weight: bold;  
			padding: 5px;  
			margin-top: 5px;  
			cursor: pointer;  
		}  
		  
		.accordionHeaderSelected {  
			border: 1px solid #2F4F4F;  
			color: white;  
			background-color: #5078B3;  
			font-family: Tahoma,Arial, Sans-Serif;  
			font-size: 12px;  
			font-weight: bold;  
			padding: 5px;  
			margin-top: 5px;  
			cursor: pointer;  
		}  
		  
		.accordionContent {  
			background-color: #D3DEEF;  
			border: 1px dashed #2F4F4F;  
			border-top: none;  
			padding: 5px;  
			padding-top: 10px;  
		}  
	</style>  
	

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

				<div id="header">




				<asp:ListView ID="JqueryListView" runat="server" DataSourceID="JquerySqlDataSource">
	   

		<EmptyDataTemplate>
			<span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
		</EmptyDataTemplate>
	   


		<ItemTemplate>
			<span style="">
			<asp:Literal ID="JqueryTitle" Text='<%# Eval("[jQueryTitle]") %>' runat="server"></asp:Literal>
			<br />
			<asp:Image ID="JqueryImage" Width="70" Height="70" ImageUrl='<%# Eval("[jQueryPicture]") %>' runat="server" />
			<br />
				<asp:Literal ID="JqueryContent" Text='<%# HttpUtility.HtmlDecode(Eval("jQueryContent").ToString()) %>' runat="server"></asp:Literal>
			</span>
		</ItemTemplate>


		<LayoutTemplate>
			<div ID="itemPlaceholderContainer" runat="server" style="">
				<span runat="server" id="itemPlaceholder" />
			</div>
			<div style="">
				<asp:DataPager ID="DataPager1" runat="server" PageSize="1">
					<Fields>
						<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
							ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="&#1575;&#1608;&#1604;&#1740;&#1606;" LastPageText="&#1570;&#1582;&#1585;&#1740;&#1606;" NextPageText="&#1576;&#1593;&#1583;&#1740;" PreviousPageText="&#1602;&#1576;&#1604;&#1740;" />
						<asp:NumericPagerField />
						<asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
							ShowNextPageButton="False" ShowPreviousPageButton="False" FirstPageText="&#1575;&#1608;&#1604;&#1740;&#1606;" LastPageText="&#1570;&#1582;&#1585;&#1740;&#1606;" NextPageText="&#1576;&#1593;&#1583;&#1740;" PreviousPageText="&#1602;&#1576;&#1604;&#1740;" />
					</Fields>
				</asp:DataPager>
			</div>
		</LayoutTemplate>
	   
	</asp:ListView>
	<asp:SqlDataSource ID="JquerySqlDataSource" runat="server" 
		ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
		 
		
		
						SelectCommand="SELECT TOP (5) jQueryTitle, jQueryContent, jQueryPicture, jQueryID FROM jQuery ORDER BY jQueryID DESC">
	</asp:SqlDataSource>




				</div>

		<div id="content">


	<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
	</asp:ToolkitScriptManager>

			<asp:Accordion ID="MyAccordion" runat="server" 
			SelectedIndex="0"
			HeaderCssClass="accordionHeader"
			HeaderSelectedCssClass="accordionHeaderSelected"
			ContentCssClass="accordionContent"
			AutoSize="None"
			FadeTransitions="true"
			TransitionDuration="250"
			FramesPerSecond="40"
			RequireOpenedPane="false"
			SuppressHeaderPostbacks="true">






	<Panes>
		<asp:AccordionPane ID="AccordionPane1" runat="server" HeaderCssClass="accordionHeader"
			HeaderSelectedCssClass="accordionHeaderSelected"
			ContentCssClass="accordionContent">

		  
			<Header>&#1570;&#1582;&#1585;&#1740;&#1606; &#1583;&#1608;&#1585;&#1607; &#1607;&#1575;</Header>
			<Content>
			
				<asp:ListView ID="ListView4" runat="server" DataKeyNames="CourseID" DataSourceID="SqlDataSource4">
	   
		<EmptyDataTemplate>
			<span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
		</EmptyDataTemplate>
	   
		<ItemTemplate>
			<span style="">
			<asp:HyperLink ID="TitleLink" Text='<%# Eval("CourseTitle") %>' NavigateUrl='<%# "Users/CourseRegister.aspx?CourseID=" + Eval("CourseID")%>'  runat="server"></asp:HyperLink>
			<br />
			&#1578;&#1575;&#1585;&#1740;&#1582; &#1588;&#1585;&#1608;&#1593;: <asp:Label ID="Date" runat="server" Text='<%# Eval("CourseDateStart") %>' ForeColor="Gray" />
				<br />
				 &#1605;&#1705;&#1575;&#1606; &#1576;&#1585;&#1711;&#1586;&#1575;&#1585;&#1740;: <asp:Label ID="Location" runat="server" Text='<%# Eval("CourseLocation") %>' ForeColor="Gray" />
				  <br />
				<asp:Image ID="CoursePicture" runat="server" Width="80px" Height="50px" ImageUrl='<%# Eval("CoursePicture") %>' />
				  <br />
			</span>
		</ItemTemplate>

	</asp:ListView>
	<asp:SqlDataSource ID="SqlDataSource4" runat="server" 
		ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
		
						SelectCommand="SELECT TOP 5 CourseID, CourseTitle, CourseLocation, CourseDateStart, CoursePicture FROM Course ORDER BY CourseID DESC">
	</asp:SqlDataSource>
			
			</Content>

		</asp:AccordionPane>







	
	</Panes>

	<Panes>
		<asp:AccordionPane ID="AccordionPane2" runat="server" HeaderCssClass="accordionHeader"
			HeaderSelectedCssClass="accordionHeaderSelected"
			ContentCssClass="accordionContent">

		  
			<Header>&#1605;&#1591;&#1575;&#1604;&#1576; &#1605;&#1578;&#1601;&#1585;&#1602;&#1607;</Header>
			<Content>
			
			<asp:ListView ID="ListView5" runat="server" DataKeyNames="PostID" DataSourceID="SqlDataSource5">
	   
		<EmptyDataTemplate>
			<span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
		</EmptyDataTemplate>
	   
		<ItemTemplate>
			<span style="">
			<asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "MiscellaneousDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
			<br />
			<asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
				<br />
			</span>
		</ItemTemplate>

	</asp:ListView>
	<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
		ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
		
						
					   SelectCommand="SELECT Top 5 PostID, PostType, PostTitle, PostDate FROM Post WHERE (PostType = N'Miscellaneous') ORDER BY PostID DESC">
	</asp:SqlDataSource>
			
			</Content>

		</asp:AccordionPane>
	
	</Panes>

   </asp:Accordion>









		</div>

		<div id="news">
			<div class="newsItem">
				<b> &#1582;&#1608;&#1588; &#1570;&#1605;&#1583;&#1740;&#1583; <asp:LoginName ID="LoginName1" runat="server" /></b>
				<br />
				<asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="&#1608;&#1585;&#1608;&#1583;" LogoutText="&#1582;&#1585;&#1608;&#1580;" />
				 <br />

				<asp:LoginView ID="LoginView1" runat="server">

				

					<LoggedInTemplate>
						<a href="Users/UserIndex.aspx"><span style="font-size: small"><strong>&#1705;&#1606;&#1578;&#1585;&#1604;
							&#1662;&#1606;&#1604; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;</strong></span></a>
				  <br />
				   <a href="Users/UserSendArticle.aspx"><span style="font-size: small"><strong>&#1575;&#1585;&#1587;&#1575;&#1604; &#1605;&#1602;&#1575;&#1604;&#1607;</strong></span></a>
					</LoggedInTemplate>

					<RoleGroups>
						<asp:RoleGroup Roles="Administrator">

						<ContentTemplate>
						 <a href="Users/UserIndex.aspx"><span style="font-size: small"><strong>&#1705;&#1606;&#1578;&#1585;&#1604;
							&#1662;&#1606;&#1604; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;</strong></span></a>
							<br />
						 <a href="Admin/AdminIndex.aspx"><span style="font-size: small"><strong>&#1662;&#1606;&#1604; &#1605;&#1583;&#1740;&#1585;&#1740;&#1578;</strong></span></a>
						</ContentTemplate>
					   
						</asp:RoleGroup>
					</RoleGroups>

			   <AnonymousTemplate>
				   <asp:HyperLink ID="Ozviat" NavigateUrl="~/UserRegistration.aspx" runat="server">&#1593;&#1590;&#1608;&#1740;&#1578;</asp:HyperLink>
			   </AnonymousTemplate>

				</asp:LoginView>


			</div>
			<div class="newsItem">
				<h1>&#1662;&#1585;&#1576;&#1575;&#1586;&#1583;&#1740;&#1583; &#1578;&#1585;&#1740;&#1606; &#1607;&#1575;</h1>
				<p>
				<asp:ListView ID="ListView1" runat="server" DataKeyNames="PostID" DataSourceID="SqlDataSource1">
	   
		<EmptyDataTemplate>
			<span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
		</EmptyDataTemplate>
	   
		<ItemTemplate>
			<span style="">
			<asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# Eval("PostType").ToString().Trim() + "Detail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
			<br />
			<asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
				<br />
			</span>
		</ItemTemplate>

	</asp:ListView>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
		ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
		
						
						SelectCommand="SELECT TOP 5 Post.PostID, Post.PostType, Post.PostTitle, Post.PostDate, HitCounter.PostIDfk, HitCounter.Counter FROM Post INNER JOIN HitCounter ON Post.PostID = HitCounter.PostIDfk ORDER BY HitCounter.Counter DESC">
	</asp:SqlDataSource>
				
				</p>
			</div>


			<div class="newsItem">
				<h1>&#1570;&#1582;&#1585;&#1740;&#1606; &#1605;&#1602;&#1575;&#1604;&#1575;&#1578;</h1>
				<p> 
					 <asp:ListView ID="ListView2" runat="server" DataKeyNames="PostID" DataSourceID="SqlDataSource2">
	   
		<EmptyDataTemplate>
			<span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
		</EmptyDataTemplate>
	   
		<ItemTemplate>
			<span style="">
			<asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "ArticleDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
			<br />
			<asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
				<br />
			</span>
		</ItemTemplate>

	</asp:ListView>
	<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
		ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
		
						
						 SelectCommand="SELECT Top 5 PostID, PostType, PostTitle, PostDate FROM Post WHERE (PostType = N'Article') ORDER BY PostID DESC">
	</asp:SqlDataSource>
				</p>
			</div>

			<div class="newsItem">
				<h1>&#1570;&#1582;&#1585;&#1740;&#1606; &#1593;&#1705;&#1587; &#1607;&#1575;</h1>
				<p>
			   
					 <asp:ListView ID="ListView3" runat="server" DataKeyNames="PostID" DataSourceID="SqlDataSource3">
	   
		<EmptyDataTemplate>
			<span>&#1575;&#1591;&#1604;&#1575;&#1593;&#1575;&#1578;&#1740; &#1576;&#1585;&#1575;&#1740; &#1606;&#1605;&#1575;&#1740;&#1588; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;.</span>
		</EmptyDataTemplate>
	   
		<ItemTemplate>
			<span style="">
			<asp:HyperLink ID="TitleLink" Text='<%# Eval("PostTitle") %>' NavigateUrl='<%# "PictureDetail.aspx?PostID=" + Eval("PostID") + "&PostTitle=" + Server.UrlEncode(Eval("PostTitle").ToString())%>'  runat="server"></asp:HyperLink>
			<br />
			<asp:Label ID="Date" runat="server" Text='<%# Eval("PostDate") %>' ForeColor="Gray" />
				<br />
				<asp:Image ID="Image1" Width="100px" Height="70px" ImageUrl='<%# Eval("PostPicture") %>' runat="server" />
				<br />
			</span>
		</ItemTemplate>

	</asp:ListView>
	<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
		ConnectionString="<%$ ConnectionStrings:LearnMikrotikConnectionString %>" 
		
						
						 
						 SelectCommand="SELECT TOP (5) PostID, PostType, PostTitle, PostDate, PostPicture FROM Post WHERE (PostType = N'Picture') ORDER BY PostID DESC">
	</asp:SqlDataSource>
				
				</p>
			</div>

	  </div>


</asp:Content>

