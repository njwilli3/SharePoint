<%-- _lcid="1033" _version="15.0.4420" _dal="1" --%>
<%-- _LocalBinding --%>
<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ListItemProperty Property="BaseName" maxlength="40" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<meta name="GENERATOR" content="Microsoft SharePoint" />
	<meta name="ProgId" content="SharePoint.WebPartPage.Document" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="CollaborationServer" content="SharePoint Team Web Site" />
	<SharePoint:ScriptBlock runat="server">
	var navBarHelpOverrideKey = "WSSEndUser";
	</SharePoint:ScriptBlock>
<SharePoint:StyleBlock runat="server">
body #s4-leftpanel {
	display:none;
}
.s4-ca {
	margin-left:0px;
}
</SharePoint:StyleBlock>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderSearchArea" runat="server">
	<SharePoint:DelegateControl runat="server"
		ControlId="SmallSearchInputBox"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageDescription" runat="server">
	<SharePoint:ProjectProperty Property="Description" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<div class="ms-hide">
	<WebPartPages:WebPartZone runat="server" title="loc:TitleBar" id="TitleBar" AllowLayoutChange="false" AllowPersonalization="false" Style="display:none;"><ZoneTemplate>
	<WebPartPages:TitleBarWebPart runat="server" HeaderTitle="WebPartPage" Title="Web Part Page Title Bar" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="TitleBar" PartOrder="2" FrameState="Normal" AllowRemove="False" AllowZoneChange="True" AllowMinimize="False" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_f0e8f73e_56c4_484e_af8b_a733724a6a4b" AllowClose="False" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{F0E8F73E-56C4-484E-AF8B-A733724A6A4B}" WebPart="true" Height="" Width=""></WebPartPages:TitleBarWebPart>

	</ZoneTemplate></WebPartPages:WebPartZone>
  </div>
  <table class="ms-core-tableNoSpace ms-webpartPage-root" width="100%">
				<tr>
					<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="3" valign="top" width="100%"> 
					<WebPartPages:WebPartZone runat="server" Title="loc:Header" ID="Header" FrameType="TitleBarOnly"><ZoneTemplate>
