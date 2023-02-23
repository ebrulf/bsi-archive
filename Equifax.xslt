<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output doctype-public="-//W3C//DTD XHTML 1.1//EN" doctype-system="http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd" encoding="ISO-8859-2" method="html"/>

  <xsl:template match="/">
    <xsl:param name="RiskRating" select="Report/CreditRiskRating/RiskRating"/>
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <style type="text/css">
          /* <![CDATA[ */
          table
          {
          text-align: center;
          margin: 0 auto;
          }
  body {
        text-align: center;
        font-family: 'Arial';
        font-size: 12pt;
        font-weight: normal;
        font-style: normal;
        margin:0 auto;
  }
  .Normal {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: normal;
        font-style: normal;
  }
  .Hyperlink {
        text-decoration: underline ;
        color: #0000FF;
  }
  .Header {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: normal;
        font-style: normal;
  }
  .Footer {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: normal;
        font-style: normal;
  }
  H1 {
        text-align: center;
        page-break-after: avoid;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: bold;
        font-style: normal;
        color: #808080;
  }
  H2 {
        text-align: center;
        page-break-after: avoid;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 10pt;
        font-weight: bold;
        font-style: normal;
  }
  H3 {
        text-align: left;
        page-break-after: avoid;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: bold;
        font-style: normal;
        color: #808080;
  }
  .Body_Text_2 {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: normal;
        font-style: normal;
        color: #0000FF;
  }
  Strong {
        font-weight: bold;
  }
  .Plain_Text {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Courier New';
        font-size: 10pt;
        font-weight: normal;
        font-style: normal;
  }
  .Comment_Reference {
        font-size: 8pt;
  }
  .Comment_Text {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 10pt;
        font-weight: normal;
        font-style: normal;
  }
  .Comment_Subject {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 10pt;
        font-weight: bold;
        font-style: normal;
  }
  .Balloon_Text {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Tahoma';
        font-size: 8pt;
        font-weight: normal;
        font-style: normal;
  }
  .Normal__Web_ {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 5pt 0pt 5pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 9pt;
        font-weight: normal;
        font-style: normal;
  }
  .Body_Text {
        text-align: left;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        line-height: 18pt;
        font-family: 'Mincho';
        font-size: 10pt;
        font-weight: normal;
        font-style: normal;
  }
  .Normal1 {
        text-align: center;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 14pt;
        font-weight: bold;
        font-style: normal;
  }
  .Style1 {
        text-align: center;
        widows: 2;
        orphans: 2;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Verdana';
        font-size: 14pt;
        font-weight: bold;
        font-style: normal;
  }
  p {
        text-align: left;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Arial';
        font-size: 12pt;
        font-style: normal;
  }
  .body-text {
        text-align: left;
        margin: 0pt 0pt 0pt 0pt;
        text-indent: 0pt;
        font-family: 'Arial';
        font-size: 12pt;
        font-weight: normal;
        font-style: normal;
  }
  span.header
  {
    color:black;
    font-size:9pt;
  }
  span.value
  {
    color:black;
    font-size:11pt;
  }
  /* ]]> */
        </style>
      </head>
      <body>
        <table border="0" cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr>
            <td style="width:64%;text-align:left;" rowspan="3">
              <img src="http://www.dybusinfo.com/Equifax.png" height="30px"/>
            </td>
            <td style="width:8%">
              <span style="color:#808080;font-size:9pt;">Tel:</span>
            </td>
            <td style="width:28%">
              <span class="header">+44 (0) 845 603 3000</span>
            </td>
          </tr>
          <tr>
            <td style="width:8%">
              <span style="color:#808080;font-size:9pt;">Fax:</span>
            </td>
            <td style="width:28%">
              <span class="header">+44 (0) 8700 104 525</span>
            </td>
          </tr>
          <tr>
            <td style="width:8%">
              <span style="color:#808080;font-size:9pt;">Email:</span>
            </td>
            <td style="width:28%">
              <span class="header">globalscanuk@equifax.com</span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr>
            <td>
              <p class="Normal1">
                <br/>IN-DEPTH CREDIT REPORT <br/><br/>
              </p>
            </td>
          </tr>
        </table>

        <table border="0" cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <p>
                <strong>
                  <span style="color:#808080;">References</span>
                </strong>
              </p>
            </td>

            <td style="width:188.55pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>

            <td style="width:50.45pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <p>
                <strong>
                  <span style="color:#808080;">Status</span>
                </strong>
              </p>
            </td>

            <td style="width:61.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;"></span>
            </td>

            <td style="width:188.55pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>

            <td style="width:50.45pt;text-align:right;">
              <span style="color:#808080;">Date:</span>
            </td>

            <td style="width:61.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Status/Date"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Customer ref:</span>
            </td>

            <td style="width:188.55pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>

            <td style="width:50.45pt;text-align:right;">
              <span style="color:#808080;">Speed:</span>
            </td>

            <td style="width:61.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Status/Speed"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Our ref:</span>
            </td>

            <td style="width:188.55pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>

            <td style="width:50.45pt;text-align:right;">
              <span style="color:#808080;">Report:</span>
            </td>

            <td style="width:61.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Status/Report"/>
              </span>
            </td>
          </tr>
        </table>


        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;border-top:1pt solid black;">

            </td>
          </tr>
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">IDENTIFICATION</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Given</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Subject Name:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/SubjectName"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Address:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/Address/Street"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Town:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/Address/Town"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">State/province:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/Address/Province"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Zip/postal code:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/Address/Zipcode"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Country:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/Address/Country"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Comments:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Given/Comments"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <a name="Identification_Verified" id="Identification_Verified"></a>
              <strong>
                <span style="color:#808080;">Verified</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Subject Name:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/SubjectName"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Other Style:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/OtherStyle"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Address:</span>
            </td>

            <td style="width:144.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Address/Street"/>
              </span>
            </td>

            <td style="width:77.3pt;text-align:right;">
              <span style="color:#808080;">PO address:</span>
            </td>

            <td style="width:79.1pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/PostalAddress/Street"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Town:</span>
            </td>

            <td style="width:144.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Address/Town"/>
              </span>
            </td>

            <td style="width:77.3pt;text-align:right;;">
              <span style="color:#808080;">Town:</span>
            </td>

            <td style="width:79.1pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/PostalAddress/Town"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">State/province:</span>
            </td>

            <td style="width:144.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Address/Province"/>
              </span>
            </td>

            <td style="width:77.3pt;text-align:right;">
              <span style="color:#808080;">State/province:</span>
            </td>

            <td style="width:79.1pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/PostalAddress/Province"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Zip/postal code:</span>
            </td>

            <td style="width:144.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Address/Zipcode"/>
              </span>
            </td>

            <td style="width:77.3pt;text-align:right;">
              <span style="color:#808080;">Zip:</span>
            </td>

            <td style="width:79.1pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/PostalAddress/Zipcode"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Country:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Address/Country"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Telephone:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Telephone"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Mobile phone:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Mobile"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Fax:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Fax"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Email:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Email"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Website:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Website"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Remarks:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Identification/Verified/Remarks"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">EXECUTIVE SUMMARY</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Date established:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/DateEstablished"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Date registered:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/DateRegistered"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Legal form:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/LegalForm"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">
                Author. Capital:
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/AuthorisedCapital"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">
                Sales Turnover:
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/SalesTurnover"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Main activities:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/MainActivities"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Employees:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ExecutiveSummary/Employees"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
            </td>
          </tr>

        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center">
              <strong>
                <span style="font-size:11pt;">CREDIT RISK RATING</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Risk Rating</span>
              </strong>
            </td>

            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  As at <xsl:value-of select="Report/Status/Date"/>
                </span>
              </strong>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"></span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:7.2pt;background-color:#008000;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <xsl:choose>
                  <xsl:when test="$RiskRating='Excellent'">
                    <span style="color:#000000;">></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="color:#000000;"></span>
                  </xsl:otherwise>
                </xsl:choose>
              </strong>
            </td>

            <td style="width:79.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <xsl:choose>
                <xsl:when test="$RiskRating='Excellent'">
                  <span style="color:black;">Excellent</span>
                </xsl:when>
                <xsl:otherwise>
                  <span style="color:#C0C0C0;">Excellent</span>
                </xsl:otherwise>
              </xsl:choose>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
        
              </ul>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:7.2pt;background-color:#00FF00;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <xsl:choose>
                  <xsl:when test="$RiskRating='Good'">
                    <span style="color:#000000;">></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="color:#000000;"></span>
                  </xsl:otherwise>
                </xsl:choose>
              </strong>
            </td>

            <td style="width:79.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <xsl:choose>
                <xsl:when test="$RiskRating='Good'">
                  <span style="color:black;">Good</span>
                </xsl:when>
                <xsl:otherwise>
                  <span style="color:#C0C0C0;">Good</span>
                </xsl:otherwise>
              </xsl:choose>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
       
              </ul>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:7.2pt;background-color:#333399;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <xsl:choose>
                  <xsl:when test="$RiskRating='Satisfactory'">
                    <span style="color:#000000;">></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="color:#000000;"></span>
                  </xsl:otherwise>
                </xsl:choose>                
              </strong>
            </td>

            <td style="width:79.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <xsl:choose>
                <xsl:when test="$RiskRating='Satisfactory'">
                  <span style="color:black;">Satisfactory</span>
                </xsl:when>
                <xsl:otherwise>
                  <span style="color:#C0C0C0;">Satisfactory</span>
                </xsl:otherwise>
              </xsl:choose>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
         
              </ul>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:7.2pt;background-color:#808000;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <xsl:choose>
                  <xsl:when test="$RiskRating='Passable'">
                    <span style="color:#000000;">></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="color:#000000;"></span>
                  </xsl:otherwise>
                </xsl:choose>
              </strong>
            </td>

            <td style="width:79.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <xsl:choose>
                <xsl:when test="$RiskRating='Passable'">
                  <span style="color:black;">Passable</span>
                </xsl:when>
                <xsl:otherwise>
                  <span style="color:#C0C0C0;">Passable</span>
                </xsl:otherwise>
              </xsl:choose>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
                <li style="list-style-type:none;">
                  <ul style="margin:0pt;padding:0pt;list-style-type:disc;">

                  </ul>
                </li>
              </ul>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:7.2pt;background-color:#FF0000;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#000000;"> </span>
              </strong>
            </td>

            <td style="width:79.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#C0C0C0;">Poor</span>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
                <li style="list-style-type:none;">
                  <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
        
                  </ul>
                </li>
              </ul>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:7.2pt;background-color:#C0C0C0;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <xsl:choose>
                  <xsl:when test="$RiskRating='No classification'">
                    <span style="color:#000000;">></span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span style="color:#000000;"></span>
                  </xsl:otherwise>
                </xsl:choose>
              </strong>
            </td>

            <td style="width:79.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <xsl:choose>
                <xsl:when test="$RiskRating='No classification'">
                  <span style="color:black;">No classification</span>
                </xsl:when>
                <xsl:otherwise>
                  <span style="color:#C0C0C0;">No classification</span>
                </xsl:otherwise>
              </xsl:choose>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
                <li style="list-style-type:none;">
                  <ul style="margin:0pt;padding:0pt;list-style-type:disc;">
       
                  </ul>
                </li>
              </ul>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td valign="middle" style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="font-size:14pt;">
                  
                </span>
              </strong>
            </td>

            <td valign="middle" style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="font-size:20pt;"> </span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  
                </span>
              </strong>
            </td>

            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong> </strong>
            </td>

            <td style="width:214.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Interpretation</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/CreditRiskRating/Interpretation"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <p>
                <strong>
                  <span style="color:#808080;">Credit Limit</span>
                </strong>
              </p>
            </td>

            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">Recomm. Limit:</span>
            </td>

            <td style="width:70.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/CreditRiskRating/CreditLimit/RecommendedLimit"/>
              </span>
            </td>

            <td style="width:61.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">Requested:</span>
            </td>

            <td style="width:61.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/CreditRiskRating/CreditLimit/Requested"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Comments</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/CreditRiskRating/Comments"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">

            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">REGISTRY DATA</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <p>
                <strong>
                  <span style="color:#808080;">Key Facts</span>
                </strong>
              </p>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Date established:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/DateEstablished"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Date registered:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/DateRegistered"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Legal form:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/LegalForm"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Registration no:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/RegistrationNo"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Registry auth.</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/RegistryAuthorised"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Fiscal/tax code:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/FiscalCode"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Other reg.:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/OtherRegistration"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Registry status:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/RegistryStatus"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Previous names:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/PreviousName"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Comments:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/RegistryData/Comments"/>
              </span>
            </td>
          </tr>
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;color:#000000;">LEGAL FILINGS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Bankrup.Filings:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/LegalFilings/BankruptcyFilings"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Court Judgem.:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/LegalFilings/CourtJudgements"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Tax Liens:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/LegalFilings/TaxLiens"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Other:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/LegalFilings/Other"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center">
              <strong>
                <span style="font-size:11pt;color:#000000;">MANAGEMENT &amp; STAFF</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  Key Managers
                </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <xsl:for-each select="Report/ManagementAndStaff/KeyManager">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Name:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Name"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Job Title:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="JobTitle"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Biography:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Biography"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>
          </xsl:for-each>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Comments:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ManagementAndStaff/Comments"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Key Advisors</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Auditor:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ManagementAndStaff/KeyAdvisors/Auditor"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Registered Agent:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                Registered agent
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Solicitor:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ManagementAndStaff/KeyAdvisors/Solicitor"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Insurer:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ManagementAndStaff/KeyAdvisors/Insurer"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Staff</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">No of employees:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ManagementAndStaff/Staff/NoOfEmployees"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">BOARD OF DIRECTORS / OTHER APPOINTMENTS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  Appointments
                </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <xsl:for-each select="Report/BoardOfDirectors/Appointment">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Name:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Name"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Board function:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Boardfunction"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">ID Number:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="IDNumber"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Date appointed:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="DateAppointed"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Address:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Address"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Biography:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Biography"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>
          </xsl:for-each>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Representation</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BoardOfDirectors/Representation"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Comments</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BoardOfDirectors/Comments"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;color:#000000;">SHARE CAPITAL</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Composition</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Authorised:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareCapital/Authorised"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Number/type:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareCapital/Type"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Share value:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareCapital/ShareValue"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Issued:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareCapital/Issued"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Paid-up:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareCapital/Paidup"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Recent changes:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareCapital/RecentChanges"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">SHAREHOLDERS/OWNERS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">How Listed</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareholdersAndOwners/HowListed"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  Composition
                </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>
          </tr>

          <xsl:for-each select="Report/ShareholdersAndOwners/Composition">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Name:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Name"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">No. of shares:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="NoOfShares"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">% of shares:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="PercentageOfShares"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Address:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Address"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Comment:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Comment"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>
          </xsl:for-each>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Changes</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareholdersAndOwners/Changes"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Comments</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/ShareholdersAndOwners/Comments"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">CORPORATE AFFILIATIONS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  Structure
                </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <xsl:for-each select="Report/CorporateAffiliations/Structure">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Name:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Name"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Affiliation type:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="AffliationType"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Address:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Address"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Comment:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Comment"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>
          </xsl:for-each>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Comments</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/CorporateAffiliations/Comments"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">BANKING &amp; FINANCING</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Bankers</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <xsl:for-each select="Report/BankingAndFinancing/Bankers">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Bank name:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="BankName"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Address:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Address"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Relationship type:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="RelationShipType"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Account number:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="AccountNumber"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Contact person:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="ContactPerson"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Comments:</span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span class="value">
                  <xsl:value-of select="Comments"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>

              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;"> </span>
              </td>
            </tr>
          </xsl:for-each>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Financing</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Internal means:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BankingAndFinancing/InternalMeans"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">External means:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BankingAndFinancing/ExternalMeans"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#000000;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Charges &amp; Mortgages</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BankingAndFinancing/ChargesAndMortgages"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                  <br/>
                </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">UCC Filings</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BankingAndFinancing/UCCFillings"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Comments</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/BankingAndFinancing/Comments"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">FINANCIAL ACCOUNTS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Description</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Required to file:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/RequiredToFile"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Source:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/Source"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Presentation:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/Presentation"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Date of accounts:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/DateOfAccounts"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Type of accounts:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/TypeOfAccounts"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Currency:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/Currency"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Exchange rate:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/ExchangeRate"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Multiplier:</span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/FinancialAccounts/FinancialDescription/Multiplier"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>
        </table>

        <xsl:if test="count(Report/FinancialAccounts/Summarised)=1">
          <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <strong>
                  <span style="color:#808080;">Summarised</span>
                </strong>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Date:</span>
              </td>
              <td style="width:322.2pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Date"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Consolidation:</span>
              </td>

              <td style="width:322.2pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Period"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Currency:</span>
              </td>

              <td style="width:322.2pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Currency"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Multiplier:</span>
              </td>

              <td style="width:322.2pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Multiplier"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>

            <xsl:for-each select="Report/FinancialAccounts/Summarised[1]/FinancialField">
              <tr align="left" valign="top">
                <td style="width:93.6pt;text-align:right;">
                  <span style="color:#808080;">
                    <xsl:value-of select="Name"/>
                  </span>
                </td>

                <td style="width:322.2pt;text-align:center;">
                  <span class="value">
                    <xsl:value-of select="format-number(Value, '#,###.##')"/>
                  </span>
                </td>
              </tr>
            </xsl:for-each>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>
          </table>
        </xsl:if>

        <xsl:if test="count(Report/FinancialAccounts/Summarised)=2">
          <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <strong>
                  <span style="color:#808080;">Summarised:</span>
                </strong>
              </td>

              <td style="width:155.7pt;;text-align:center;">

              </td>

              <td style="width:155.7pt;text-align:center;">
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Date:</span>
              </td>

              <td style="width:155.7pt;;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Date"/>
                </span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Date"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">Currency:</span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Currency"/>
                </span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Currency"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">Consolidation:</span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Consolidation"/>
                </span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Consolidation"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">Multiplier:</span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Multiplier"/>
                </span>
              </td>

              <td style="width:155.7pt;text-align:center;">
                <span class="value">
                  <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Multiplier"/>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:155.7pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>

              <td style="width:155.7pt;padding-right:5.4pt;padding-left:5.4pt;">

              </td>
            </tr>

            <xsl:call-template name ="finanse2">
            </xsl:call-template>
          </table>
        </xsl:if>

        <xsl:if test="count(Report/FinancialAccounts/Summarised)=3">
          <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">

              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <strong>
                  <span style="color:#808080;">Summarised</span>
                </strong>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              </td>
            </tr>
          </table>

          <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Date:</span>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Date"/>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Date"/>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[3]/Date"/>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Currency:</span>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Currency"/>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Currency"/>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[3]/Currency"/>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Multiplier:</span>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/Multiplier"/>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[2]/Multiplier"/>
              </td>

              <td style="width:100.2pt;text-align:center;">
                <xsl:value-of select="Report/FinancialAccounts/Summarised[3]/Multiplier"/>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:100.2pt;text-align:center;">

              </td>

              <td style="width:100.2pt;text-align:center;">

              </td>

              <td style="width:100.2pt;text-align:center;">

              </td>
            </tr>

            <xsl:call-template name ="finanse3">
            </xsl:call-template>

          </table>
        </xsl:if>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <p>
                <span style="color:#808080;"> </span>
              </p>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <p> </p>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <a name="financialaccounts_commentary" id="financialaccounts_commentary"></a>

              <p>
                <strong>
                  <span style="color:#808080;">Comments</span>
                </strong>
              </p>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <a name="financialaccounts_commentary_text" id="financialaccounts_commentary_text"></a>

              <p>
                <span style="color:#000000;"> </span>
              </p>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <p>
                <strong>
                  <span style="color:#808080;"> </span>
                </strong>
              </p>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <p>
                <span style="color:#0000FF;"> </span>
              </p>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <p>
                <strong>
                  <span style="color:#808080;"> </span>
                </strong>
              </p>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <p>
                <span style="color:#0000FF;"> </span>
              </p>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">OPERATIONS &amp; HISTORY</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Activities</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Full description:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#000000;">
                <span class="value">
                  <xsl:value-of select="Report/OperationAndHistory/Activities/FullDescription"/>
                </span>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Products/services:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/Activities/Products"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Brands:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/Activities/Brands"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Purchases</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Local:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/Purchases/Local"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Import:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/Purchases/Import"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Sales</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Local:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/Sales/Local"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Export:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/Sales/Export"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Key Events</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/KeyEvents"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Trade Bodies</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/TradeBodies"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Industry Trends</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/OperationAndHistory/IndustryTrends"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">History</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#000000;">
                <span class="value">
                  <xsl:value-of select="Report/OperationAndHistory/History"/>
                </span>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="font-size:9pt;color:#808080;">  </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;color:#000000;">PROPERTY &amp; ASSETS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Premises</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#000000;">
                <span class="value">
                  <xsl:value-of select="Report/PropertyAndAssets/Premises"/>
                </span>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Branches</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/PropertyAndAssets/Branches"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Other Property</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/PropertyAndAssets/OtherProperty"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Capital Equipment</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/PropertyAndAssets/CapitalEquipment"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Intellectual Property</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/PropertyAndAssets/IntellectualProperty"/>
              </span>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;">PAYMENTS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Purchase Terms</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">
                </span>
              </strong>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Local:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Payments/PurchaseTerms/Local"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Imports:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Payments/PurchaseTerms/Import"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Sales Terms</span>
              </strong>
            </td>

            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Local:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Payments/SalesTerms/Local"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;text-align:right;">
              <span style="color:#808080;">Exports:</span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Payments/SalesTerms/Export"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Debt Collections / Judgements</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Payments/DebtCollections"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;">
                <br/>
              </span>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Payment Experience</span>
              </strong>
            </td>
            <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#FF0000;"> </span>
            </td>
          </tr>

          <xsl:for-each select="Report/Payments/PaymentExperiences">
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Supplier Name:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="SupplierName"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Address:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="Address"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Date:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="Date"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Telephone:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="Telephone"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Fax:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="Fax"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Contact Person:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="ContactPerson"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Time Known:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="TimeKnown"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Trade Terms:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="TradeTerms"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Payments Record:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="PaymentRecord"/>
                  </span>
                </span>
              </td>
            </tr>
            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Litigation:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="Litigation"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Average Bill/Month:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="AverageBill"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">Credit Limit:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="CreditLimit"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;text-align:right;">
                <span style="color:#808080;">General Comment:</span>
              </td>
              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;">
                  <span class="value">
                    <xsl:value-of select="GeneralComment"/>
                  </span>
                </span>
              </td>
            </tr>

            <tr align="left" valign="top">
              <td style="width:93.6pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#808080;">
                  <br/>
                </span>
              </td>

              <td style="width:322.2pt;padding-right:5.4pt;padding-left:5.4pt;">
                <span style="color:#000000;"> </span>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="font-size:9pt;color:#808080;"> </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;color:#000000;">INVESTIGATIVE NOTES</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>
            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>
          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Sources:</span>
              </strong>
            </td>
            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/InvestigativeNotes/Sources"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
              <strong>
                <span style="font-size:11pt;color:#000000;">ATTACHMENTS</span>
              </strong>
            </td>
          </tr>
        </table>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span style="color:#808080;"> </span>
            </td>
            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;">
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;">
              <strong>
                <span style="color:#808080;">Attachments:</span>
              </strong>
            </td>
            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;">
              <span class="value">
                <xsl:value-of select="Report/Attachment/Attachments"/>
              </span>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:97.2pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <strong>
                <span style="color:#808080;"> </span>
              </strong>
            </td>

            <td style="width:318.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <p> </p>
            </td>
          </tr>
        </table>

        <p>
          <span style="font-size:10pt;"> </span>
        </p>

        <table cellspacing="0" cellpadding="0pt" style="width:437.4pt;table-layout:fixed;border-collapse:collapse;">
          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-top:1pt solid black;">
              <p>
                <span style="font-size:8pt;"> </span>
              </p>
            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;text-align:center;">
                <strong>
                  <span style="font-size:8pt;color:#808080;">Equifax Ltd. All rights reserved.  </span>

                </strong>

              <p class="Footer">
                <span style="font-size:8pt;color:#808080;">
                  This report is provided for your internal business use only and may not be reproduced, disclosed, distributed or transferred in any manner without permission of Equifax Ltd.
                  Please note that the information in this report is provided to Equifax by third parties and the cost reflects the fact that we do not verify the information. Accordingly, we accept
                  no liability in respect of inaccuracies or omissions (unless caused by our negligence) and our liability in other respects is limited.
                </span>
              </p>

            </td>
          </tr>

          <tr align="left" valign="top">
            <td style="width:426.6pt;padding-right:5.4pt;padding-left:5.4pt;border-bottom:1pt solid black;">
              <p>
                <span style="font-size:8pt;color:#808080;"> </span>
              </p>
            </td>
          </tr>
        </table>

        <p>
          <span style="font-size:10pt;">
            <a name="Ratios3" id="Ratios3"></a>
          </span>
        </p>

        <p>
          <span style="font-size:10pt;"> </span>
        </p>
        <br></br>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="finanse2">
    <xsl:param name="count" select="count(Report/FinancialAccounts/Summarised[1]/FinancialField)"/>
    <xsl:param name="i" select="1"/>
    <xsl:if test="$count+1 > $i">
      <tr align="left" valign="top">
        <td style="width:93.6pt;text-align:right;">
          <span style="color:#808080;">
            <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/FinancialField[$i]/Name"/>
          </span>
        </td>

        <td style="width:155.7pt;text-align:center;">
          <span class="value">
            <xsl:value-of select="format-number(Report/FinancialAccounts/Summarised[1]/FinancialField[$i]/Value, '#,###.##')"/>
          </span>
        </td>

        <td style="width:155.7pt;text-align:center;">
          <span class="value">
            <xsl:value-of select="format-number(Report/FinancialAccounts/Summarised[2]/FinancialField[$i]/Value, '#,###.##')"/>
          </span>
        </td>
      </tr>
      <xsl:call-template name="finanse2">
        <xsl:with-param name="i" select="$i + 1"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template name="finanse3">
    <xsl:param name="count" select="count(Report/FinancialAccounts/Summarised[1]/FinancialField)"/>
    <xsl:param name="i" select="1"/>
    <xsl:if test="$count+1 > $i">

      <tr align="left" valign="top">
        <td style="width:93.6pt;text-align:right;">
          <span style="color:#808080;">
            <xsl:value-of select="Report/FinancialAccounts/Summarised[1]/FinancialField[$i]/Name"/>
          </span>
        </td>

        <td style="width:100.2pt;text-align:center;">
          <span class="value">
            <xsl:value-of select="format-number(Report/FinancialAccounts/Summarised[1]/FinancialField[$i]/Value, '#,###.##')"/>
          </span>
        </td>

        <td style="width:100.2pt;text-align:center;">
          <span class="value">
            <xsl:value-of select="format-number(Report/FinancialAccounts/Summarised[2]/FinancialField[$i]/Value, '#,###.##')"/>
          </span>
        </td>

        <td style="width:100.2pt;text-align:center;">
          <span class="value">
            <xsl:value-of select="format-number(Report/FinancialAccounts/Summarised[3]/FinancialField[$i]/Value, '#,###.##')"/>
          </span>
        </td>
      </tr>

      <xsl:call-template name="finanse3">
        <xsl:with-param name="i" select="$i + 1"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>