<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
<title>User Information</title>

<style>

body {
    font-family: Arial, sans-serif;
}

h2 {
    text-align: center;
}

table {
    border-collapse: collapse;
    margin: auto;
    width: 80%;
}

th {
    border: 1px solid black;
    padding: 8px;
    background-color: #e6e6e6;  /* light grey instead of green */
}

td {
    border: 1px solid black;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

</style>

</head>

<body>

<h2>User Information Table</h2>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Role</th>
<th>Department</th>
<th>Email</th>
</tr>

<xsl:for-each select="users/user">
<tr>
<td><xsl:value-of select="id"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="role"/></td>
<td><xsl:value-of select="department"/></td>
<td><xsl:value-of select="email"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>