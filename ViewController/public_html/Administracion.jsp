<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelSplitter orientation="horizontal" splitterPosition="418"
                        id="ps1">
        <f:facet name="first">
          <af:panelSplitter id="ps2" orientation="vertical"
                            splitterPosition="200">
            <f:facet name="first">
              <af:panelAccordion discloseMany="false" id="pa1">
                <af:showDetailItem text="Roles" id="sdi1">
                  <af:panelFormLayout id="pfl1">
                    <af:inputText value="#{bindings.idConfigrol.inputValue}"
                                  label="#{bindings.idConfigrol.hints.label}"
                                  required="#{bindings.idConfigrol.hints.mandatory}"
                                  columns="#{bindings.idConfigrol.hints.displayWidth}"
                                  maximumLength="#{bindings.idConfigrol.hints.precision}"
                                  shortDesc="#{bindings.idConfigrol.hints.tooltip}"
                                  id="it2">
                      <f:validator binding="#{bindings.idConfigrol.validator}"/>
                      <af:convertNumber groupingUsed="false"
                                        pattern="#{bindings.idConfigrol.format}"/>
                    </af:inputText>
                    <af:inputText value="#{bindings.nombre.inputValue}"
                                  label="#{bindings.nombre.hints.label}"
                                  required="#{bindings.nombre.hints.mandatory}"
                                  columns="#{bindings.nombre.hints.displayWidth}"
                                  maximumLength="#{bindings.nombre.hints.precision}"
                                  shortDesc="#{bindings.nombre.hints.tooltip}"
                                  id="it3">
                      <f:validator binding="#{bindings.nombre.validator}"/>
                    </af:inputText>
                    <af:inputText value="#{bindings.parametro.inputValue}"
                                  label="#{bindings.parametro.hints.label}"
                                  required="#{bindings.parametro.hints.mandatory}"
                                  columns="#{bindings.parametro.hints.displayWidth}"
                                  maximumLength="#{bindings.parametro.hints.precision}"
                                  shortDesc="#{bindings.parametro.hints.tooltip}"
                                  id="it1">
                      <f:validator binding="#{bindings.parametro.validator}"/>
                    </af:inputText>
                    <f:facet name="footer">
                      <af:panelGroupLayout layout="horizontal" id="pgl1">
                        <af:commandButton actionListener="#{bindings.First.execute}"
                                          text="First"
                                          disabled="#{!bindings.First.enabled}"
                                          partialSubmit="true" id="cb4"/>
                        <af:commandButton actionListener="#{bindings.Previous.execute}"
                                          text="Previous"
                                          disabled="#{!bindings.Previous.enabled}"
                                          partialSubmit="true" id="cb2"/>
                        <af:commandButton actionListener="#{bindings.Next.execute}"
                                          text="Next"
                                          disabled="#{!bindings.Next.enabled}"
                                          partialSubmit="true" id="cb1"/>
                        <af:commandButton actionListener="#{bindings.Last.execute}"
                                          text="Last"
                                          disabled="#{!bindings.Last.enabled}"
                                          partialSubmit="true" id="cb3"/>
                      </af:panelGroupLayout>
                    </f:facet>
                  </af:panelFormLayout>
                </af:showDetailItem>
              </af:panelAccordion>
            </f:facet>
            <f:facet name="second">
              <af:panelAccordion discloseMany="false" id="pa2">
                <af:showDetailItem id="pane1" text="Reportes">
                  <af:table value="#{bindings.portalbiConfigreporteFindAll.collectionModel}"
                            var="row"
                            rows="#{bindings.portalbiConfigreporteFindAll.rangeSize}"
                            emptyText="#{bindings.portalbiConfigreporteFindAll.viewable ? 'No data to display.' : 'Access Denied.'}"
                            fetchSize="#{bindings.portalbiConfigreporteFindAll.rangeSize}"
                            rowBandingInterval="0"
                            filterModel="#{bindings.portalbiConfigreporteFindAllQuery.queryDescriptor}"
                            queryListener="#{bindings.portalbiConfigreporteFindAllQuery.processQuery}"
                            filterVisible="true" varStatus="vs"
                            selectedRowKeys="#{bindings.portalbiConfigreporteFindAll.collectionModel.selectedRow}"
                            selectionListener="#{bindings.portalbiConfigreporteFindAll.collectionModel.makeCurrent}"
                            rowSelection="single" id="t1">
                    <af:column sortProperty="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.label}"
                               id="c4">
                      <af:inputText value="#{row.bindings.idConfigreporte.inputValue}"
                                    label="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.label}"
                                    required="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.mandatory}"
                                    columns="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.displayWidth}"
                                    maximumLength="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.precision}"
                                    shortDesc="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.tooltip}"
                                    id="it4">
                        <f:validator binding="#{row.bindings.idConfigreporte.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.portalbiConfigreporteFindAll.hints.idConfigreporte.format}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.portalbiConfigreporteFindAll.hints.nombre.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.portalbiConfigreporteFindAll.hints.nombre.label}"
                               id="c5">
                      <af:inputText value="#{row.bindings.nombre.inputValue}"
                                    label="#{bindings.portalbiConfigreporteFindAll.hints.nombre.label}"
                                    required="#{bindings.portalbiConfigreporteFindAll.hints.nombre.mandatory}"
                                    columns="#{bindings.portalbiConfigreporteFindAll.hints.nombre.displayWidth}"
                                    maximumLength="#{bindings.portalbiConfigreporteFindAll.hints.nombre.precision}"
                                    shortDesc="#{bindings.portalbiConfigreporteFindAll.hints.nombre.tooltip}"
                                    id="it5">
                        <f:validator binding="#{row.bindings.nombre.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.portalbiConfigreporteFindAll.hints.estatus.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.portalbiConfigreporteFindAll.hints.estatus.label}"
                               id="c3">
                      <af:inputText value="#{row.bindings.estatus.inputValue}"
                                    label="#{bindings.portalbiConfigreporteFindAll.hints.estatus.label}"
                                    required="#{bindings.portalbiConfigreporteFindAll.hints.estatus.mandatory}"
                                    columns="#{bindings.portalbiConfigreporteFindAll.hints.estatus.displayWidth}"
                                    maximumLength="#{bindings.portalbiConfigreporteFindAll.hints.estatus.precision}"
                                    shortDesc="#{bindings.portalbiConfigreporteFindAll.hints.estatus.tooltip}"
                                    id="it7">
                        <f:validator binding="#{row.bindings.estatus.validator}"/>
                        <af:convertNumber groupingUsed="false"
                                          pattern="#{bindings.portalbiConfigreporteFindAll.hints.estatus.format}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.portalbiConfigreporteFindAll.hints.panel.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.portalbiConfigreporteFindAll.hints.panel.label}"
                               id="c2">
                      <af:inputText value="#{row.bindings.panel.inputValue}"
                                    label="#{bindings.portalbiConfigreporteFindAll.hints.panel.label}"
                                    required="#{bindings.portalbiConfigreporteFindAll.hints.panel.mandatory}"
                                    columns="#{bindings.portalbiConfigreporteFindAll.hints.panel.displayWidth}"
                                    maximumLength="#{bindings.portalbiConfigreporteFindAll.hints.panel.precision}"
                                    shortDesc="#{bindings.portalbiConfigreporteFindAll.hints.panel.tooltip}"
                                    id="it8">
                        <f:validator binding="#{row.bindings.panel.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.portalbiConfigreporteFindAll.hints.parametro.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.portalbiConfigreporteFindAll.hints.parametro.label}"
                               id="c6">
                      <af:inputText value="#{row.bindings.parametro.inputValue}"
                                    label="#{bindings.portalbiConfigreporteFindAll.hints.parametro.label}"
                                    required="#{bindings.portalbiConfigreporteFindAll.hints.parametro.mandatory}"
                                    columns="#{bindings.portalbiConfigreporteFindAll.hints.parametro.displayWidth}"
                                    maximumLength="#{bindings.portalbiConfigreporteFindAll.hints.parametro.precision}"
                                    shortDesc="#{bindings.portalbiConfigreporteFindAll.hints.parametro.tooltip}"
                                    id="it6">
                        <f:validator binding="#{row.bindings.parametro.validator}"/>
                      </af:inputText>
                    </af:column>
                    <af:column sortProperty="#{bindings.portalbiConfigreporteFindAll.hints.path.name}"
                               filterable="true" sortable="true"
                               headerText="#{bindings.portalbiConfigreporteFindAll.hints.path.label}"
                               id="c1">
                      <af:inputText value="#{row.bindings.path.inputValue}"
                                    label="#{bindings.portalbiConfigreporteFindAll.hints.path.label}"
                                    required="#{bindings.portalbiConfigreporteFindAll.hints.path.mandatory}"
                                    columns="#{bindings.portalbiConfigreporteFindAll.hints.path.displayWidth}"
                                    maximumLength="#{bindings.portalbiConfigreporteFindAll.hints.path.precision}"
                                    shortDesc="#{bindings.portalbiConfigreporteFindAll.hints.path.tooltip}"
                                    id="it9">
                        <f:validator binding="#{row.bindings.path.validator}"/>
                      </af:inputText>
                    </af:column>
                  </af:table>
                </af:showDetailItem>
              </af:panelAccordion>
            </f:facet>
          </af:panelSplitter>
        </f:facet>
        <f:facet name="second">
          <!-- id="af_twocol_left_sidebar_split_stretched"   -->
          <af:panelAccordion discloseMany="false" id="pa3">
            <af:showDetailItem id="pane2" text="Reportes por Rol">
              <af:table value="#{bindings.portalbiRolreporteFindAll.collectionModel}"
                        var="row"
                        rows="#{bindings.portalbiRolreporteFindAll.rangeSize}"
                        emptyText="#{bindings.portalbiRolreporteFindAll.viewable ? 'No data to display.' : 'Access Denied.'}"
                        fetchSize="#{bindings.portalbiRolreporteFindAll.rangeSize}"
                        rowBandingInterval="0"
                        filterModel="#{bindings.portalbiRolreporteFindAllQuery.queryDescriptor}"
                        queryListener="#{bindings.portalbiRolreporteFindAllQuery.processQuery}"
                        filterVisible="true" varStatus="vs"
                        selectedRowKeys="#{bindings.portalbiRolreporteFindAll.collectionModel.selectedRow}"
                        selectionListener="#{bindings.portalbiRolreporteFindAll.collectionModel.makeCurrent}"
                        rowSelection="single" id="t2">
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.label}"
                           id="c10">
                  <af:inputText value="#{row.bindings.idConfigreporte.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.tooltip}"
                                id="it14">
                    <f:validator binding="#{row.bindings.idConfigreporte.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.portalbiRolreporteFindAll.hints.idConfigreporte.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.label}"
                           id="c12">
                  <af:inputText value="#{row.bindings.idConfigrol.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.tooltip}"
                                id="it16">
                    <f:validator binding="#{row.bindings.idConfigrol.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.portalbiRolreporteFindAll.hints.idConfigrol.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.label}"
                           id="c9">
                  <af:inputText value="#{row.bindings.nombredespliegue.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.nombredespliegue.tooltip}"
                                id="it12">
                    <f:validator binding="#{row.bindings.nombredespliegue.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.label}"
                           id="c14">
                  <af:inputText value="#{row.bindings.ordendespliegue.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.tooltip}"
                                id="it13">
                    <f:validator binding="#{row.bindings.ordendespliegue.validator}"/>
                    <af:convertNumber groupingUsed="false"
                                      pattern="#{bindings.portalbiRolreporteFindAll.hints.ordendespliegue.format}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.pagina.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.pagina.label}"
                           id="c13">
                  <af:inputText value="#{row.bindings.pagina.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.pagina.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.pagina.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.pagina.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.pagina.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.pagina.tooltip}"
                                id="it15">
                    <f:validator binding="#{row.bindings.pagina.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.label}"
                           id="c8">
                  <af:inputText value="#{row.bindings.parametromandatorio.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.parametromandatorio.tooltip}"
                                id="it17">
                    <f:validator binding="#{row.bindings.parametromandatorio.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.label}"
                           id="c11">
                  <af:inputText value="#{row.bindings.parametronulo.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.parametronulo.tooltip}"
                                id="it10">
                    <f:validator binding="#{row.bindings.parametronulo.validator}"/>
                  </af:inputText>
                </af:column>
                <af:column sortProperty="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.name}"
                           filterable="true" sortable="true"
                           headerText="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.label}"
                           id="c7">
                  <af:inputText value="#{row.bindings.parametroopcional.inputValue}"
                                label="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.label}"
                                required="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.mandatory}"
                                columns="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.displayWidth}"
                                maximumLength="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.precision}"
                                shortDesc="#{bindings.portalbiRolreporteFindAll.hints.parametroopcional.tooltip}"
                                id="it11">
                    <f:validator binding="#{row.bindings.parametroopcional.validator}"/>
                  </af:inputText>
                </af:column>
              </af:table>
            </af:showDetailItem>
          </af:panelAccordion>
        </f:facet>
      </af:panelSplitter>
    </af:form>
  </af:document>
</f:view>