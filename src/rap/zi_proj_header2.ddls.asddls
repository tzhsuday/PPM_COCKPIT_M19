@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface Entity View for Project Header'
define root view entity ZI_PROJ_HEADER2 
  as select from zzppm_ewz_001 as header
  composition [0..* ] of ZI_PROJ_FINANCE2 as _Finance
  composition [0..* ] of ZI_PROJ_PHASE2 as _Phase
  composition [0..* ] of ZI_PROJ_STATUS2 as _Status 
  association [0..* ] to ZI_PROJ_INVOICE2 as _Invoice on $projection.Guid = _Invoice.Headerguid
  
  {
    key guid as Guid,
    nummer as Nummer,
    bezeichnung as Bezeichnung,
    manager as Manager,
    gesamt as Gesamt,
    finanzen as Finanzen,
    '1' as FinanzenCriticality,
    termin as Termin,
    umfang as Umfang,
    ppi as Ppi,
    start_d as StartD,
    ende_d as EndeD,
    favorit as Favorit,
    plan_kost as PlanKost,
    ist_kost as IstKost,
    waers as Waers,
    programm as Programm,
    projektart as Projektart,
    portfolio as Portfolio,
    _Finance,
    _Phase,
    _Status,
    _Invoice
}
