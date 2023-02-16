@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface Entity View for Project Status'
define view entity ZI_PROJ_STATUS2 
  as select from zzppm_ewz_006 as Status
    association to parent ZI_PROJ_HEADER2 as _Header on $projection.HeaderGuid = _Header.Guid
  {
    key guid as Guid,
    headerguid as HeaderGuid,
    status_date as StatusDate,
    finanzen as Finanzen,
    termin as Termin,
    umfang as Umfang,
    ppi as Ppi,
    description as Description,
    _Header
}
