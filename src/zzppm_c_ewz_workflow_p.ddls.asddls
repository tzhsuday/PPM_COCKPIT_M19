@AbapCatalog.sqlViewName: 'ZZPPMEWZWFP'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EWZ Workflow Position'
@OData.publish: true
@Metadata.allowExtensions: true
define view zzppm_c_ewz_workflow_p
  as select from zzppm_ewz_wf_p
{


  key wfid,
  key wfpos,
      decision,
      reason,
      decider
}
