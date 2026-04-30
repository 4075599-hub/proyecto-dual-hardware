<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Inventario (Versión XML/XSL)</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f9; padding: 20px; }
                    h2 { color: #333; text-align: center; }
                    table { width: 80%; margin: 0 auto; border-collapse: collapse; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
                    th { background-color: #0056b3; color: white; padding: 12px; text-align: left; }
                    td { padding: 10px; border-bottom: 1px solid #ddd; background-color: white; }
                    tr:hover td { background-color: #f1f1f1; }
                </style>
            </head>
            <body>
                <h2>Inventario de Hardware (Versión XML/XSL)</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Tipo</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Precio (€)</th>
                    </tr>
                    <!-- Bucle que recorre cada dispositivo del XML -->
                    <xsl:for-each select="inventario/dispositivo">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="tipo"/></td>
                            <td><xsl:value-of select="marca"/></td>
                            <td><xsl:value-of select="modelo"/></td>
                            <td><xsl:value-of select="precio"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>