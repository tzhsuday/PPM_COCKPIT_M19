@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View for Project Phase'
@Metadata.allowExtensions: true
define view entity ZC_PROJ_PHASE2 as projection on ZI_PROJ_PHASE2 {
    
    key Guid,
    
    Headerguid,
    
    @EndUserText.label: 'Ampel'
    Icon,
    
    @EndUserText.label: 'Phase'
    Phase,
    
    @EndUserText.label: 'Beschreibung'
    Description,
    
    @EndUserText.label: 'Status'
    Status,
    
    @EndUserText.label: 'Planende'
    PlanFinish,
    
    @EndUserText.label: 'Ist-Ende'
    CurrFinish,
    /* Associations */
    _Header : redirected to parent ZC_PROJ_HEADER2
}
