<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/><xsl:template match="/"><html><head><xsl:call-template name="IGRP-head"/><style/></head><body class="{$bodyClass} sidebar-off"><xsl:call-template name="IGRP-topmenu"/><form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data"><div class="container-fluid"><div class="row"><xsl:call-template name="IGRP-sidebar"/><div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents"><div class="content"><div class="row row-msg"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/></div></div></div><div class="row " id="row-5c428392"><div class="gen-column col-sm-3"><div class="gen-inner"><xsl:if test="rows/content/sectionheader_1"><section class="content-header gen-container-item " gen-class="" item-name="sectionheader_1"><h2 class="disable-output-escaping"><xsl:value-of disable-output-escaping="yes" select="rows/content/sectionheader_1/fields/sectionheader_1_text/value"/></h2></section></xsl:if></div></div><div class="gen-column col-sm-6"><div class="gen-inner"><xsl:if test="rows/content/form_1"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_1"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_1/fields"/><xsl:if test="rows/content/form_1/fields/username"><div class="form-group col-sm-12   gen-fields-holder" item-name="username" item-type="text" required="required"><label for="{rows/content/form_1/fields/username/@name}"><span><xsl:value-of select="rows/content/form_1/fields/username/label"/></span></label><input type="text" value="{rows/content/form_1/fields/username/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/username/@name}" name="{rows/content/form_1/fields/username/@name}" disablehtml="true" disabled="disabled" required="required" maxlength="250" placeholder="{rows/content/form_1/fields/username/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/username"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_1/fields/nafa"><div item-name="nafa" class="box-head subtitle gen-fields-holder" text-color="1"><span><xsl:value-of select="rows/content/form_1/fields/nafa/label"/></span></div></xsl:if><xsl:if test="rows/content/form_1/fields/nova_senha"><div class="form-group col-sm-6   gen-fields-holder" item-name="nova_senha" item-type="password" required="required"><label for="{rows/content/form_1/fields/nova_senha/@name}"><span><xsl:value-of select="rows/content/form_1/fields/nova_senha/label"/></span></label><input type="password" value="{rows/content/form_1/fields/nova_senha/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/nova_senha/@name}" name="{rows/content/form_1/fields/nova_senha/@name}" required="required" maxlength="50" placeholder="{rows/content/form_1/fields/nova_senha/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/nova_senha"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_1/fields/confirmar_nova_senha"><div class="form-group col-sm-6   gen-fields-holder" item-name="confirmar_nova_senha" item-type="password" required="required"><label for="{rows/content/form_1/fields/confirmar_nova_senha/@name}"><span><xsl:value-of select="rows/content/form_1/fields/confirmar_nova_senha/label"/></span></label><input type="password" value="{rows/content/form_1/fields/confirmar_nova_senha/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/confirmar_nova_senha/@name}" name="{rows/content/form_1/fields/confirmar_nova_senha/@name}" required="required" maxlength="50" placeholder="{rows/content/form_1/fields/confirmar_nova_senha/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/confirmar_nova_senha"/></xsl:call-template></input></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_1/tools-bar" mode="form-buttons"/></div></xsl:if><xsl:if test="rows/content/form_2"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_2"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_2/fields"/><xsl:if test="rows/content/form_2/fields/sign_in"><div class="form-group col-sm-7 pull-right gen-fields-holder" item-name="sign_in" item-type="link"><a href="{rows/content/form_2/fields/sign_in/value}" class="link btn btn-link form-link" sharpadbclient="" target="_self" request-fields=""><i class="fa fa-sign-in"/><span><span><xsl:value-of select="rows/content/form_2/fields/sign_in/label"/></span></span></a></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_2/tools-bar" mode="form-buttons"/></div></xsl:if></div></div><div class="gen-column col-sm-3"><div class="gen-inner"/></div></div></div></div></div></div><xsl:call-template name="IGRP-bottom"/></form><script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/></body></html></xsl:template><xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=31"/><xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=31"/><xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=31"/><xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=31"/><xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=31"/></xsl:stylesheet>
