<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8"/>
    
    <xsl:template match="/Libros">
        <html>
            <head>
                <title>Lista de Libros</title>
            </head>
            <body>
                <h1>Lista de Libros</h1>
                <table border="1">
                    <tr>
                        <th>Código</th>
                        <th>Título</th>
                        <th>Editorial</th>
                        <th>Edición</th>
                        <th>ISBN</th>
                        <th>Número de Páginas</th>
                        <th>Autor</th>
                        <th>Fecha de Nacimiento</th>
                        <th>Nacionalidad</th>
                    </tr>
                    <xsl:apply-templates select="libro"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="libro">
        <tr>
            <td><xsl:value-of select="Cod_Libro"/></td>
            <td><xsl:value-of select="Titulo"/></td>
            <td><xsl:value-of select="Editorial"/></td>
            <td><xsl:value-of select="Edicion"/></td>
            <td><xsl:value-of select="ISBN"/></td>
            <td><xsl:value-of select="NumPaginas"/></td>
            <xsl:apply-templates select="Autores/autor"/>
        </tr>
    </xsl:template>
    
    <xsl:template match="autor">
        <td><xsl:value-of select="concat(Nombre, ' ', Apellidos)"/></td>
        <td><xsl:value-of select="FechaNacimiento"/></td>
        <td><xsl:value-of select="Nacionalidad"/></td>
    </xsl:template>
</xsl:stylesheet>