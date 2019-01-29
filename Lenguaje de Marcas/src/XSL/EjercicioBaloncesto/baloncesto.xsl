<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/ligaEndesa">
    <html>
      <head>
        <title>ligaEndesa</title>
      </head>
      <style type="text/css">
        body {
          margin: 50px;
          padding: 0px;
          background: #2372DE;
          font-family: 'Open Sans', sans-serif;
          font-size: 11pt;
          color: #FFFFFF;
          text-align:center;
        }
      </style>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  
  </xsl:template>
   <xsl:template match="fechaCreacion">
    <xsl:value-of select="fechaCreacion"/>
  </xsl:template>
  
  <xsl:template match="nombreCompleto">
    <xsl:value-of select="nombreCompleto"/>
  </xsl:template>
  
  <xsl:template match="equipos">
    <xsl:value-of select="equipos"/>
  </xsl:template>

</xsl:stylesheet>