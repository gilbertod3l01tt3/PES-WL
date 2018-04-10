<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="viewcontrollerBundle"
       value="#{adfBundle['oracle.view.ViewControllerBundle']}"/>
<f:view>
  <af:document id="d1">
    <af:form id="f1">
      <af:panelSplitter orientation="horizontal" splitterPosition="238"
                        id="ps1">
        <f:facet name="first">
          <af:panelSplitter id="ps2" orientation="vertical">
            <f:facet name="first">
              <af:panelAccordion discloseMany="false" id="pa1">
                <af:showDetailItem id="pane1" text="Reportes por Rol">
                  <af:inputText label="Rol a buscar" id="it1"/>
                </af:showDetailItem>
              </af:panelAccordion>
            </f:facet>
            <f:facet name="second">
              <af:panelAccordion discloseMany="false" id="pa2">
                <af:showDetailItem id="pane2"
                                   text="Configuración por Reporte"/>
              </af:panelAccordion>
            </f:facet>
          </af:panelSplitter>
        </f:facet>
        <f:facet name="second">
          <af:inlineFrame id="if1"/>
          <!-- id="af_twocol_left_sidebar_split_stretched"   -->
        </f:facet>
      </af:panelSplitter>
    </af:form>
  </af:document>
</f:view>