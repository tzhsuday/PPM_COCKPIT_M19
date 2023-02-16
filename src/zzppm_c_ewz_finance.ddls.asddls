@AbapCatalog.sqlViewName: 'ZZPPMVEWZF'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EWZ PPM Finance Data (Consumption)'

@OData.publish: true
@VDM.viewType: #CONSUMPTION

@Metadata.allowExtensions: true


@UI.headerInfo.typeName: 'Geschäftsjahr'
@UI.headerInfo.typeNamePlural: 'Geschäftsjahre'

@UI.chart: [{
    qualifier: 'ChartFacetFinance',
    chartType: #COLUMN,
    dimensions:  [ 'gjahr' ],
    measures:  [ 'kredit', 'forecast', 'istkosten', 'obligo' ]
}]

define view ZZPPM_C_EWZ_FINANCE
  as select from zzppm_ewz_002
  association [0..*] to ZZPPM_C_EWZ_INVOICE as _toInvoice on $projection.headerguid = _toInvoice.headerguid
  association [1..1] to ZZPPM_C_EWZ_HEADER as _toHeader on $projection.headerguid = _toHeader.guid
{
  key client,
  key guid,
  key headerguid,

      gjahr,


//            @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'istkosten_w'
      kredit,
      kredit_w,
//            @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'istkosten_w'
      forecast,
      forecast_w,
//            @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'istkosten_w'
      obligo,
      obligo_w,
//            @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'istkosten_w'
      istkosten,
      istkosten_w,

      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _toInvoice,
      
      @ObjectModel.association.type: [#TO_COMPOSITION_ROOT, #TO_COMPOSITION_PARENT]
      _toHeader
      
}
