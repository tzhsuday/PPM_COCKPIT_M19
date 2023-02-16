@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface Entity View for Project Phase'
define view entity ZI_PROJ_PHASE2 
  as select from zzppm_ewz_004 as Phase
     association to parent ZI_PROJ_HEADER2 as _Header on $projection.Headerguid = _Header.Guid
   {
    key guid as Guid,
    headerguid as Headerguid,
    icon as Icon,
    phase as Phase,
    description as Description,
    status as Status,
    plan_finish as PlanFinish,
    curr_finish as CurrFinish,
    _Header
}
