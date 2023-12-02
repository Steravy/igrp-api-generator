<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/><xsl:template match="/"><html><head><xsl:call-template name="IGRP-head"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/toolsbar/toolsbar.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.min.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.style.css?v={$version}"/><style>#gen_auto_cod{  position:absolute;  top:34px;  right:20px;}</style></head><body class="{$bodyClass} sidebar-off"><xsl:call-template name="IGRP-topmenu"/><form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data"><div class="container-fluid"><div class="row"><xsl:call-template name="IGRP-sidebar"/><div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents"><div class="content"><div class="row row-msg"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/></div></div></div><div class="row " id="row-7ced7d9c"><div class="gen-column col-sm-6"><div class="gen-inner"><xsl:if test="rows/content/sectionheader_1"><section class="content-header gen-container-item " gen-class="" item-name="sectionheader_1"><h2 class="disable-output-escaping"><xsl:value-of disable-output-escaping="yes" select="rows/content/sectionheader_1/fields/sectionheader_1_text/value"/></h2></section></xsl:if></div></div><div class="gen-column col-sm-6"><div class="gen-inner"><xsl:if test="rows/content/toolsbar_1"><div class="toolsbar-holder default gen-container-item " gen-structure="toolsbar" gen-fields=".btns-holder&gt;a.btn" gen-class="" item-name="toolsbar_1"><div class="btns-holder  pull-right" role="group"><xsl:apply-templates select="rows/content/toolsbar_1" mode="gen-buttons"><xsl:with-param name="vertical" select="'true'"/><xsl:with-param name="outline" select="'false'"/></xsl:apply-templates></div></div></xsl:if></div></div></div><div class="row " id="row-534ef42a"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:if test="rows/content/box_1"><div class="box igrp-box-holder gen-container-item " gen-class="" item-name="box_1"><div class="box-body" gen-preserve-content="true"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/box_1/fields"/><div><div class="row " id="row-d72530d7"><div class="gen-column col-sm-12"><div class="gen-inner"><xsl:if test="rows/content/form_1"><div class="box igrp-forms gen-container-item sukundi" gen-class="sukundi" item-name="form_1"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_1/fields"/><xsl:if test="rows/content/form_1/fields/name"><div class="form-group col-sm-3   gen-fields-holder" item-name="name" item-type="text" required="required"><label for="{rows/content/form_1/fields/name/@name}"><span><xsl:value-of select="rows/content/form_1/fields/name/label"/></span></label><input type="text" value="{rows/content/form_1/fields/name/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/name/@name}" name="{rows/content/form_1/fields/name/@name}" disablehtml="true" required="required" maxlength="50" placeholder="{rows/content/form_1/fields/name/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/name"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_1/fields/dad"><div class="form-group col-sm-3   gen-fields-holder" item-name="dad" item-type="text" required="required"><label for="{rows/content/form_1/fields/dad/@name}"><span><xsl:value-of select="rows/content/form_1/fields/dad/label"/></span></label><input type="text" value="{rows/content/form_1/fields/dad/value}" class="form-control " id="{rows/content/form_1/fields/dad/@name}" name="{rows/content/form_1/fields/dad/@name}" required="required" maxlength="30" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/dad"/></xsl:call-template></input><input type="checkbox" name="p_gen_auto_code" value="1" class="checkbox" id="gen_auto_cod"><xsl:if test="rows/content/form_1/fields/gen_auto_code/value = '1'"><xsl:attribute name="checked">checked
      </xsl:attribute></xsl:if></input></div></xsl:if><xsl:if test="rows/content/form_1/fields/description"><div class="form-group col-sm-3  gen-fields-holder" item-name="description" item-type="textarea"><label for="{rows/content/form_1/fields/description/@name}"><xsl:value-of select="rows/content/form_1/fields/description/label"/></label><textarea name="{rows/content/form_1/fields/description/@name}" disablehtml="true" class="textarea form-control  " maxlength="500" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/description"/></xsl:call-template><xsl:value-of select="rows/content/form_1/fields/description/value"/></textarea></div></xsl:if><xsl:if test="rows/content/form_1/fields/status"><div class="col-sm-3  gen-fields-holder" item-name="status" item-type="checkbox"><div class="form-group"><div class="checkbox form-check-offset"><label class="container-box checkbox-switch switch"><xsl:value-of select="rows/content/form_1/fields/status/label"/><input type="checkbox" name="{rows/content/form_1/fields/status/@name}" value="1" class="checkbox " label="{rows/content/form_1/fields/status/label}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/status"/></xsl:call-template><xsl:if test="rows/content/form_1/fields/status/value = '1'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><span class="slider round"/><span class="checkmark"/></label></div></div></div></xsl:if><xsl:if test="rows/content/form_1/fields/gen_auto_code"><div class="col-sm-3  hidden gen-fields-holder" item-name="gen_auto_code" item-type="checkbox"><div class="form-group"><div class="checkbox form-check-offset"></div></div></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_1/tools-bar" mode="form-buttons"/></div></xsl:if><xsl:if test="rows/content/form_more"><div class="box igrp-forms gen-container-item sukundi" gen-class="sukundi" item-name="form_more" style="    background: #a0a0a00f;"><xsl:call-template name="box-header"><xsl:with-param name="title" select="rows/content/form_more/@title"/><xsl:with-param name="collapsible" select="'true'"/><xsl:with-param name="collapsed" select="'true'"/></xsl:call-template><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_more/fields"/><xsl:if test="rows/content/form_more/fields/personalizacoes"><div item-name="personalizacoes" class="box-head subtitle gen-fields-holder" text-color="1"><span><xsl:value-of select="rows/content/form_more/fields/personalizacoes/label"/></span></div></xsl:if><xsl:if test="rows/content/form_more/fields/img_src"><div class="col-sm-3 form-group  gen-fields-holder" item-name="img_src" item-type="select"><label for="{rows/content/form_more/fields/img_src/@name}"><span><i class="fa fa-cubes" style="margin-right: 3px;"></i><xsl:value-of select="rows/content/form_more/fields/img_src/label"/></span></label><select class="form-control select2  " id="form_more_img_src" name="{rows/content/form_more/fields/img_src/@name}" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/img_src"/></xsl:call-template><xsl:for-each select="rows/content/form_more/fields/img_src/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected
          </xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_more/fields/templates"><div class="col-sm-3 form-group  gen-fields-holder" item-name="templates" item-type="select"><label for="{rows/content/form_more/fields/templates/@name}"><span><i class="fa fa-paint-brush" style="margin-right: 3px;"></i><xsl:value-of select="rows/content/form_more/fields/templates/label"/></span></label><select class="form-control select2  " id="form_more_templates" name="{rows/content/form_more/fields/templates/@name}" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/templates"/></xsl:call-template><xsl:for-each select="rows/content/form_more/fields/templates/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected
          </xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_more/fields/template_theme_24_"><div class="col-sm-3 form-group  gen-fields-holder" item-name="template_theme_24_" item-type="select"><label for="{rows/content/form_more/fields/template_theme_24_/@name}"><span><i class="fa fa-paint-brush" style="margin-right: 3px;"></i><xsl:value-of select="rows/content/form_more/fields/template_theme_24_/label"/></span></label><select class="form-control select2  " id="form_more_template_theme_24_" name="{rows/content/form_more/fields/template_theme_24_/@name}" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/template_theme_24_"/></xsl:call-template><xsl:for-each select="rows/content/form_more/fields/template_theme_24_/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected
          </xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_more/fields/action_fk"><div class="col-sm-3 form-group  gen-fields-holder" item-name="action_fk" item-type="select"><label for="{rows/content/form_more/fields/action_fk/@name}"><span><i class="fa fa-home" style="margin-right: 3px;"></i><xsl:value-of select="rows/content/form_more/fields/action_fk/label"/></span></label><select class="form-control select2 " id="form_more_action_fk" name="{rows/content/form_more/fields/action_fk/@name}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/action_fk"/></xsl:call-template><xsl:for-each select="rows/content/form_more/fields/action_fk/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected
          </xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_more/fields/_nada"><div item-name="_nada" class="box-head subtitle gen-fields-holder" text-color="1"><span><xsl:value-of select="rows/content/form_more/fields/_nada/label"/></span></div></xsl:if><xsl:if test="rows/content/form_more/fields/flg_external"><div class="col-sm-3 form-group  gen-fields-holder" item-name="flg_external" item-type="select"><label for="{rows/content/form_more/fields/flg_external/@name}"><xsl:value-of select="rows/content/form_more/fields/flg_external/label"/></label><select class="form-control select2  " id="form_more_flg_external" name="{rows/content/form_more/fields/flg_external/@name}" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/flg_external"/></xsl:call-template><xsl:for-each select="rows/content/form_more/fields/flg_external/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_more/fields/host"><div class="form-group col-sm-3   gen-fields-holder" item-name="host" item-type="text"><label for="{rows/content/form_more/fields/host/@name}"><span><xsl:value-of select="rows/content/form_more/fields/host/label"/></span></label><input type="text" value="{rows/content/form_more/fields/host/value}" class="form-control  " inputmask="" id="{rows/content/form_more/fields/host/@name}" name="{rows/content/form_more/fields/host/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_more/fields/host/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/host"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_more/fields/plsql_codigo"><div class="form-group col-sm-3   gen-fields-holder" item-name="plsql_codigo" item-type="text"><label for="{rows/content/form_more/fields/plsql_codigo/@name}"><span><xsl:value-of select="rows/content/form_more/fields/plsql_codigo/label"/></span></label><input type="text" value="{rows/content/form_more/fields/plsql_codigo/value}" class="form-control  " inputmask="" id="{rows/content/form_more/fields/plsql_codigo/@name}" name="{rows/content/form_more/fields/plsql_codigo/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_more/fields/plsql_codigo/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/plsql_codigo"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_more/fields/_nada2"><div item-name="_nada2" class="box-head subtitle gen-fields-holder" text-color="1"><span><xsl:value-of select="rows/content/form_more/fields/_nada2/label"/></span></div></xsl:if><xsl:if test="rows/content/form_more/fields/flg_old"><div class="col-sm-3  gen-fields-holder" item-name="flg_old" item-type="checkbox"><div class="form-group"><div class="checkbox form-check-offset"><label class="container-box checkbox-switch switch"><xsl:value-of select="rows/content/form_more/fields/flg_old/label"/><input type="checkbox" name="{rows/content/form_more/fields/flg_old/@name}" value="1" class="checkbox " label="{rows/content/form_more/fields/flg_old/label}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/flg_old"/></xsl:call-template><xsl:if test="rows/content/form_more/fields/flg_old/value = '1'"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><span class="slider round"/><span class="checkmark"/></label></div></div></div></xsl:if><xsl:if test="rows/content/form_more/fields/link_menu"><div class="form-group col-sm-3   gen-fields-holder" item-name="link_menu" item-type="text"><label for="{rows/content/form_more/fields/link_menu/@name}"><span><xsl:value-of select="rows/content/form_more/fields/link_menu/label"/></span></label><input type="text" value="{rows/content/form_more/fields/link_menu/value}" class="form-control  " inputmask="" id="{rows/content/form_more/fields/link_menu/@name}" name="{rows/content/form_more/fields/link_menu/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_more/fields/link_menu/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/link_menu"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_more/fields/link_center"><div class="form-group col-sm-3   gen-fields-holder" item-name="link_center" item-type="text"><label for="{rows/content/form_more/fields/link_center/@name}"><span><xsl:value-of select="rows/content/form_more/fields/link_center/label"/></span></label><input type="text" value="{rows/content/form_more/fields/link_center/value}" class="form-control  " inputmask="" id="{rows/content/form_more/fields/link_center/@name}" name="{rows/content/form_more/fields/link_center/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_more/fields/link_center/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/link_center"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_more/fields/apache_dad"><div class="form-group col-sm-3   gen-fields-holder" item-name="apache_dad" item-type="text"><label for="{rows/content/form_more/fields/apache_dad/@name}"><span><xsl:value-of select="rows/content/form_more/fields/apache_dad/label"/></span></label><input type="text" value="{rows/content/form_more/fields/apache_dad/value}" class="form-control  " inputmask="" id="{rows/content/form_more/fields/apache_dad/@name}" name="{rows/content/form_more/fields/apache_dad/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_more/fields/apache_dad/@placeholder}"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_more/fields/apache_dad"/></xsl:call-template></input></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_more/tools-bar" mode="form-buttons"/></div></xsl:if></div></div></div></div></div></div></xsl:if></div></div></div></div></div></div></div><xsl:call-template name="IGRP-bottom"/></form><script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/inputmask/jquery.inputmask.min.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/inputmask/igrp.inputmask.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.full.min.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.init.js?v={$version}"/><script src="{$path}/core/igrp/IGRP.rules.class.js"/><script>
$.IGRP.rules.set({"p_flg_external":[{"name":"é externo?","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"notnull","value":"","value2":"","patern":"","patern_custom":"","opposite":"1"}],"actions":[{"action":"show","targets":"host","procedure":"","request_fields":"","msg_type":"info","msg":""}]}},{"name":"rule1","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"equal","value":"2","value2":"","patern":"","patern_custom":"","opposite":"1"}],"actions":[{"action":"required","targets":"host","procedure":"","request_fields":"","msg_type":"","msg":""}]}},{"name":"rule2","events":"change","isTable":false,"conditions":{"rules":[{"condition":"equal","value":"1","value2":"","patern":"","patern_custom":"","opposite":""}],"actions":[{"action":"cleanValue","targets":"host","procedure":"","request_fields":"","msg_type":"","msg":""}]}}],"p_flg_old":[{"name":"show antigo","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"checked","value":"","value2":"","patern":"","patern_custom":"","opposite":"1"}],"actions":[{"action":"show","targets":"link_menu,link_center","procedure":"","request_fields":"","msg_type":"","msg":""}]}}]},'actionsList');</script><script>(function(){var isChecked = function() {        return $('[name="p_gen_auto_code"]').is(':checked');    };     var enableAutoCod = function(){            $('[name="p_dad"]').attr('readonly','readonly');            };        var disableAutoCod = function(){            $('[name="p_dad"]').removeAttr('readonly');            };         var checkAutoCod = function(){            if( isChecked() )                enableAutoCod();                else                disableAutoCod();            };         $('[name="p_gen_auto_code"]').on('change',checkAutoCod);        checkAutoCod();        $('[name="p_name"]').on('keyup',function(){        if(isChecked()){                var val = $(this).val();                    $('[name="p_dad"]').val($.IGRP.utils.string.replaceSpecialChars(val));                    }        });})();</script></body></html></xsl:template><xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=30"/><xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=30"/><xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=30"/><xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=30"/><xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=30"/></xsl:stylesheet>
