<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template name="form-buttons" match="*" mode="form-buttons">
    <xsl:param name="use-fa" select="'true'"/>
    <xsl:param name="vertical" select="'true'"/>
    <xsl:param name="fixed-target"/>
    <xsl:param name="fixed-btn-class"/>

    <div class="box-footer gen-form-footer">
      <div class="pull-right gen-form-btns" role="group">
        <xsl:apply-templates select="." mode="gen-buttons">
          <xsl:with-param name="use-fa" select="$use-fa"/>
          <xsl:with-param name="vertical" select="$vertical"/>
          <xsl:with-param name="type" select="'tools-bar'"/>
          <xsl:with-param name="fixed-target" select="$fixed-target"/>
          <xsl:with-param name="fixed-btn-class" select="$fixed-btn-class"/>
        </xsl:apply-templates>
      </div>
    </div>
  </xsl:template>

  <xsl:template name="form-buttons-2" match="*" mode="form-buttons-2">
    <xsl:param name="use-fa" select="'true'"/>
    <xsl:param name="vertical" select="'true'"/>
    <xsl:param name="fixed-target"/>
    <xsl:param name="fixed-btn-class"/>

    <xsl:if test="./item">
      <div class="card-footer gen-form-footer">
        <div class="gen-form-btns d-flex justify-content-end" role="group">
          <xsl:apply-templates select="." mode="igrp-buttons">
            <xsl:with-param name="use-fa" select="$use-fa"/>
            <xsl:with-param name="vertical" select="$vertical"/>
            <xsl:with-param name="type" select="'tools-bar'"/>
            <xsl:with-param name="fixed-target" select="$fixed-target"/>
            <xsl:with-param name="fixed-btn-class" select="$fixed-btn-class"/>
          </xsl:apply-templates>
        </div>
      </div>
    </xsl:if>
  </xsl:template>

  <!--LOOKUP BUTTON-->
  <xsl:template name="lookup-tool">  
      <xsl:param name="page" select="'LOOKUP'" />
      <xsl:param name="action" select="''" />
      <xsl:param name="name" select="''" />
      <xsl:param name="js_lookup" select="''" />    
      <xsl:param name="ad_hoc" select="'0'" />
      <xsl:param name="input-id" select="$name"/>
      <xsl:param name="btnClass" select="'default'"/>
      <xsl:param name="lookupClass" select="''"/>
      <xsl:param name="getparams" select="''"/>
      
      <span href="#" input-rel="{$input-id}" class="input-group-text gen-date-icon IGRP_lookupPopup {$lookupClass}" ctx_param="{$name}">
        <xsl:if test="$getparams != ''">
          <xsl:attribute name="getparams"><xsl:value-of select="$getparams"/></xsl:attribute>
        </xsl:if>
        <xsl:call-template name="page-nav">
           <xsl:with-param name="action" select="$action" />
           <xsl:with-param name="page" select="$page" />
           <xsl:with-param name="linkextra" select="$js_lookup" />
           <xsl:with-param name="ad_hoc" select="$ad_hoc" />
          </xsl:call-template> 
          <span class="">
            <i class="ri-search-line"></i>
          </span>
      </span>
      
  </xsl:template>
  
  <!--locator BUTTON-->
  <xsl:template name="locator-tool">  
      <xsl:param name="page" select="'LOOKUP'" />
      <xsl:param name="action" select="''" />
      <xsl:param name="name" select="''" />
      <xsl:param name="js_lookup" select="''" />    
      <xsl:param name="ad_hoc" select="'0'" />
      <xsl:param name="input-id" select="$name"/>
      <xsl:param name="btnClass" select="'default'"/>
      <xsl:param name="mapName" select="''"/>
      <xsl:param name="widgetTitle" select="''"/>
      
      <span href="#" input-rel="{$input-id}" class="gis-locator input-group-btn" input-name="{$name}" target="gis:getCoordinates" widget-title="{$widgetTitle}" map-name="{$mapName}">
        <xsl:call-template name="page-nav">
           <xsl:with-param name="action" select="$action" />
           <xsl:with-param name="page" select="$page" />
           <xsl:with-param name="linkextra" select="$js_lookup" />
           <xsl:with-param name="ad_hoc" select="$ad_hoc" />
          </xsl:call-template> 
          <span class="btn btn-{$btnClass}">
            <i class="fa fa-search"></i>
          </span>
      </span>
      
  </xsl:template>

  <xsl:template mode="row-hidden-fields" match="*">
    
    <!-- <xsl:for-each select="hidden">
      <input type="hidden" name="{@name}" id="{@name}" value="{.}">
          <xsl:if test="@rel">
            <xsl:attribute name="rel">
              <xsl:value-of select="concat('F_',@rel)"/>
              </xsl:attribute>
          </xsl:if>
      </input>
    </xsl:for-each> --> 

  </xsl:template>

  <xsl:template name="igrp-fields-validation">
    
  </xsl:template>
  



</xsl:stylesheet>