<WebPartPages:ContentEditorWebPart runat="server" __MarkupType="xmlmarkup" WebPart="true" __WebPartId="{E164038F-A8F7-4421-812F-27848B1B0E92}" >
<WebPart xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.microsoft.com/WebPart/v2">
  <Title>REST Playground</Title>
  <FrameType>Default</FrameType>
  <Description>Allows authors to enter rich text content.</Description>
  <IsIncluded>true</IsIncluded>
  <PartOrder>2</PartOrder>
  <FrameState>Normal</FrameState>
  <Height />
  <Width />
  <AllowRemove>true</AllowRemove>
  <AllowZoneChange>true</AllowZoneChange>
  <AllowMinimize>true</AllowMinimize>
  <AllowConnect>true</AllowConnect>
  <AllowEdit>true</AllowEdit>
  <AllowHide>true</AllowHide>
  <IsVisible>true</IsVisible>
  <DetailLink />
  <HelpLink />
  <HelpMode>Modeless</HelpMode>
  <Dir>Default</Dir>
  <PartImageSmall />
  <MissingAssembly>Cannot import this Web Part.</MissingAssembly>
  <PartImageLarge>/_layouts/15/images/mscontl.gif</PartImageLarge>
  <IsIncludedFilter />
  <ExportControlledProperties>true</ExportControlledProperties>
  <ConnectionID>00000000-0000-0000-0000-000000000000</ConnectionID>
  <ID>g_e164038f_a8f7_4421_812f_27848b1b0e92</ID>
  <ContentLink xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor" />
  <Content xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor"><![CDATA[<table border="1" cellpadding="5">
  	<tr><td colspan="5">CREATE NEW LIST ITEM</td></tr>
  	<tr>
  		<td><label id="itemNameCreateLabel">Item Name:</label></td>
  		<td><input type="text" id="itemNameCreateText" value="Test Item"></input></td>
  		<td><label id="listNameCreateLabel">List Name:</label></td>
  		<td><input type="text" id="listNameCreateText" value="MyList"></input></td>
  		<td><button id="CreateButton" name="CreateButtonName" onclick="CreateNew();return false;">Create Item</button></td>
  	</tr>
  	<tr><td colspan="5">GET LIST ITEM</td></tr>
  	<tr>
  		<td><label id="itemIdGetLabel">Item Id:</label></td>
  		<td><input type="text" id="itemIdGetText" value="9"></input></td>
  		<td><label id="listNameGetLabel">List Name:</label></td>
  		<td><input type="text" id="listNameGetText" value="MyList"></input></td>
  		<td><button id="GetButton" name="GetButtonName" onclick="getListItem();return false;">Get Item</button></td>
  	</tr>
  	<tr><td colspan="5">GET ALL LIST ITEMS</td></tr>
  	<tr>
  		<td><label id="listNameGetAllLabel">List Name:</label></td>
  		<td><input type="text" id="listNameGetAllText" value="MyList"></input></td>
  		<td><button id="GetAllButton" name="GetAllButtonName" onclick="getAll();return false;">Get All Items</button></td>
  	</tr>
  	<tr><td colspan="7">UPDATE NEW LIST ITEM</td></tr>
  	<tr>
  		<td><label id="itemIdUpdateLabel">Item Id:</label></td>
  		<td><input type="text" id="itemIdUpdateText" value="9"></input></td>
  		<td><label id="itemNameUpdateLabel">Item Name:</label></td>
  		<td><input type="text" id="itemNameUpdateText" value="Test Item Updated"></input></td>
  		<td><label id="listNameUpdateLabel">List Name:</label></td>
  		<td><input type="text" id="listNameUpdateText" value="MyList"></input></td>
  		<td><button id="UpdateButton" name="UpdateButtonName" onclick="updateItem();return false;">Update Item</button></td>
  	</tr>
  	<tr><td colspan="5">DELETE LIST ITEM</td></tr>
  	<tr>
  		<td><label id="itemIdDeleteLabel">Item Id:</label></td>
  		<td><input type="text" id="itemIdDeleteText" value="10"></input></td>
  		<td><label id="listNameDeleteLabel">List Name:</label></td>
  		<td><input type="text" id="listNameDeleteText" value="MyList"></input></td>
  		<td><button id="DeleteButton" name="DeleteButtonName" onclick="deleteItem();return false;">Delete Item</button></td>
  	</tr>
  	<tr><td colspan="5">COPY FILE</td></tr>
  	<tr>
  		<td><label id="fileNameCopyLabel">File Name:</label></td>
  		<td><input type="text" id="fileNameCopyText" value="ThirdPartyNotices.txt"></input></td>
  		<td><label id="libraryNameCopyLabel">Library Name:</label></td>
  		<td><input type="text" id="libraryNameCopyText" value="Documents"></input></td>
  		<td><button id="CopyFileButton" name="CopyFileButtonName" onclick="copyFile();return false;">Copy File</button></td>
  	</tr>
  	<tr><td colspan="5">MOVE FILE</td></tr>
  	<tr>
  		<td><label id="fileNameMoveLabel">File Name:</label></td>
  		<td><input type="text" id="fileNameMoveText" value="ThirdPartyNotices.txt"></input></td>
  		<td><label id="libraryNameMoveLabel">Library Name:</label></td>
  		<td><input type="text" id="libraryNameMoveText" value="Documents"></input></td>
  		<td><label id="libraryNameToMoveLabel">Library Name To:</label></td>
  		<td><input type="text" id="libraryNameToMoveText" value="DocumentsDest"></input></td>
  		<td><button id="MoveFileButton" name="MoveFileButtonName" onclick="moveFile();return false;">Move File</button></td>
  	</tr>
  </table>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/create.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/retrieveItem.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/retrieveAll.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/update.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/delete.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/copyFile.js"></script>
  <script type="text/javascript" src="../Style Library/Scripts/moveFile.js"></script>  ]]></Content>
  <PartStorage xmlns="http://schemas.microsoft.com/WebPart/v2/ContentEditor" />
</WebPart>
</WebPartPages:ContentEditorWebPart>
					</ZoneTemplate></WebPartPages:WebPartZone> </td>
				</tr>
				<tr>
					<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
					<WebPartPages:WebPartZone runat="server" Title="loc:LeftColumn" ID="LeftColumn" FrameType="TitleBarOnly"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone> </td>
					<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
					<WebPartPages:WebPartZone runat="server" Title="loc:MiddleColumn" ID="MiddleColumn" FrameType="TitleBarOnly"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone> </td>
					<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" height="100%"> 
					<WebPartPages:WebPartZone runat="server" Title="loc:RightColumn" ID="RightColumn" FrameType="TitleBarOnly"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone> </td>
				</tr>
				<tr>
					<td id="_invisibleIfEmpty" name="_invisibleIfEmpty" colspan="3" valign="top" width="100%"> 
					<WebPartPages:WebPartZone runat="server" Title="loc:Footer" ID="Footer" FrameType="TitleBarOnly"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone> </td>
				</tr>
				<SharePoint:ScriptBlock runat="server">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</SharePoint:ScriptBlock>
		</table>
</asp:Content>
