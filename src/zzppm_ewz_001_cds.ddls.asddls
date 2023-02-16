@AbapCatalog.sqlViewName: 'ZPPM_EWZ_C1'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PPM Header Cube'
@Analytics.dataCategory: #CUBE
define view zzppm_ewz_001_cds
  as select from zzppm_ewz_001
{

  programm,
  projektart,
  portfolio,


  @DefaultAggregation: #SUM
  @Semantics.amount.currencyCode: 'waers'
  plan_kost,

  @DefaultAggregation: #SUM
  @Semantics.amount.currencyCode: 'waers'
  ist_kost,

  @Semantics.currencyCode: true
  waers

}
