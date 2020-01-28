<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
<xsl:variable name="id_livre" select="Bibliographie/Livres/Livre/@id"/>
	<xsl:template match="/">
		<Livres>
			<xsl:for-each select="Bibliographie/Livres/Livre">
				<xsl:variable name="id" select="@id" />
				<Livre id="{$id}" couverture_id="{@couverture}">
					<General>
						<Nom><xsl:value-of select="Titre" /></Nom>
						<Auteur><xsl:value-of select="Auteur" /></Auteur>
						<Format><xsl:value-of select="Format" /></Format>
						<Prix><xsl:value-of select="../../Gestion/Stock[@lref = $id]/Prix/text()" /></Prix>
						<Disponibilite><xsl:value-of select="../../Gestion/Stock[@lref = $id]/Disponibilite/text()" /></Disponibilite>
					</General>
					<Informations>
						<NombreDePages><xsl:value-of select="NombreDePages" /></NombreDePages>
						<Taille><xsl:value-of select="Taille" /></Taille>
						<Illustration><xsl:value-of select="Illustration" /></Illustration>
						<xsl:for-each select="Direction">
							<Direction><xsl:value-of select="." /></Direction>
						</xsl:for-each>
						<xsl:for-each select="Preface">
							<Direction><xsl:value-of select="." /></Direction>
						</xsl:for-each>
						<Postface><xsl:value-of select="Postface" /></Postface>
						<Traduction><xsl:value-of select="Traduction" /></Traduction>
						<Editeur><xsl:value-of select="Editeur" /></Editeur>
						<ISBN><xsl:value-of select="ISBN" /></ISBN>
					</Informations>
				</Livre>
			</xsl:for-each>
		</Livres>
	</xsl:template>
</xsl:stylesheet>
