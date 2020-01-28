<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"/>
<xsl:variable name="id_livre" select="Bibliographie/Livres/Livre/@id"/>
	<xsl:template match="/">
		<Fiches dateGeneration="true">
			<xsl:for-each select="Bibliographie/Livres/Livre">
				<xsl:variable name="id" select="@id" />
				<Fiche id="{$id}">
					<Entete>
						<Livre><xsl:value-of select="Titre" /></Livre>
						<Auteur><xsl:value-of select="Auteur" /></Auteur>
						<Parution><xsl:value-of select="DateDeParution" /></Parution>
						<Format><xsl:value-of select="Format" /></Format>
						<Prix><xsl:value-of select="../../Gestion/Stock[@lref = $id]/Prix/text()" /></Prix>
						<Disponibilite><xsl:value-of select="../../Gestion/Stock[@lref = $id]/Disponibilite/text()" /></Disponibilite>
					</Entete>
					<xsl:variable name="source" select="../../Commentaires/Avis[@lref = $id]/@source" />
					<Avis source="{$source}"> <xsl:value-of select="../../Commentaires/Avis[@lref = $id]/text()"/></Avis>
					<Details>
						<NombreDePages><xsl:value-of select="NombreDePages" /></NombreDePages>
						<Taille><xsl:value-of select="Taille" /></Taille>
						<Illustration><xsl:value-of select="Illustration" /></Illustration>
						<Poids><xsl:value-of select="Poids" /></Poids>
						<xsl:for-each select="Direction">
							<Direction><xsl:value-of select="." /></Direction>
						</xsl:for-each>
						<xsl:for-each select="Preface">
							<Direction><xsl:value-of select="." /></Direction>
						</xsl:for-each>
						<Postface><xsl:value-of select="Postface" /></Postface>
						<Traduction><xsl:value-of select="Traduction" /></Traduction>
						<Editeur><xsl:value-of select="Editeur" /></Editeur>
						<Collection><xsl:value-of select="Collection" /></Collection>
						<ISBN><xsl:value-of select="ISBN" /></ISBN>
					</Details>
				</Fiche>
			</xsl:for-each>
		</Fiches>
	</xsl:template>
</xsl:stylesheet>
