<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html>
	<head>
		<title>RSS</title>
		<style>
		body{
			background-color:#222222;
		}
		main{
			background-color:#FFFFFF;
			color:#000000;
		}
		</style>
	</head>
	
	<body> 
		<main>
			<h1>RSS</h1>
			<h2>Una forma de redibir informacion directamente en tu navegador</h2>
			<br/>
			<xsl:for-each select="rss/channel/item">
					<h2><xsl:value-of select="title"/></h2>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="link"/>	        
						</xsl:attribute>
					</a>
					<p>
						<xsl:value-of select="Descripcion"/>
					</p>
			</xsl:for-each>
		</main>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>