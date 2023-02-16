@AbapCatalog.sqlViewName: 'ZZPPMVEWZH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EWZ PPM Header Data (Consumption)'

@OData.publish: true
@VDM.viewType: #CONSUMPTION
@Search.searchable: true
@UI.headerInfo.title.value: 'bezeichnung'
@UI.headerInfo.description.value: 'nummer'
@UI.headerInfo.typeName: 'PPM Item'
@UI.headerInfo.typeNamePlural: 'PPM Items'
@UI.headerInfo.imageUrl: 'imageewz'
@Metadata.allowExtensions: true

define root view ZZPPM_C_EWZ_HEADER
  as select from zzppm_ewz_001
  association [0..*] to ZZPPM_C_EWZ_FINANCE   as _toFinance   on $projection.guid = _toFinance.headerguid
  association [0..*] to ZZPPM_C_EWZ_INVOICE   as _toInvoice   on $projection.guid = _toInvoice.headerguid
  association [0..*] to ZZPPM_C_EWZ_MILESTONE as _toMilestone on $projection.guid = _toMilestone.headerguid
{
  key client,
  key guid,

      @UI.facet: [{id: ''}]
      nummer,
      bezeichnung,
      concat('http://google.com/search?q=', bezeichnung)                                                                                                                                           as url,
      manager                                                                                                                                                                                      as Manager,
      case gesamt
        when '@08@' then 'Genehmigt'
        when '@09@' then 'In Vorbereitung'
        when '@0A@' then 'Abgebrochen'
        else 'In Vorbereitung'
      end                                                                                                                                                                                          as Gesamt,
      case gesamt
        when '@08@' then 3 //Green
        when '@09@' then 2 //Yellow
        when '@0A@' then 1 //Red
        else 0
      end                                                                                                                                                                                          as GesamtCrytical,
      case finanzen
        when '@08@' then 3 //Green
        when '@09@' then 2 //Yellow
        when '@0A@' then 1 //Red
        else 0
      end                                                                                                                                                                                          as Finanzen,
      case termin
        when '@08@' then 3 //Green
        when '@09@' then 2 //Yellow
        when '@0A@' then 1 //Red
        else 0
      end                                                                                                                                                                                          as Termin,
      case umfang
        when '@08@' then 3 //Green
        when '@09@' then 2 //Yellow
        when '@0A@' then 1 //Red
        else 0
      end                                                                                                                                                                                          as Umfang,
      case ppi
        when '@08@' then 3 //Green
        when '@09@' then 2 //Yellow
        when '@0A@' then 1 //Red
        else 0
      end                                                                                                                                                                                          as PPI,
      start_d,
      ende_d,
      programm,
      projektart,
      portfolio,

      ist_kost,
      plan_kost,


      //      @Semantics.imageUrl: true
      //      //      @Semantics.url.mimeType: 'imageurl'
      //      favorit                                                                                                                                                                                      as Favorit,
      @Semantics.imageUrl: true
      'https://bit.ly/2rI5ffv'                                                                                                                                                                     as iconurl,
      @Semantics.imageUrl: true
      'sap-icon://add-favorite'                                                                                                                                                                    as imageurl,
      @Semantics.imageUrl: true
      'https://instagram.fzrh3-1.fna.fbcdn.net/vp/bea4ad9b6cd444b79ab34233225d7523/5E5F2CE3/t51.2885-19/s150x150/12224577_1649785138640849_993104452_a.jpg?_nc_ht=instagram.fzrh3-1.fna.fbcdn.net' as imageewz,
      'I am a sample Text'                                                                                                                                                                         as sampleText,

      56                                                                                                                                                                                           as progress,

      //      'thisIsaPassword'                                                                                                                                                                            as password,
      'Hier können Sie Notizen hinterlegen. So behalten Sie im Überblick, welche Aufgaben im Projekt noch zu erledigen sind.'                                                                      as notiz,
      /* Associations */
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _toFinance,
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _toInvoice,
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _toMilestone
}
