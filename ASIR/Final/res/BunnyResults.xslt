<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">

	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>	

	<xsl:template match="/">

		<html>
	
			<head>
				<title>Respuestas al Cuestionario de Conejos</title>
				<link rel="stylesheet" type="text/css" href="../BunnyForm.css"/>	
			</head>
		
			<body>
				<div class="main">
					<h1>Cuestionario de Conejos</h1>
					<h2>A si que no eres un experto en conejos...</h2>
					<hr/>
					<form action="https://rabbit.org/basic-rabbit-facts/">
					<xsl:for-each select="formulario/pregunta">
						<fieldset>
							<h2 class="enunciado">
								<xsl:value-of select="enunciado"/>
							</h2>
							<label>
								<xsl:for-each select="opcion[@correcto='yes']">
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
							</label>
						</fieldset>
							<br/>
					</xsl:for-each>
					<input type="submit" value="Mas curiosidades!" />
					</form>
				</div>
			</body>
			
		</html>
	
	</xsl:template>
	
</xsl:stylesheet>
