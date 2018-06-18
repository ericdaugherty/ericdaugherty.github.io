<?xml version="1.0" encoding="UTF-8"?>
<?xmlspysamplexml C:\dev\transitschedule\upw-save.xml?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output omit-xml-declaration="yes" method="text" encoding="UTF-8"/>
	<xsl:template match="/">
		
		<!-- Output Line 1 - Station Names -->
		<xsl:apply-templates select="schedule/route/inbound/stops"/>
		
		<!-- Output Line 2 - Days -->
		<xsl:text>Mon-Fri</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>Saturday</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>Sunday</xsl:text>
		<xsl:text>&#10;</xsl:text>
		
		<!-- Output Line 3 - Index -->
		<xsl:text>4</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>?</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>?</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>?</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>?</xsl:text>
		<xsl:text>&#x9;</xsl:text>
		<xsl:text>?</xsl:text>
		<xsl:text>&#10;</xsl:text>
		
		<!-- Ouput Inbound Times -->
		<xsl:apply-templates select="schedule/route/inbound/trains/train" />
		
		<!-- Output Outbound Times -->
		<xsl:apply-templates select="schedule/route/outbound/trains/train" />

	</xsl:template>
	
	<xsl:template match="train">
		<xsl:for-each select="stop">
			<xsl:value-of select="time"/>
			<xsl:if test="not (position()=last())">
				<xsl:text>&#9;</xsl:text>
			</xsl:if>

		</xsl:for-each>
		<xsl:text>&#10;</xsl:text>
	</xsl:template>
	
	<xsl:template match="stops">
		<xsl:if test="../days = 'M-F'">
		<xsl:for-each select="stop">
			<xsl:value-of select="@name"/>
			<xsl:if test="not (position()=last())">
				<xsl:text>&#9;</xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:text>&#10;</xsl:text>
				</xsl:if>
	</xsl:template>
</xsl:stylesheet>
