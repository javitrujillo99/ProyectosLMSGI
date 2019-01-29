<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/juegoTanques">
  	<html>
  		<head>
  			<title>Tanques</title>
  			<xsl:call-template name = "css"/>
  		</head>
  		<body>
  			<table width = "95%" border = "1">
  				<tr>
  					<th></th>
  					<th>Jugador</th>
  					<th>Jugada</th>
  				</tr>
  				<xsl:apply-templates select = "jugadasDescritas/jugada"/>
			</table>
  		</body>
  	</html>
  </xsl:template>
  
  <xsl:template name="css">
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
      
      .tituloTabla {
      font-weight: bold;   
      text-align: center;
      }
    </style>
  </xsl:template>
  <xsl:template match = "jugada">
  	<tr>
  		<td><xsl:valuexsl:value-of select="position()"/></td>
  		<td><xsl:valuexsl:value-of select="@jugador"/></td>
  		<td><xsl:valuexsl:value-of select="@desc"/></td>
  	</tr>
  </xsl:template>
  
</xsl:stylesheet>