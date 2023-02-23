@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface Entity View for Invoices'
define view entity ZI_PROJ_INVOICE2  
as select from zzppm_ewz_003 as Invoice
association to parent ZI_PROJ_FINANCE2 as _Finance on $projection.Financeguid = _Finance.Guid 
association [1..1] to ZI_PROJ_HEADER2 as _Header on $projection.Headerguid = _Header.Guid 
                                                 
{
    
    key guid as Guid,
    financeguid as Financeguid,
    headerguid as Headerguid,
    gjahr as Gjahr,
    belnr as Belnr,
    bukrs as Bukrs,
    blart as Blart,
    bldat as Bldat,
    budat as Budat,
    ebeln as Ebeln,
    ebelp as Ebelp,
    sgtxt as Sgtxt,
    dmbtr as Dmbtr,
    waers as Waers,
    _Finance,
    _Header
}
