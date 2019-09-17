<?xml version="1.0" encoding="windows-1252"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes" omit-xml-declaration="no"/>
    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&#13;</xsl:text>
        <root version='3.3' release='5|CoreRPG:4'>
            <xsl:text disable-output-escaping="yes">&#13;</xsl:text>
            <character><xsl:text disable-output-escaping="yes">&#13;</xsl:text>

                <!-- Character Attributes -->
                <xsl:for-each select="document/public/character/attributes/attribute">
                    <xsl:choose>
                        <xsl:when test="contains(@value, '-')">
                             <xsl:text disable-output-escaping="yes">&#13;&lt;</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes"> type="dice"&gt;<xsl:value-of select="substring-before(@value, '-')" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">Adjustment type="number"&gt;-<xsl:value-of select="substring-after(@value, '-')" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">Adjustment&gt;&#13;</xsl:text>
                        </xsl:when>
                        <xsl:when test="contains(@value, '+')">
                             <xsl:text disable-output-escaping="yes">&#13;&lt;</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes"> type="dice"&gt;<xsl:value-of select="substring-before(@value, '+')" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">Adjustment type="number"&gt;+<xsl:value-of select="substring-after(@value, '+')" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">Adjustment&gt;&#13;</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                             <xsl:text disable-output-escaping="yes">&#13;&lt;</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes"> type="dice"&gt;<xsl:value-of select="@value" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">Adjustment type="number"&gt;0</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/</xsl:text><xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' /><xsl:text disable-output-escaping="yes">Adjustment&gt;&#13;</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>

                <!-- Character Name -->
                <name type="string"><xsl:value-of select="document/public/character/@name" /></name><xsl:text disable-output-escaping="yes">&#13;</xsl:text>

                <!-- Character Skills -->
                <skills><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
                <xsl:for-each select="document/public/character/skills/skill">
                    <xsl:choose>
                        <xsl:when test="number(position()) &lt; 10">
                            <xsl:text disable-output-escaping="yes">&lt;id-0000</xsl:text><xsl:value-of select="position()" /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text disable-output-escaping="yes">&lt;id-000</xsl:text><xsl:value-of select="position()" /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>


                    <name type="string"><xsl:text><xsl:value-of select="@name" /></xsl:text>
                    </name><xsl:text disable-output-escaping="yes">&#13;</xsl:text>

                    
                    <xsl:choose>
                        <xsl:when test="contains(@value, '-')">
                             <xsl:text disable-output-escaping="yes">&lt;skill</xsl:text><xsl:text disable-output-escaping="yes"> type="dice"&gt;<xsl:value-of select="substring-before(@value, '-')" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/skill></xsl:text><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;skillmod</xsl:text><xsl:text disable-output-escaping="yes"> type="number"&gt;-<xsl:value-of select="substring-after(@value, '-')" /></xsl:text><xsl:text disable-output-escaping="yes">&lt;skillmod&gt;&#13;</xsl:text>
                        </xsl:when>
                        <xsl:when test="contains(@value, '+')">
                             <xsl:text disable-output-escaping="yes">&lt;skill</xsl:text><xsl:text disable-output-escaping="yes"> type="dice"&gt;<xsl:value-of select="substring-before(@value, '+')" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/skill></xsl:text><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;skillmod</xsl:text><xsl:text disable-output-escaping="yes"> type="number"&gt;+<xsl:value-of select="substring-after(@value, '+')" /></xsl:text><xsl:text disable-output-escaping="yes">&lt;skillmod&gt;&#13;</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>     
                            <xsl:text disable-output-escaping="yes">&lt;skill</xsl:text><xsl:text disable-output-escaping="yes"> type="dice"&gt;<xsl:value-of select="@value" /></xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;/skill></xsl:text><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
                             <xsl:text disable-output-escaping="yes">&lt;skillmod</xsl:text><xsl:text disable-output-escaping="yes"> type="number"&gt;0&lt;skillmod&gt;</xsl:text><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
                        </xsl:otherwise>

                    </xsl:choose>

                    <link type="windowreference">
					<class>sw_referenceskill</class>
					<recordname>reference.skills.<xsl:value-of select='translate(@name, "ABCDEFGHIJKLMNOPQRSTUVWXYZ", "abcdefghijklmnopqrstuvwxyz")' />@&#42;</recordname>
				    </link><xsl:text disable-output-escaping="yes">&#13;</xsl:text>


                    <xsl:choose>
                        <xsl:when test="number(position()) &lt; 10">
                            <xsl:text disable-output-escaping="yes">&lt;/id-0000</xsl:text><xsl:value-of select="position()" /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text disable-output-escaping="yes">&lt;/id-000</xsl:text><xsl:value-of select="position()" /><xsl:text disable-output-escaping="yes">&gt;&#13;</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>


                </xsl:for-each>
                </skills><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
         
            </character><xsl:text disable-output-escaping="yes">&#13;</xsl:text>
        </root>
    </xsl:template>
</xsl:stylesheet>
