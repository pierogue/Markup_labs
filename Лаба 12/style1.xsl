<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
<head><title>Note</title>
</head>
<body bgcolor="#ff9900">
 <table border="1">
 <tr bgcolor="#9acd32">
 <th>Получатель</th>
 <th>Отправитель</th>
 </tr>
 <xsl:for-each select="body/note">
 <xsl:sort select="to" order="ascending"/>
 <tr>
 <td><xsl:value-of select="to"/></td>
 <td><xsl:value-of select="from"/></td>
 </tr>
 </xsl:for-each>
 </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>