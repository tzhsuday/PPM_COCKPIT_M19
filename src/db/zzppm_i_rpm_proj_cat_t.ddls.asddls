@AbapCatalog.sqlViewName: 'ZZPPMIRPMPROJCAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'SAP PPM Project Category (Basic)'

@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'ProjectCategory'
@Search.searchable: true

define view ZZPPM_I_RPM_PROJ_CAT_T
  as select from rpm_proj_cat_t
{
      //RPM_PROJ_CAT_T
  key mandt,
      @Semantics.language: true -- identifies the language
  key langu,
      @Semantics.text: true            -- identifies the text field
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
  key category,
      text,
      textc
}
where
  langu = $session.system_language
