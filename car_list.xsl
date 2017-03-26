<?xml version="1.0" encoding ="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<!-- looping for each car -->
				<xsl:for-each select="list/car">
				<div class="panel panel-item">
					<div class="row">
					<div class="large-4 columns" >
						<div class="row">
							<a class="fancybox">
								<xsl:attribute name="href">
									<xsl:value-of select="img1"/>
								</xsl:attribute>
								<img class="car">
									<xsl:attribute name="src">
										<xsl:value-of select="img1"/>
									</xsl:attribute>
								</img>
							</a>
							
						</div>
						<div class="row test-slick">
							<img class="car-mini">
									<xsl:attribute name="src">
										<xsl:value-of select="img1"/>
									</xsl:attribute>
								</img>
							
								<img class="car-mini">
									<xsl:attribute name="src">
										<xsl:value-of select="img2"/>
									</xsl:attribute>
								</img>
							
								<img class="car-mini">
									<xsl:attribute name="src">
										<xsl:value-of select="img3"/>
									</xsl:attribute>
								</img>
							
								<img class="car-mini">
									<xsl:attribute name="src">
										<xsl:value-of select="img4"/>
									</xsl:attribute>
								</img>
							
						</div>
					</div>
					<div class="car-all large-8 columns" >
						<div class="row">
							<h3 class="car-title"><xsl:value-of select="year "/><xsl:value-of select="make"/> <xsl:value-of select="mode"/> <xsl:value-of select="variant"/></h3>
						</div>
						<div class="row car-details">
							<xsl:value-of select="mileage"/> | <xsl:value-of select="capacity"/> | <xsl:value-of select="transmission"/> | <xsl:value-of select="body"/> | <xsl:value-of select="location"/>
						</div>
						<div class="row car-price">
							<xsl:value-of select="price"/>
						</div>
						<div class="row car-desc">
							<xsl:value-of select="description"/>
						</div>
						<div class="row car-owner">
								<xsl:if test="ownerno=1">
									<i class="fa fa-user owner-icon"></i>
								</xsl:if>
								<xsl:if test="ownerno=2">
									<i class="fa fa-sitemap owner-icon"></i>
								</xsl:if>
							<xsl:value-of select="name"/> | <a target="_blank">
								<xsl:attribute name="href">
									<xsl:value-of select="link"/>
								</xsl:attribute>
							<xsl:value-of select="owner"/></a>
						</div>
					</div>
				</div>
			</div>

				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
