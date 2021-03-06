<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 ScriptNS0" version="1.0" xmlns:ns0="http://MapWithAssmeblyReference.BarSchema" xmlns:s0="http://MapWithAssmeblyReference.FooSchema" xmlns:ScriptNS0="http://schemas.microsoft.com/BizTalk/2003/ScriptNS0">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Foo" />
  </xsl:template>
  <xsl:template match="/s0:Foo">
    <xsl:variable name="var:v3" select="string(Val1/text())" />
    <xsl:variable name="var:v4" select="string(Val2/text())" />
    <ns0:Bar>
      <xsl:variable name="var:v1" select="ScriptNS0:AddTodayToValue(string(Val1/text()))" />
      <Val1>
        <xsl:value-of select="$var:v1" />
      </Val1>
      <xsl:variable name="var:v2" select="ScriptNS0:AddTodayToValue(string(Val2/text()))" />
      <Val2>
        <xsl:value-of select="$var:v2" />
      </Val2>
      <xsl:variable name="var:v5" select="ScriptNS0:ConcatValues($var:v3 , $var:v4)" />
      <Val1Val2>
        <xsl:value-of select="$var:v5" />
      </Val1Val2>
    </ns0:Bar>
  </xsl:template>
</xsl:stylesheet>