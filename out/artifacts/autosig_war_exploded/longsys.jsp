<%@ page import="com.longsys.entity.Signatureinfo" %><%--
  Created by IntelliJ IDEA.
  User: donvin.li
  Date: 2022/5/11
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html xmlns:v="urn:schemas-microsoft-com:vml"
      xmlns:o="urn:schemas-microsoft-com:office:office"
      xmlns:w="urn:schemas-microsoft-com:office:word"
      xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
      xmlns="http://www.w3.org/TR/REC-html40">

<head>
    <meta http-equiv=Content-Type content="text/html; charset=utf-8">
    <meta name=ProgId content=Word.Document>
    <meta name=Generator content="Microsoft Word 15">
    <meta name=Originator content="Microsoft Word 15">
    <link rel=File-List href="longsys.files/filelist.xml">
    <link rel=Edit-Time-Data href="longsys.files/editdata.mso">
    <!--[if !mso]>
    <style>
        v\:* {behavior:url(#default#VML);}
        o\:* {behavior:url(#default#VML);}
        w\:* {behavior:url(#default#VML);}
        .shape {behavior:url(#default#VML);}
    </style>
    <![endif]--><!--[if gte mso 9]><xml>
 <o:OfficeDocumentSettings>
  <o:AllowPNG/>
 </o:OfficeDocumentSettings>
</xml><![endif]-->
    <link rel=themeData href="longsys.files/themedata.thmx">
    <link rel=colorSchemeMapping href="longsys.files/colorschememapping.xml">
    <!--[if gte mso 9]><xml>
 <w:WordDocument>
  <w:View>Normal</w:View>
  <w:Zoom>0</w:Zoom>
  <w:TrackMoves/>
  <w:TrackFormatting/>
  <w:PunctuationKerning/>
  <w:DrawingGridVerticalSpacing>7.8 磅</w:DrawingGridVerticalSpacing>
  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>
  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>
  <w:ValidateAgainstSchemas/>
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
  <w:DoNotPromoteQF/>
  <w:LidThemeOther>EN-US</w:LidThemeOther>
  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
  <w:DoNotShadeFormData/>
  <w:Compatibility>
   <w:SpaceForUL/>
   <w:BalanceSingleByteDoubleByteWidth/>
   <w:DoNotLeaveBackslashAlone/>
   <w:ULTrailSpace/>
   <w:DoNotExpandShiftReturn/>
   <w:AdjustLineHeightInTable/>
   <w:BreakWrappedTables/>
   <w:SnapToGridInCell/>
   <w:WrapTextWithPunct/>
   <w:UseAsianBreakRules/>
   <w:DontGrowAutofit/>
   <w:SplitPgBreakAndParaMark/>
   <w:EnableOpenTypeKerning/>
   <w:DontFlipMirrorIndents/>
   <w:OverrideTableStyleHps/>
   <w:UseFELayout/>
  </w:Compatibility>
  <m:mathPr>
   <m:mathFont m:val="Cambria Math"/>
   <m:brkBin m:val="before"/>
   <m:brkBinSub m:val="&#45;-"/>
   <m:smallFrac m:val="off"/>
   <m:dispDef/>
   <m:lMargin m:val="0"/>
   <m:rMargin m:val="0"/>
   <m:defJc m:val="centerGroup"/>
   <m:wrapIndent m:val="1440"/>
   <m:intLim m:val="subSup"/>
   <m:naryLim m:val="undOvr"/>
  </m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
 <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="false"
  DefSemiHidden="false" DefQFormat="false" DefPriority="99"
  LatentStyleCount="371">
  <w:LsdException Locked="false" Priority="0" QFormat="true" Name="Normal"/>
  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 1"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 2"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 3"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 4"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 5"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 6"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 7"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 8"/>
  <w:LsdException Locked="false" Priority="9" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="heading 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index 9"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 1"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 2"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 3"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 4"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 5"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 6"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 7"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 8"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" Name="toc 9"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="header"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footer"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="index heading"/>
  <w:LsdException Locked="false" Priority="35" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="caption"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of figures"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="envelope return"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="footnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="line number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="page number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote reference"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="endnote text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="table of authorities"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="macro"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="toa heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Bullet 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Number 5"/>
  <w:LsdException Locked="false" Priority="10" QFormat="true" Name="Title"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Closing"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Signature"/>
  <w:LsdException Locked="false" Priority="1" SemiHidden="true"
   UnhideWhenUsed="true" Name="Default Paragraph Font"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="List Continue 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Message Header"/>
  <w:LsdException Locked="false" Priority="11" QFormat="true" Name="Subtitle"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Salutation"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Date"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text First Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Note Heading"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Body Text Indent 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Block Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Hyperlink"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="FollowedHyperlink"/>
  <w:LsdException Locked="false" Priority="22" QFormat="true" Name="Strong"/>
  <w:LsdException Locked="false" Priority="20" QFormat="true" Name="Emphasis"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Document Map"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Plain Text"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="E-mail Signature"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Top of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Bottom of Form"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal (Web)"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Acronym"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Address"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Cite"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Code"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Definition"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Keyboard"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Preformatted"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Sample"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Typewriter"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="HTML Variable"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Normal Table"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="annotation subject"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="No List"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Outline List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Simple 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Classic 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Colorful 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Columns 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Grid 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 4"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 5"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 6"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 7"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table List 8"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table 3D effects 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Contemporary"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Elegant"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Professional"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Subtle 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 1"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 2"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Web 3"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Balloon Text"/>
  <w:LsdException Locked="false" Priority="39" Name="Table Grid"/>
  <w:LsdException Locked="false" SemiHidden="true" UnhideWhenUsed="true"
   Name="Table Theme"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Placeholder Text"/>
  <w:LsdException Locked="false" Priority="1" QFormat="true" Name="No Spacing"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 1"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 1"/>
  <w:LsdException Locked="false" SemiHidden="true" Name="Revision"/>
  <w:LsdException Locked="false" Priority="34" QFormat="true"
   Name="List Paragraph"/>
  <w:LsdException Locked="false" Priority="29" QFormat="true" Name="Quote"/>
  <w:LsdException Locked="false" Priority="30" QFormat="true"
   Name="Intense Quote"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 1"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 1"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 1"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 1"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 1"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 2"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 2"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 2"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 2"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 2"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 2"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 3"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 3"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 3"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 3"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 3"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 3"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 4"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 4"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 4"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 4"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 4"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 4"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 5"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 5"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 5"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 5"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 5"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 5"/>
  <w:LsdException Locked="false" Priority="60" Name="Light Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="61" Name="Light List Accent 6"/>
  <w:LsdException Locked="false" Priority="62" Name="Light Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="63" Name="Medium Shading 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="64" Name="Medium Shading 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="65" Name="Medium List 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="66" Name="Medium List 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="67" Name="Medium Grid 1 Accent 6"/>
  <w:LsdException Locked="false" Priority="68" Name="Medium Grid 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="69" Name="Medium Grid 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="70" Name="Dark List Accent 6"/>
  <w:LsdException Locked="false" Priority="71" Name="Colorful Shading Accent 6"/>
  <w:LsdException Locked="false" Priority="72" Name="Colorful List Accent 6"/>
  <w:LsdException Locked="false" Priority="73" Name="Colorful Grid Accent 6"/>
  <w:LsdException Locked="false" Priority="19" QFormat="true"
   Name="Subtle Emphasis"/>
  <w:LsdException Locked="false" Priority="21" QFormat="true"
   Name="Intense Emphasis"/>
  <w:LsdException Locked="false" Priority="31" QFormat="true"
   Name="Subtle Reference"/>
  <w:LsdException Locked="false" Priority="32" QFormat="true"
   Name="Intense Reference"/>
  <w:LsdException Locked="false" Priority="33" QFormat="true" Name="Book Title"/>
  <w:LsdException Locked="false" Priority="37" SemiHidden="true"
   UnhideWhenUsed="true" Name="Bibliography"/>
  <w:LsdException Locked="false" Priority="39" SemiHidden="true"
   UnhideWhenUsed="true" QFormat="true" Name="TOC Heading"/>
  <w:LsdException Locked="false" Priority="41" Name="Plain Table 1"/>
  <w:LsdException Locked="false" Priority="42" Name="Plain Table 2"/>
  <w:LsdException Locked="false" Priority="43" Name="Plain Table 3"/>
  <w:LsdException Locked="false" Priority="44" Name="Plain Table 4"/>
  <w:LsdException Locked="false" Priority="45" Name="Plain Table 5"/>
  <w:LsdException Locked="false" Priority="40" Name="Grid Table Light"/>
  <w:LsdException Locked="false" Priority="46" Name="Grid Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="Grid Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="Grid Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="Grid Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="Grid Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="Grid Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="Grid Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="Grid Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="Grid Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="Grid Table 7 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="46" Name="List Table 1 Light"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark"/>
  <w:LsdException Locked="false" Priority="51" Name="List Table 6 Colorful"/>
  <w:LsdException Locked="false" Priority="52" Name="List Table 7 Colorful"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 1"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 1"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 1"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 1"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 1"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 1"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 2"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 2"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 2"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 2"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 2"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 2"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 3"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 3"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 3"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 3"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 3"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 3"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 4"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 4"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 4"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 4"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 4"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 4"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 5"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 5"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 5"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 5"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 5"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 5"/>
  <w:LsdException Locked="false" Priority="46"
   Name="List Table 1 Light Accent 6"/>
  <w:LsdException Locked="false" Priority="47" Name="List Table 2 Accent 6"/>
  <w:LsdException Locked="false" Priority="48" Name="List Table 3 Accent 6"/>
  <w:LsdException Locked="false" Priority="49" Name="List Table 4 Accent 6"/>
  <w:LsdException Locked="false" Priority="50" Name="List Table 5 Dark Accent 6"/>
  <w:LsdException Locked="false" Priority="51"
   Name="List Table 6 Colorful Accent 6"/>
  <w:LsdException Locked="false" Priority="52"
   Name="List Table 7 Colorful Accent 6"/>
 </w:LatentStyles>
</xml><![endif]-->
    <style>
        <!--
        /* Font Definitions */
        @font-face
        {font-family:"Cambria Math";
            panose-1:2 4 5 3 5 4 6 3 2 4;
            mso-font-charset:1;
            mso-generic-font-family:roman;
            mso-font-pitch:variable;
            mso-font-signature:0 0 0 0 0 0;}
        @font-face
        {font-family:等线;
            panose-1:2 1 6 0 3 1 1 1 1 1;
            mso-font-alt:DengXian;
            mso-font-charset:134;
            mso-generic-font-family:auto;
            mso-font-pitch:variable;
            mso-font-signature:-1610612033 953122042 22 0 262159 0;}
        @font-face
        {font-family:微软雅黑;
            panose-1:2 11 5 3 2 2 4 2 2 4;
            mso-font-charset:134;
            mso-generic-font-family:swiss;
            mso-font-pitch:variable;
            mso-font-signature:-2147483001 718224464 22 0 262175 0;}
        @font-face
        {font-family:"\@微软雅黑";
            mso-font-charset:134;
            mso-generic-font-family:swiss;
            mso-font-pitch:variable;
            mso-font-signature:-2147483001 718224464 22 0 262175 0;}
        @font-face
        {font-family:"\@等线";
            panose-1:2 1 6 0 3 1 1 1 1 1;
            mso-font-charset:134;
            mso-generic-font-family:auto;
            mso-font-pitch:variable;
            mso-font-signature:-1610612033 953122042 22 0 262159 0;}
        @font-face
        {font-family:Calibri;
            panose-1:2 15 5 2 2 2 4 3 2 4;
            mso-font-charset:0;
            mso-generic-font-family:swiss;
            mso-font-pitch:variable;
            mso-font-signature:-469750017 -1073732485 9 0 511 0;}
        /* Style Definitions */
        p.MsoNormal, li.MsoNormal, div.MsoNormal
        {mso-style-unhide:no;
            mso-style-qformat:yes;
            mso-style-parent:"";
            margin:0cm;
            margin-bottom:.0001pt;
            text-align:justify;
            text-justify:inter-ideograph;
            mso-pagination:none;
            font-size:10.5pt;
            mso-bidi-font-size:11.0pt;
            font-family:等线;
            mso-ascii-font-family:等线;
            mso-ascii-theme-font:minor-latin;
            mso-fareast-font-family:等线;
            mso-fareast-theme-font:minor-fareast;
            mso-hansi-font-family:等线;
            mso-hansi-theme-font:minor-latin;
            mso-bidi-font-family:"Times New Roman";
            mso-bidi-theme-font:minor-bidi;
            mso-font-kerning:1.0pt;}
        a:link, span.MsoHyperlink
        {mso-style-noshow:yes;
            mso-style-priority:99;
            mso-style-parent:"";
            color:#0563C1;
            text-decoration:underline;
            text-underline:single;}
        a:visited, span.MsoHyperlinkFollowed
        {mso-style-noshow:yes;
            mso-style-priority:99;
            color:#954F72;
            mso-themecolor:followedhyperlink;
            text-decoration:underline;
            text-underline:single;}
        .MsoChpDefault
        {mso-style-type:export-only;
            mso-default-props:yes;
            font-size:10.5pt;
            mso-ansi-font-size:10.5pt;
            mso-bidi-font-size:11.0pt;
            mso-ascii-font-family:等线;
            mso-ascii-theme-font:minor-latin;
            mso-fareast-font-family:等线;
            mso-fareast-theme-font:minor-fareast;
            mso-hansi-font-family:等线;
            mso-hansi-theme-font:minor-latin;
            mso-bidi-font-family:"Times New Roman";
            mso-bidi-theme-font:minor-bidi;
            mso-font-kerning:1.0pt;}
        /* Page Definitions */
        @page
        {mso-page-border-surround-header:no;
            mso-page-border-surround-footer:no;}
        @page WordSection1
        {size:612.0pt 792.0pt;
            margin:72.0pt 90.0pt 72.0pt 90.0pt;
            mso-header-margin:36.0pt;
            mso-footer-margin:36.0pt;
            mso-paper-source:0;}
        div.WordSection1
        {page:WordSection1;}
        -->
    </style>
    <!--[if gte mso 10]>
    <style>
        /* Style Definitions */
        table.MsoNormalTable
        {mso-style-name:普通表格;
            mso-tstyle-rowband-size:0;
            mso-tstyle-colband-size:0;
            mso-style-noshow:yes;
            mso-style-priority:99;
            mso-style-parent:"";
            mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
            mso-para-margin:0cm;
            mso-para-margin-bottom:.0001pt;
            mso-pagination:widow-orphan;
            font-size:10.5pt;
            mso-bidi-font-size:11.0pt;
            font-family:等线;
            mso-ascii-font-family:等线;
            mso-ascii-theme-font:minor-latin;
            mso-fareast-font-family:等线;
            mso-fareast-theme-font:minor-fareast;
            mso-hansi-font-family:等线;
            mso-hansi-theme-font:minor-latin;
            mso-font-kerning:1.0pt;}
    </style>
    <![endif]-->
</head>

<body lang=ZH-CN link="#0563C1" vlink="#954F72" style='tab-interval:21.0pt;
text-justify-trim:punctuation'>

<%
    Signatureinfo signatureinfo=(Signatureinfo)request.getAttribute("signatureinfo");
%>
<div class=WordSection1>

    <p class=MsoNormal><b><span style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;mso-no-proof:yes'><%=signatureinfo.getName()%><span lang=EN-US> | <%=signatureinfo.getEname()%><o:p></o:p></span></span></b></p>

    <p class=MsoNormal><span style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;mso-bidi-font-weight:bold;mso-no-proof:yes'><%=signatureinfo.getPosition()%><span
            lang=EN-US> | </span><%=signatureinfo.getDepartment()%><span lang=EN-US><span
            style='mso-spacerun:yes'>&nbsp;&nbsp; </span><o:p></o:p></span></span></p>

    <p class=MsoNormal><span style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;mso-bidi-font-weight:bold;mso-no-proof:yes'>手机（<span lang=EN-US>M.P</span>）：<span
            lang=EN-US>+86 <%=signatureinfo.getMobile()%><o:p></o:p></span></span></p>

    <p class=MsoNormal><span style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;mso-bidi-font-weight:bold;mso-no-proof:yes'>电话（<span lang=EN-US>Tel</span>）：<span
            lang=EN-US>+86-755-86168848-<%=signatureinfo.getTel()%><o:p></o:p></span></span></p>

    <p class=MsoNormal><span style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;mso-bidi-font-weight:bold;mso-no-proof:yes'>邮箱（<span lang=EN-US>Email</span>）：</span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-weight:
bold;mso-no-proof:yes'><a href="mailto:<%=signatureinfo.getEmail()%>"><%=signatureinfo.getEmail()%></a><span
            style='color:#262626'> &nbsp;</span></span><span lang=EN-US style='font-size:
9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:Arial;color:#262626;
mso-no-proof:yes'>&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>

    <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
mso-bidi-font-family:Arial;color:#262626;mso-no-proof:yes'><o:p>&nbsp;</o:p></span></p>

    <p class=MsoNormal><span lang=EN-US><a href="http://www.longsys.com/"><span
            style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:Arial;
mso-no-proof:yes'>www.longsys.com</span></a></span><span lang=EN-US
                                                         style='font-size:9.0pt;font-family:"微软雅黑",sans-serif'><o:p></o:p></span></p>

    <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif'><o:p>&nbsp;</o:p></span></p>

    <p class=MsoNormal><span lang=EN-US><a
            href="https://mp.weixin.qq.com/mp/homepage?__biz=MjM5NjY5Mzg2OQ==&amp;hid=2&amp;sn=6540738bf1481438b5a8d517277d7872&amp;scene=18"><span
            style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:Arial;
color:#262626;mso-no-proof:yes;text-decoration:none;text-underline:none'><!--[if gte vml 1]><v:shapetype
 id="_x0000_t75" coordsize="21600,21600" o:spt="75" o:preferrelative="t"
 path="m@4@5l@4@11@9@11@9@5xe" filled="f" stroked="f">
 <v:stroke joinstyle="miter"/>
 <v:formulas>
  <v:f eqn="if lineDrawn pixelLineWidth 0"/>
  <v:f eqn="sum @0 1 0"/>
  <v:f eqn="sum 0 0 @1"/>
  <v:f eqn="prod @2 1 2"/>
  <v:f eqn="prod @3 21600 pixelWidth"/>
  <v:f eqn="prod @3 21600 pixelHeight"/>
  <v:f eqn="sum @0 0 1"/>
  <v:f eqn="prod @6 1 2"/>
  <v:f eqn="prod @7 21600 pixelWidth"/>
  <v:f eqn="sum @8 21600 0"/>
  <v:f eqn="prod @7 21600 pixelHeight"/>
  <v:f eqn="sum @10 21600 0"/>
 </v:formulas>
 <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>
 <o:lock v:ext="edit" aspectratio="t"/>
</v:shapetype><v:shape id="图片_x0020_4" o:spid="_x0000_i1025" type="#_x0000_t75"
 href="https://mp.weixin.qq.com/mp/homepage?__biz=MjM5NjY5Mzg2OQ==&amp;hid=2&amp;sn=6540738bf1481438b5a8d517277d7872&amp;scene=18"
 style='width:14.4pt;height:14.4pt;visibility:visible;mso-wrap-style:square'
 o:button="t">
 <v:fill o:detectmouseclick="t"/>
 <v:imagedata src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image001.png" o:title="微信"/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'><img
            border=0 width=24 height=24 src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image002.png" v:shapes="图片_x0020_4"></span><![endif]></span></a></span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Arial;color:#262626;mso-no-proof:yes'><span
            style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span><span lang=EN-US><a
            href="https://weibo.com/longsys1998"><span style='font-size:9.0pt;font-family:
"微软雅黑",sans-serif;mso-bidi-font-family:Arial;color:#262626;mso-no-proof:yes;
text-decoration:none;text-underline:none'><!--[if gte vml 1]><v:shape id="图片_x0020_5"
 o:spid="_x0000_i1026" type="#_x0000_t75" href="https://weibo.com/longsys1998"
 style='width:14.4pt;height:14.4pt;visibility:visible;mso-wrap-style:square'
 o:button="t">
 <v:fill o:detectmouseclick="t"/>
 <v:imagedata src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image003.png" o:title="微博"/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'><img
            border=0 width=24 height=24 src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image004.png" v:shapes="图片_x0020_5"></span><![endif]></span></a></span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Arial;color:#262626;mso-no-proof:yes'><span
            style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span><span lang=EN-US><a
            href="https://www.linkedin.com/company"><span style='font-size:9.0pt;
font-family:"微软雅黑",sans-serif;mso-bidi-font-family:Arial;color:#262626;
mso-no-proof:yes;text-decoration:none;text-underline:none'><!--[if gte vml 1]><v:shape
 id="图片_x0020_6" o:spid="_x0000_i1027" type="#_x0000_t75"
 href="https://www.linkedin.com/company/6664097/admin/" style='width:14.4pt;
 height:14.4pt;visibility:visible;mso-wrap-style:square' o:button="t">
 <v:fill o:detectmouseclick="t"/>
 <v:imagedata src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image005.png" o:title="Linkedin"/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'><img
            border=0 width=24 height=24 src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image006.png" v:shapes="图片_x0020_6"></span><![endif]></span></a></span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Arial;color:#262626;mso-no-proof:yes'><span
            style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span><span lang=EN-US><a
            href="https://www.facebook.com/longsys"><span style='font-size:9.0pt;
font-family:"微软雅黑",sans-serif;mso-bidi-font-family:Arial;color:#262626;
mso-no-proof:yes;text-decoration:none;text-underline:none'><!--[if gte vml 1]><v:shape
 id="图片_x0020_7" o:spid="_x0000_i1028" type="#_x0000_t75"
 href="https://www.facebook.com/longsys" style='width:14.4pt;height:14.4pt;
 visibility:visible;mso-wrap-style:square' o:button="t">
 <v:fill o:detectmouseclick="t"/>
 <v:imagedata src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image007.png" o:title="Facebook"/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'><img
            border=0 width=24 height=24 src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image008.png" v:shapes="图片_x0020_7"></span><![endif]></span></a></span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Arial;color:#262626;mso-no-proof:yes'><span
            style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span><span lang=EN-US><a
            href="https://www.youtube.com/channel/UCQIKG9AiH7LHHwO0KKE-yPQ"><span
            style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:Arial;
color:#262626;mso-no-proof:yes;text-decoration:none;text-underline:none'><!--[if gte vml 1]><v:shape
 id="图片_x0020_9" o:spid="_x0000_i1029" type="#_x0000_t75"
 href="https://www.youtube.com/channel/UCQIKG9AiH7LHHwO0KKE-yPQ" style='width:19.8pt;
 height:14.4pt;visibility:visible;mso-wrap-style:square' o:button="t">
 <v:fill o:detectmouseclick="t"/>
 <v:imagedata src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image009.png" o:title="Youtube"/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'><img
            border=0 width=33 height=24 src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image010.png" v:shapes="图片_x0020_9"></span><![endif]></span></a></span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Arial;color:#262626;mso-no-proof:yes'><o:p></o:p></span></p>

    <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;background:white;mso-no-proof:yes'>--------------------------------------------------------------------------------</span><span
            lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Calibri;color:#262626;mso-no-proof:yes'><o:p></o:p></span></p>

    <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;background:white;mso-no-proof:yes'><!--[if gte vml 1]><v:shape
 id="图片_x0020_8" o:spid="_x0000_i1030" type="#_x0000_t75" style='width:147.6pt;
 height:43.8pt;visibility:visible;mso-wrap-style:square'>
 <v:imagedata src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image011.png" o:title="深圳市江波龙电子股份有限公司logo"/>
</v:shape><![endif]--><![if !vml]><img border=0 width=246 height=73
                                       src="http://ex.longsys.com:8001/longsys.files/<%=signatureinfo.getImagepath()%>/image012.png" v:shapes="图片_x0020_8"><![endif]><o:p></o:p></span></p>

    <p class=MsoNormal><span style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:#262626;mso-no-proof:yes'>地址：<%=signatureinfo.getCnaddr()%><span lang=EN-US>&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></span></p>

    <p class=MsoNormal><span lang=EN-US style='font-size:9.0pt;font-family:"微软雅黑",sans-serif;
mso-bidi-font-family:Arial;color:#262626;mso-no-proof:yes'>Address: <%=signatureinfo.getEnaddr()%><o:p></o:p></span></p>

    <p class=MsoNormal style='line-height:12.0pt;mso-line-height-rule:exactly'><span
            style='font-size:8.0pt;mso-bidi-font-size:9.0pt;font-family:"微软雅黑",sans-serif;
color:gray;mso-no-proof:yes'>本邮件保密且受到法律保护。此邮件及其附件属于秘密信息，仅发送给原本意向之收件人。如果阁下错误或因疏忽收到，任何使用和传播本邮件信息的行为都被视为是非法和禁止的。互联网不能保证信息一定安全或无错误，该信息内容有可能被改变、拦截、破坏或含有病毒，我们对此导致的错误或信息遗漏不承担责任。</span><span
            lang=EN-US style='font-size:8.0pt;mso-bidi-font-size:9.0pt;font-family:"微软雅黑",sans-serif;
mso-bidi-font-family:Calibri;color:gray;mso-no-proof:yes'><o:p></o:p></span></p>

    <p class=MsoNormal align=left style='text-align:left;line-height:12.0pt;
mso-line-height-rule:exactly'><span lang=EN-US style='font-size:8.0pt;
mso-bidi-font-size:9.0pt;font-family:"微软雅黑",sans-serif;mso-bidi-font-family:
Arial;color:gray;mso-no-proof:yes'>This email is confidential and legally
privileged. This email and any attachments may contain confidential or
proprietary information intended solely for the person/entity originally
addressed. Any unauthorized use or dissemination is prohibited and unlawful if
you receive this email by mistake or negligence. Internet communications cannot
be guaranteed to be secured or error-free as information could be altered,
intercepted, lost, or contain viruses. Therefore, we do not accept liability
for any errors or omissions that arise as a result of transmission over the
Internet.<o:p></o:p></span></p>

    <p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>

