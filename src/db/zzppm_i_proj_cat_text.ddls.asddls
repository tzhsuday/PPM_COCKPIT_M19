@AbapCatalog.sqlViewName: 'ZZPPMIPROJCATT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'SAP PPM Project Category Text (Basic)'

@ObjectModel.dataCategory: #TEXT
@ObjectModel.representativeKey: 'ProjectCategory'
@Search.searchable: true

define view ZZPPM_I_PROJ_CAT_TEXT
  as select from rpm_proj_cat_t
{
      //rpm_proj_cat_t
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
