<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Fiches</title>
			</head>
			<body>
				<h1>Fiches</h1>
				<h2>Liens</h2>
				<xsl:for-each select="Fiches/Fiche">
					<p><a href="#{@id}"><xsl:value-of select="Entete/Livre" /></a></p>
				</xsl:for-each>
				<br />
				<br />
				<h2>Collection</h2>
				<xsl:for-each select="Fiches/Fiche">
					<div id="{@id}">
					<h3>Entete</h3>
					<p>Livre : <xsl:value-of select="Entete/Livre" /></p>
					<p>Auteur : <xsl:value-of select="Entete/Auteur" /></p>
					<p>DateDeParution : <xsl:value-of select="Entete/DateDeParution" /></p>
					<p>Parution : <xsl:value-of select="Entete/Parution" /></p>
					<p>Prix : <xsl:value-of select="Entete/Prix" /></p>
					<p>Disponibilite : <xsl:value-of select="Entete/Disponibilite" /></p>
					<h3>Avis</h3>
					<p><b><xsl:value-of select="Avis/@source" /></b> <xsl:value-of select="Avis" /></p>
					<h3>Details</h3>
					<p>Nombre de pages : <xsl:value-of select="Details/NombreDePages"/></p>
					<p>Taille : <xsl:value-of select="Details/Taille"/></p>
					<p>Illustration : <xsl:value-of select="Details/Illustration"/></p>
					<p>Poids : <xsl:value-of select="Details/Poids"/></p>
					<xsl:for-each select="Details/Direction">
						<p>Direction : <xsl:value-of select="." /></p>
					</xsl:for-each>
					<xsl:for-each select="Details/Preface">
						<p>Preface : <xsl:value-of select="." /></p>
					</xsl:for-each>
					<p>Postface : <xsl:value-of select="Details/Postface"/></p>
					<p>Traduction : <xsl:value-of select="Details/Traduction"/></p>
					<p>Editeur : <xsl:value-of select="Details/Editeur"/></p>
					<p>Collection : <xsl:value-of select="Details/Collection"/></p>
					<p>ISBN : <xsl:value-of select="Details/ISBN"/></p>
					<br />
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
