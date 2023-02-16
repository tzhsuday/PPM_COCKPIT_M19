@AbapCatalog.sqlViewName: 'ZPPM_EWZ_ALP1'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Analytical View for Header New 1'
@OData.publish: true


@UI.headerInfo:{
typeName: 'Portfolio Auswertung'
}

@UI.chart: [
{
qualifier: 'ChartDefault',
chartType: #COLUMN,
description: 'Kostenentwicklung',
dimensions: ['programm'],
measures: ['ist_kost', 'plan_kost'],
dimensionAttributes: [{dimension: 'programm', role: #CATEGORY }],
measureAttributes: [{measure: 'ist_kost', role: #AXIS_1, asDataPoint: true }, {measure: 'plan_kost', role: #AXIS_2, asDataPoint: true }]
 },

{
qualifier: 'KPIChart2',
chartType: #BAR,
description: 'Kostenentwicklung',
dimensions: ['projektart'],
measures: ['plan_kost', 'ist_kost'],
dimensionAttributes: [{dimension: 'projektart', role: #CATEGORY }],
measureAttributes: [
{measure: 'plan_kost', role: #AXIS_1, asDataPoint: true },
{measure: 'ist_kost', role: #AXIS_2, asDataPoint: true }
]
 }
 ]

@UI.presentationVariant:[
{ qualifier: 'KPI_IST',sortOrder: [{by: 'projektart', direction: #DESC }],
visualizations: [{ type: #AS_CHART, qualifier: 'KPIChart2' },{type: #AS_DATAPOINT,qualifier: 'KPIChart2'}]
},
//{
//qualifier: 'KPI_IST',sortOrder: [{by: 'programm', direction: #DESC }],
//visualizations: [{ type: #AS_CHART, qualifier: 'KPIChart2' }]
//},
{
qualifier: 'Default', visualizations: [{ type: #AS_CHART, qualifier: 'ChartDefault' }]
}
]

@UI.selectionVariant: [
{qualifier: 'KPI_IST',text: 'Ist Kosten'},
{qualifier: 'Default',text: 'Standard Ist Kosten'}
]

@UI.selectionPresentationVariant: [
{qualifier: 'KPI_IST',
presentationVariantQualifier: 'KPI_IST',
selectionVariantQualifier: 'KPI_IST'
},
{ qualifier: 'Default',
presentationVariantQualifier: 'Default',
selectionVariantQualifier: 'Default'
}
]

define view ZPPM_C_EWZ_ALP_1
  as select from zzppm_ewz_001
  association [0..*] to ZZPPM_C_EWZ_FINANCE as _toFinance on $projection.guid = _toFinance.headerguid
{

  key client,
  key guid,
      //      @UI.lineItem: [{ position: 1 }]
      nummer,
      //      @UI.lineItem: [{ position: 2 }]
      bezeichnung,

      @UI.lineItem: [{ position: 1 }]
      @UI.selectionField: [{ position:  1 }]
      @UI.identification: [{ position: 1 }]
      programm,
      @UI.selectionField: [{ position:  2 }]
      @UI.lineItem: [{ position: 2 }]
      @UI.identification: [{ position: 2 }]
      projektart,
      @UI.lineItem: [{ position: 3 }]
      @UI.selectionField: [{ position:  3 }]
      portfolio,

      manager,
      gesamt,
      finanzen,
      termin,
      umfang,
      ppi,
      start_d,
      ende_d,

      @UI.lineItem: [{ position: 4 }]
      @DefaultAggregation: #SUM
      @UI.identification: [{ position: 4 }]
      plan_kost,

      @UI.lineItem: [{ position: 5 }]
      @DefaultAggregation: #SUM
      @UI.identification: [{ position: 5 }]
      ist_kost,

      waers,

      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _toFinance
}
