<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<title>MathJax</title>
				<script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.2/MathJax.js?config=TeX-MML-AM_CHTML'></script>
			</head>
			<body>
				<math>
					<xsl:apply-templates/>
				</math>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="строка">
		<mrow>
		 	<xsl:apply-templates/>
		</mrow>
	</xsl:template>

	<xsl:template match="операнд">
		<mi>
			<xsl:value-of select="."/>
		</mi>
	</xsl:template>

	<xsl:template match="оператор">
		<mo>
			<xsl:value-of select="."/>
		</mo>
	</xsl:template>

	<xsl:template match="корень">
		<msqrt>
			<xsl:apply-templates/>
		</msqrt>
	</xsl:template>

	<xsl:template match="дробь">
		<mfrac>
			<xsl:apply-templates/>
		</mfrac>
	</xsl:template>

	<xsl:template match="число">
		<mn>
			<xsl:value-of select="."/>
		</mn>
	</xsl:template>

	<xsl:template match="низверх">
		<msubsup>
			<xsl:apply-templates/>
		</msubsup>
	</xsl:template>

	<xsl:template match="верх">
		<msup>
			<xsl:apply-templates/>
		</msup>
	</xsl:template>

	<xsl:template match="низ">
		<msub>
			<xsl:apply-templates/>
		</msub>
	</xsl:template>
</xsl:stylesheet>