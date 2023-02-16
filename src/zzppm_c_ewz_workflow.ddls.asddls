@AbapCatalog.sqlViewName: 'ZZPPMEWZWFH'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EWZ Projekteröffung Workflow'
@OData.publish: true
@VDM.viewType: #CONSUMPTION
//@Search.searchable: true
@UI.headerInfo.title.value: 'Projekt Workflow'
@UI.headerInfo.typeName: 'Workflow'
@UI.headerInfo.typeNamePlural: 'Workflows'
@Metadata.allowExtensions: true
define view zzppm_c_ewz_workflow
  as select from zzppm_ewz_wf_h as header
  association [0..*] to zzppm_c_ewz_workflow_p as toPosition on $projection.wfid = toPosition.wfid

{
  key header.mandt,
  key wfid,
      proj_id,
      proj_bez,
      proj_art,
      entscheid_model,
      status,


      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      toPosition
}
