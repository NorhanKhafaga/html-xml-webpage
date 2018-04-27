<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!--want to transform from xmlpage.xml file to html table-->
    <xsl:template match="/">
        <html>
            <body>
                <h2>Thesis Information</h2>
                <table border="1" border-radius="20px">
                    <tr bgcolor="#e1e1e1">
                        <th>Title</th>
                        <th>Author</th>
                        <th>email</th>
                        <th>university</th>
                        <th>year</th>
                        
                    </tr>
                    <xsl:for-each select="thesis/frontmatter">
                        <tr>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <xsl:value-of select="authors/author/@name"/>
                            </td>
                            <td>
                                <xsl:value-of select="authors/email"/>
                            </td>
                             <td>
                                <xsl:value-of select="university"/>
                            </td>
                               <td>
                                <xsl:value-of select="year"/>
                            </td>
                         
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>