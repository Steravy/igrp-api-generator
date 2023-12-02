<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/>
  <xsl:template match="/">
    <html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable">
      <head>
        <xsl:call-template name="igrp-head"/>
        <!-- VIEW CSS INCLUDES -->
        <link rel="stylesheet" type="text/css" href="{$path}/plugins/view/igrp.view.css?v={$version}"/>
        <!-- DATE CSS INCLUDES -->
        <link rel="stylesheet" type="text/css" href="{$path}/plugins/datepicker2/daterangepicker.css?v={$version}"/>
        <link rel="stylesheet" type="text/css" href="{$path}/plugins/datepicker2/IGRP.daterangepicker.css?v={$version}"/>
        <style/>
      </head>
      <body class="">
        <div id="layout-wrapper">
          <xsl:call-template name="igrp-header"/>
          <xsl:call-template name="igrp-sidebar"/>
          <div class="main-content">
            <div class="page-content">
              <div class="container-fluid">
                <xsl:call-template name="igrp-page-title"/>
                <div class="igrp-page-contents">
                  <div class="row " id="row-c9432ca1">
                    <div class="gen-column col-sm-12">
                      <div class="gen-inner">
                        <xsl:if test="rows/content/card_1">
                          <div class="card igrp-box-holder gen-container-item " gen-class="" item-name="card_1">
                            <div class="card-body" gen-preserve-content="true">
                              <xsl:apply-templates mode="form-hidden-fields" select="rows/content/card_1/fields"/>
                              <div>
                                <div class="row " id="row-cdde49b5">
                                  <div class="gen-column col-md-6">
                                    <div class="gen-inner">
                                      <xsl:if test="rows/content/sectionheader_1">
                                        <section class="content-header igrp-section-header gen-container-item " gen-class="" item-name="sectionheader_1">
                                          <h4 class="mb-0 disable-output-escaping h4">
                                            <xsl:value-of disable-output-escaping="yes" select="rows/content/sectionheader_1/fields/sectionheader_1_text/value"/>
                                          </h4>
                                        </section>
                                      </xsl:if>
                                    </div>
                                  </div>
                                  <div class="gen-column col-md-6">
                                    <div class="gen-inner">
                                      <xsl:if test="rows/content/toolsbar_1">
                                        <div class="toolsbar-holder clearfix gen-container-item " gen-structure="toolsbar" gen-fields=".btns-holder&gt;a.btn" gen-class="" item-name="toolsbar_1">
                                          <div class="btns-holder   pull-right d-flex align-items-center clearfix" role="group">
                                            <xsl:apply-templates select="rows/content/toolsbar_1" mode="igrp-button-item">
                                              <xsl:with-param name="rounded" select="'false'"/>
                                            </xsl:apply-templates>
                                          </div>
                                        </div>
                                      </xsl:if>
                                    </div>
                                  </div>
                                </div>
                                <div class="row " id="row-4fd30458">
                                  <div class="gen-column col-md-12">
                                    <div class="gen-inner">
                                      <xsl:if test="rows/content/paragraph_1">
                                        <div class="disable-output-escaping text-muted igrp-paragraph gen-container-item " gen-class="" item-name="paragraph_1">
                                          <xsl:value-of disable-output-escaping="yes" select="rows/content/paragraph_1/fields/paragraph_1_text/value"/>
                                        </div>
                                      </xsl:if>
                                      <xsl:if test="rows/content/view_1">
                                        <div class="box clearfix view-block gen-container-item " has-img="true" template="default" item-separator-border="true" gen-class="" item-name="view_1">
                                          <div class="box-body">
                                            <xsl:apply-templates mode="form-hidden-fields" select="rows/content/view_1/fields"/>
                                            <xsl:if test="rows/content/view_1/fields/view_1_img">
                                              <img src="{rows/content/view_1/fields/view_1_img/value}"/>
                                            </xsl:if>
                                            <div class="view-body clearfix ">
                                              <xsl:if test="rows/content/view_1/fields/view_1_text_1">
                                                <div class="view-item text-{rows/content/view_1/fields/view_1_text_1/@class} gen-fields-holder" item-name="view_1_text_1">
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1/@img != ''">
                                                    <i class="fa {rows/content/view_1/fields/view_1_text_1/@img} view-img">
                                                      <xsl:if test="rows/content/view_1/fields/view_1_text_1/@showlabel = 'false'">
                                                        <xsl:attribute name="title">
                                                          <xsl:value-of select="rows/content/view_1/fields/view_1_text_1/label"/>
                                                        </xsl:attribute>
                                                      </xsl:if>
                                                    </i>
                                                  </xsl:if>
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1/@showlabel != 'false' or not(rows/content/view_1/fields/view_1_text_1/@showlabel)">
                                                    <span class="view-label">
                                                      <xsl:value-of select="rows/content/view_1/fields/view_1_text_1/label"/>
                                                    </span>
                                                  </xsl:if>
                                                  <span class="view-value">
                                                    <xsl:value-of select="rows/content/view_1/fields/view_1_text_1/value"/>
                                                  </span>
                                                </div>
                                              </xsl:if>
                                              <xsl:if test="rows/content/view_1/fields/view_1_text_1_4">
                                                <div class="view-item text-{rows/content/view_1/fields/view_1_text_1_4/@class} gen-fields-holder" item-name="view_1_text_1_4">
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1_4/@img != ''">
                                                    <i class="fa {rows/content/view_1/fields/view_1_text_1_4/@img} view-img">
                                                      <xsl:if test="rows/content/view_1/fields/view_1_text_1_4/@showlabel = 'false'">
                                                        <xsl:attribute name="title">
                                                          <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_4/label"/>
                                                        </xsl:attribute>
                                                      </xsl:if>
                                                    </i>
                                                  </xsl:if>
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1_4/@showlabel != 'false' or not(rows/content/view_1/fields/view_1_text_1_4/@showlabel)">
                                                    <span class="view-label">
                                                      <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_4/label"/>
                                                    </span>
                                                  </xsl:if>
                                                  <span class="view-value">
                                                    <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_4/value"/>
                                                  </span>
                                                </div>
                                              </xsl:if>
                                              <xsl:if test="rows/content/view_1/fields/view_1_text_1_3">
                                                <div class="view-item text-{rows/content/view_1/fields/view_1_text_1_3/@class} gen-fields-holder" item-name="view_1_text_1_3">
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1_3/@img != ''">
                                                    <i class="fa {rows/content/view_1/fields/view_1_text_1_3/@img} view-img">
                                                      <xsl:if test="rows/content/view_1/fields/view_1_text_1_3/@showlabel = 'false'">
                                                        <xsl:attribute name="title">
                                                          <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_3/label"/>
                                                        </xsl:attribute>
                                                      </xsl:if>
                                                    </i>
                                                  </xsl:if>
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1_3/@showlabel != 'false' or not(rows/content/view_1/fields/view_1_text_1_3/@showlabel)">
                                                    <span class="view-label">
                                                      <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_3/label"/>
                                                    </span>
                                                  </xsl:if>
                                                  <span class="view-value">
                                                    <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_3/value"/>
                                                  </span>
                                                </div>
                                              </xsl:if>
                                              <xsl:if test="rows/content/view_1/fields/view_1_text_1_2">
                                                <div class="view-item text-{rows/content/view_1/fields/view_1_text_1_2/@class} gen-fields-holder" item-name="view_1_text_1_2">
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1_2/@img != ''">
                                                    <i class="fa {rows/content/view_1/fields/view_1_text_1_2/@img} view-img">
                                                      <xsl:if test="rows/content/view_1/fields/view_1_text_1_2/@showlabel = 'false'">
                                                        <xsl:attribute name="title">
                                                          <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_2/label"/>
                                                        </xsl:attribute>
                                                      </xsl:if>
                                                    </i>
                                                  </xsl:if>
                                                  <xsl:if test="rows/content/view_1/fields/view_1_text_1_2/@showlabel != 'false' or not(rows/content/view_1/fields/view_1_text_1_2/@showlabel)">
                                                    <span class="view-label">
                                                      <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_2/label"/>
                                                    </span>
                                                  </xsl:if>
                                                  <span class="view-value">
                                                    <xsl:value-of select="rows/content/view_1/fields/view_1_text_1_2/value"/>
                                                  </span>
                                                </div>
                                              </xsl:if>
                                            </div>
                                          </div>
                                        </div>
                                      </xsl:if>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </xsl:if>
                      </div>
                    </div>
                  </div>
                  <div class="row " id="row-1bc7dec0">
                    <div class="gen-column col-sm-12">
                      <div class="gen-inner">
                        <xsl:if test="rows/content/form_1">
                          <div class="card igrp-forms gen-container-item " gen-class="" item-name="form_1">
                            <xsl:call-template name="box-header">
                              <xsl:with-param name="title" select="rows/content/form_1/@title"/>
                              <xsl:with-param name="collapsible" select="'false'"/>
                              <xsl:with-param name="collapsed" select="''"/>
                            </xsl:call-template>
                            <div class="card-body">
                              <div class="row g-4" role="form">
                                <xsl:if test="rows/content/form_1/fields/nome">
                                  <div class="col-sm-6 gen-fields-holder" item-name="nome" item-type="text">
                                    <label for="{rows/content/form_1/fields/nome/@name}" class="form-label">
                                      <span>
                                        <xsl:value-of select="rows/content/form_1/fields/nome/label"/>
                                      </span>
                                    </label>
                                    <input type="text" value="{rows/content/form_1/fields/nome/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/nome/@name}" name="{rows/content/form_1/fields/nome/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_1/fields/nome/@placeholder}"/>
                                  </div>
                                </xsl:if>
                                <xsl:if test="rows/content/form_1/fields/apelido">
                                  <div class="col-sm-6 gen-fields-holder" item-name="apelido" item-type="text">
                                    <label for="{rows/content/form_1/fields/apelido/@name}" class="form-label">
                                      <span>
                                        <xsl:value-of select="rows/content/form_1/fields/apelido/label"/>
                                      </span>
                                    </label>
                                    <input type="text" value="{rows/content/form_1/fields/apelido/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/apelido/@name}" name="{rows/content/form_1/fields/apelido/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_1/fields/apelido/@placeholder}"/>
                                  </div>
                                </xsl:if>
                                <xsl:if test="rows/content/form_1/fields/form_1_email_1">
                                  <div class="col-sm-3 gen-fields-holder" item-name="form_1_email_1" item-type="email">
                                    <label for="{rows/content/form_1/fields/form_1_email_1/@name}" class="form-label">
                                      <span>
                                        <xsl:value-of select="rows/content/form_1/fields/form_1_email_1/label"/>
                                      </span>
                                    </label>
                                    <input type="email" value="{rows/content/form_1/fields/form_1_email_1/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/form_1_email_1/@name}" name="{rows/content/form_1/fields/form_1_email_1/@name}" maxlength="250" placeholder="{rows/content/form_1/fields/form_1_email_1/@placeholder}"/>
                                  </div>
                                </xsl:if>
                                <xsl:if test="rows/content/form_1/fields/telefone">
                                  <div class="col-sm-3 gen-fields-holder" item-name="telefone" item-type="text">
                                    <label for="{rows/content/form_1/fields/telefone/@name}" class="form-label">
                                      <span>
                                        <xsl:value-of select="rows/content/form_1/fields/telefone/label"/>
                                      </span>
                                    </label>
                                    <input type="text" value="{rows/content/form_1/fields/telefone/value}" class="form-control  " inputmask="" id="{rows/content/form_1/fields/telefone/@name}" name="{rows/content/form_1/fields/telefone/@name}" disablehtml="true" maxlength="250" placeholder="{rows/content/form_1/fields/telefone/@placeholder}"/>
                                  </div>
                                </xsl:if>
                              </div>
                            </div>
                            <xsl:apply-templates select="rows/content/form_1/tools-bar" mode="form-buttons"/>
                          </div>
                        </xsl:if>
                      </div>
                    </div>
                  </div>
                  <div class="row " id="row-7c35feb3">
                    <div class="gen-column col-md-12">
                      <div class="gen-inner">
                        <xsl:if test="rows/content/table_1">
                          <div class="card gen-container-item " gen-class="" item-name="table_1">
                            <xsl:call-template name="box-header">
                              <xsl:with-param name="title" select="rows/content/table_1/@title"/>
                              <xsl:with-param name="collapsible" select="'undefined'"/>
                              <xsl:with-param name="collapsed" select="''"/>
                            </xsl:call-template>
                            <div class="card-body">
                              <div>
                                <div class="table-responsive table-card">
                                  <table class="table align-middle" id="customerTable">
                                    <thead class="table-light">
                                      <tr>
                                        <xsl:if test="rows/content/table_1/fields/table_1_email_1">
                                          <th td-name="table_1_email_1" align="left" show-label="true" class="email  gen-fields-holder" group-in="">
                                            <span>
                                              <xsl:value-of select="rows/content/table_1/fields/table_1_email_1/label"/>
                                            </span>
                                          </th>
                                        </xsl:if>
                                        <xsl:if test="rows/content/table_1/fields/table_1_text_1">
                                          <th td-name="table_1_text_1" align="left" show-label="true" class="text  gen-fields-holder" group-in="">
                                            <span>
                                              <xsl:value-of select="rows/content/table_1/fields/table_1_text_1/label"/>
                                            </span>
                                          </th>
                                        </xsl:if>
                                        <xsl:if test="rows/content/table_1/fields/table_1_text_2">
                                          <th td-name="table_1_text_2" align="left" show-label="true" class="text  gen-fields-holder" group-in="">
                                            <span>
                                              <xsl:value-of select="rows/content/table_1/fields/table_1_text_2/label"/>
                                            </span>
                                          </th>
                                        </xsl:if>
                                        <xsl:if test="rows/content/table_1/fields/table_1_date_1">
                                          <th td-name="table_1_date_1" align="left" show-label="true" class="date  gen-fields-holder" group-in="">
                                            <span>
                                              <xsl:value-of select="rows/content/table_1/fields/table_1_date_1/label"/>
                                            </span>
                                          </th>
                                        </xsl:if>
                                        <xsl:if test="rows/content/table_1/table/context-menu/item">
                                          <th class="igrp-table-ctx-th"/>
                                        </xsl:if>
                                      </tr>
                                    </thead>
                                    <tbody class="list form-check-all">
                                      <xsl:for-each select="rows/content/table_1/table/value/row[not(@total='yes')]">
                                        <tr>
                                          <xsl:apply-templates mode="context-param" select="context-menu"/>
                                          <xsl:if test="table_1_email_1">
                                            <td align="left" data-order="{table_1_email_1}" data-row="{position()}" data-title="{../../../fields/table_1_email_1/label}" class="email" item-name="table_1_email_1">
                                              <span class="">
                                                <xsl:value-of select="table_1_email_1"/>
                                              </span>
                                            </td>
                                          </xsl:if>
                                          <xsl:if test="table_1_text_1">
                                            <td align="left" data-order="{table_1_text_1}" data-row="{position()}" data-title="{../../../fields/table_1_text_1/label}" class="text" item-name="table_1_text_1">
                                              <span class="">
                                                <xsl:value-of select="table_1_text_1"/>
                                              </span>
                                            </td>
                                          </xsl:if>
                                          <xsl:if test="table_1_text_2">
                                            <td align="left" data-order="{table_1_text_2}" data-row="{position()}" data-title="{../../../fields/table_1_text_2/label}" class="text" item-name="table_1_text_2">
                                              <span class="">
                                                <xsl:value-of select="table_1_text_2"/>
                                              </span>
                                            </td>
                                          </xsl:if>
                                          <xsl:if test="table_1_date_1">
                                            <td align="left" data-order="{table_1_date_1}" data-row="{position()}" data-title="{../../../fields/table_1_date_1/label}" class="date" item-name="table_1_date_1">
                                              <span class="">
                                                <xsl:value-of select="table_1_date_1"/>
                                              </span>
                                            </td>
                                          </xsl:if>
                                          <xsl:if test="//rows/content/table_1/table/context-menu/item">
                                            <td class="igrp-table-ctx-td">
                                              <xsl:apply-templates select="../../context-menu" mode="table-context-inline">
                                                <xsl:with-param name="row-params" select="context-menu"/>
                                                <xsl:with-param name="type" select="'inl'"/>
                                              </xsl:apply-templates>
                                            </td>
                                          </xsl:if>
                                        </tr>
                                      </xsl:for-each>
                                    </tbody>
                                  </table>
                                  <div class="noresult" style="display: none">
                                    <div class="text-center">
                                      <lord-icon src="https://cdn.lordicon.com/msoeawqm.json" trigger="loop" colors="primary:#121331,secondary:#08a88a" style="width:75px;height:75px"/>
                                      <h5 class="mt-2">Sorry! No Result Found
                                      </h5>
                                      <p class="text-muted mb-0">We've searched more than 150+ leads We did not find any leads for you search.
                                      </p>
                                    </div>
                                  </div>
                                </div>
                                <div class="d-flex justify-content-end mt-3">
                                  <div class="pagination-wrap hstack gap-2">
                                    <a class="page-item pagination-prev disabled" href="#">
                                      Previous
                                    </a>
                                    <ul class="pagination listjs-pagination mb-0"/>
                                    <a class="page-item pagination-next" href="#">
                                      Next
                                    </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </xsl:if>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <xsl:call-template name="igrp-footer"/>
          </div>
        </div>
        <xsl:call-template name="igrp-page-helpers"/>
        <xsl:call-template name="igrp-scripts"/>
        <!-- TABLE JS INCLUDES -->
        <script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/core/igrp/table/datatable/jquery.dataTables.min.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/core/igrp/table/datatable/dataTables.bootstrap.min.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/core/igrp/table/igrp.table.js?v={$version}"/>
        <!-- TEXT JS INCLUDES -->
        <script type="text/javascript" src="{$path}/plugins/inputmask/jquery.inputmask.min.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/plugins/inputmask/igrp.inputmask.js?v={$version}"/>
        <!-- DATE JS INCLUDES -->
        <script type="text/javascript" src="{$path}/core/moment/moment.min.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/plugins/datepicker2/daterangepicker.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/plugins/datepicker2/IGRP.daterangepicker.config.js?v={$version}"/>
        <script type="text/javascript" src="{$path}/plugins/datepicker2/locale/dp.locale.pt.js?v={$version}"/>
      </body>
    </html>
  </xsl:template>
  <xsl:include href="../xsl/tmpl/IGRP-functions.tmpl.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/IGRP-variables.tmpl.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/IGRP-utils.tmpl.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/parts.common.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/parts.head.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/parts.header.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/parts.scripts.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/parts.footer.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/parts.sidebar.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=26"/>
  <xsl:include href="../xsl/tmpl/IGRP-table-utils.tmpl.xsl?v=26"/>
</xsl:stylesheet>
