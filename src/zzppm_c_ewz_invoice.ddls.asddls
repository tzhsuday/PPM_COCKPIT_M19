@AbapCatalog.sqlViewName: 'ZZPPMVEWZI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EWZ PPM Invoice Data (Consumption)'

@OData.publish: true
@VDM.viewType: #CONSUMPTION

@Metadata.allowExtensions: true

@UI.headerInfo.typeName: 'Beleg'
@UI.headerInfo.typeNamePlural: 'Belege'

define view ZZPPM_C_EWZ_INVOICE
  as select from zzppm_ewz_003
{
      //zzppm_ewz_003
  key client,
  key headerguid,
  key guid,
      gjahr,
      belnr,
      bukrs,
      blart,
      bldat,
      budat,
      ebeln,
      ebelp,
      sgtxt,
      dmbtr,
      waers
}
