@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View for Project Status'
@Metadata.allowExtensions: true
define view entity ZC_PROJ_STATUS2 as projection on ZI_PROJ_STATUS2 {
    key Guid,
    Headerguid,
    
    @EndUserText.label: 'Datum'
    StatusDate,
    
    @EndUserText.label: 'Finanzampel'
    Finanzen,
    
    @EndUserText.label: 'Terminampel'
    Termin,
    
    @EndUserText.label: 'Umfangampel'
    Umfang,
    
    @EndUserText.label: 'PPI-Ampel'
    Ppi,
    
    @EndUserText.label: 'Statusbeschreibung'
    Description,
    
    /* Associations */
    _Header : redirected to parent ZC_PROJ_HEADER2
}
