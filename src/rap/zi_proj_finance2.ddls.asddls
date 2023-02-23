@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface Entity View for Project Finance'
define view entity ZI_PROJ_FINANCE2  
  as select from zzppm_ewz_002 
  composition [0..* ] of ZI_PROJ_INVOICE2 as _Invoice
  association to parent ZI_PROJ_HEADER2 as _Header on $projection.Headerguid = _Header.Guid
  
  {
    key guid as Guid,
    headerguid as Headerguid,
    gjahr as Gjahr,
    kredit as Kredit,
    kredit_w as KreditW,
    forecast as Forecast,
    forecast_w as ForecastW,
    obligo as Obligo,
    obligo_w as ObligoW,
    istkosten as Istkosten,
    istkosten_w as IstkostenW,
    _Header,
    _Invoice
}
