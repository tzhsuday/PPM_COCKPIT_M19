@AbapCatalog.sqlViewName: 'ZZPPMIPROJCATVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'SAP PPM Project Category Value Help (Basic)'

@Search.searchable: true
define view ZZPPM_I_PROJ_CAT_VALUEHELP
  as select from rpm_proj_cat_t
  association [0..*] to ZZPPM_I_PROJ_CAT_TEXT as _proj_cat_text on  $projection.category = _proj_cat_text.category
                                                                and _proj_cat_text.langu = $session.system_language
{
      //rpm_proj_cat_t
      @ObjectModel.text.association: '_Text'
      @Search.defaultSearchElement: true
  key category,
  key langu,
      text,
      textc,
      _proj_cat_text

}
where
  langu = $session.system_language
