<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/navidad">
	<html>
      <head>
        <title>Navidad</title>
      </head>
      <body>
      	<xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
	  <xsl:template match="almuerzo">
	  		<ul>
	        	<li>PrimerPlato: <xsl:value-of select="primerPlato"/></li>
	        	<li>SegundoPlato: <xsl:value-of select="segundoPlato"/></li>
	        	<li>Postre: <xsl:value-of select="postre"/></li>
	        	<li>Bebida: <xsl:value-of select="bebida"/></li>
	        	<xsl:apply-templates select = "sobremesa"/>
		    </ul>
	  </xsl:template>
	  
	  <xsl:template match = "sobremesa">
	  		<ol>
	  			<li>Bebida <xsl:value-of select = "primeraCopa"/></li>
	  			<li>Bebida <xsl:value-of select = "segundaCopa"/></li>
	  			<li>Bebida <xsl:value-of select = "terceraCopa"/></li>
	  		</ol>
	  </xsl:template>
	  
	  <xsl:template match = "primerPlato"/>
	  <xsl:template match = "segundoPlato"/>
	  <xsl:template match = "postre"/>
	  <xsl:template match = "bebida"/>
</xsl:stylesheet>