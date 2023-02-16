@AbapCatalog.sqlViewName: 'ZZPPMIRPMITEMD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Item Persistent Data (Basic)'

@VDM.viewType: #BASIC
define view zzppm_i_rpm_item_d
  as select from /rpm/item_d
{
      ///rpm/item_d
  key client,
  key guid,
      external_id,
      portfolio_guid,
      parent_guid,
      category,
      subcategory,
      phase,
      ptype,
      ttype,
      riska,
      probt,
      probc,
      headc,
      costd,
      costl,
      npv,
      currency,
      location,
      geography,
      rpm_changed_on,
      periodtype,
      unit,
      forecast_start,
      planned_start,
      actual_start,
      forecast_finish,
      planned_finish,
      actual_finish,
      escalation,
      item_type,
      portfl_item_guid,
      ecv,
      priority_group,
      changed_by,
      version_item,
      item_class,
      master_item_guid,
      status,
      cap_periodtype,
      initiative_guid,
      discount_rate,
      act_dpcpt_guid,
      frcst_bgt_total,
      frcst_bgtannual,
      frcst_costtotal,
      frcst_cost_ytd,
      template_guid,
      is_global,
      ea_dummy
}
