@AbapCatalog.sqlViewName: 'ZZPPMVEWZM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'EWZ PPM Meilensteine'

@OData.publish: true
@VDM.viewType: #CONSUMPTION
@ObjectModel:{
semanticKey:  [ 'guid' ],
representativeKey: 'guid',
transactionalProcessingUnitRoot: true,   //identifies this entity as root
transactionalProcessingEnabled: true,
createEnabled: false,
updateEnabled: true,
deleteEnabled: false
}

@Metadata.allowExtensions: true
@UI.headerInfo.typeName: 'Meilenstein'
@UI.headerInfo.typeNamePlural: 'Meilensteine'

define view ZZPPM_C_EWZ_MILESTONE
  as select from zzppm_ewz_004
{
      //zzppm_ewz_004
      @UI.hidden: true
      @UI.lineItem: [{ exclude: true }]
  key client,
      @UI.hidden: true
      @UI.lineItem: [{ exclude: true }]
  key headerguid,
      @UI.hidden: true
      @UI.lineItem: [{ exclude: true }]
  key guid,
      @UI.hidden: true
      @UI.lineItem: [{ exclude: true }]
      icon,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      @ObjectModel.readOnly: true
      phase,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      @ObjectModel.readOnly: true
      description,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      @ObjectModel.mandatory: true
      status,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      @ObjectModel.mandatory: true
      plan_finish,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      @ObjectModel.mandatory: true
      curr_finish

      //      @UI.identification: [{ position: 10 }]
      //      @UI.lineItem: [{ position: 10, iconUrl: 'iconPhase' }]
      //      @Semantics.imageUrl: true
      //      case phase
      //      when 'X' then 'sap-icon://chevron-phase'
      //      else 'sap-icon://project-definition-triangle'
      //      end as iconPhase

      //      @UI.lineItem: [{ position: 20, url: 'iconPriject', iconUrl: 'iconProject' }]
      //      @Semantics.imageUrl: true
      //      //      case phase
      //      //      when 'X' then ' '
      //      //      else 'sap-icon://project-definition-triangle'
      //      //      end as iconProject
      //      case phase
      //      when 'X' then 'https://experience.sap.com/files/guidelines/icons_sap/ICONS/S_B_COLR.GIF'
      //      else 'https://experience.sap.com/files/guidelines/icons_sap/ICONS/S_XVNODE.GIF'
      //      end as iconProject
}
