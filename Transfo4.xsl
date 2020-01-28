<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Livres</title>
			</head>
			<body>
				<h1 style="color:blue;">Livres</h1>
				<h2 style="color:red;">Liens</h2>
				<xsl:for-each select="Livres/Livre">
					<p><a href="#{@id}"><xsl:value-of select="General/Nom" /></a></p>
				</xsl:for-each>
				<br />
				<br />
				<h2 style="color:red;">Collection</h2>
				<xsl:for-each select="Livres/Livre">
					<div id="{@id}">
            <h3>Couverture</h3>
            <img src="Couvertures/{@couverture_id}" width="300" height="300"/>
            <br />
  					<h3>General</h3>
  					<p>Nom : <xsl:value-of select="General/Nom" /></p>
  					<p>Auteur : <xsl:value-of select="General/Auteur" /></p>
  					<p>Prix : <xsl:value-of select="General/Prix" /></p>
  					<p>Disponibilite : <xsl:value-of select="General/Disponibilite" /></p>
  					<h3>Informations</h3>
  					<p>Nombre de pages : <xsl:value-of select="Informations/NombreDePages"/></p>
  					<p>Taille : <xsl:value-of select="Informations/Taille"/></p>
  					<p>Illustration : <xsl:value-of select="Informations/Illustration"/></p>
  					<xsl:for-each select="Informations/Direction">
  						<p>Direction : <xsl:value-of select="." /></p>
  					</xsl:for-each>
  					<xsl:for-each select="Informations/Preface">
  						<p>Preface : <xsl:value-of select="." /></p>
  					</xsl:for-each>
  					<p>Postface : <xsl:value-of select="Informations/Postface"/></p>
  					<p>Traduction : <xsl:value-of select="Informations/Traduction"/></p>
  					<p>Editeur : <xsl:value-of select="Informations/Editeur"/></p>
  					<p>ISBN : <xsl:value-of select="Informations/ISBN"/></p>
  					<br />
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
