@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View for Project Header'
@Metadata.allowExtensions: true
@OData.publish: true
@VDM.viewType: #CONSUMPTION
@Search.searchable: true
define root view entity ZC_PROJ_HEADER2 as projection on ZI_PROJ_HEADER2 {
    key Guid,
    
    @EndUserText.label: 'Projektnummer'
    @Search.defaultSearchElement: true
    Nummer,
    
    @EndUserText.label: 'Bezeichnung'
    @Search.defaultSearchElement: true
    Bezeichnung,
    
    @EndUserText.label: 'Projektleiter'
    Manager,
    
    @EndUserText.label: 'Gesamt'
    Gesamt,
    
    @EndUserText.label: 'Finanzen'
    Finanzen,
    
    FinanzenCriticality,
  
    @EndUserText.label: 'Termin'
    Termin,
    
    @EndUserText.label: 'Umfang'
    Umfang,
    
    @EndUserText.label: 'PPI'
    Ppi,
    
    @EndUserText.label: 'Projektstart'
    StartD,
    
    @EndUserText.label: 'Projektende'
    EndeD,
    
    @EndUserText.label: 'Favorit'
    Favorit,
    
    @EndUserText.label: 'Plankosten'
    PlanKost,
    
    @EndUserText.label: 'Istkosten'
    IstKost,
    
    @EndUserText.label: 'Währung'
    Waers,
    
    @EndUserText.label: 'Programm'
    Programm,
    
    @EndUserText.label: 'Projektart'
    Projektart,
    
    @EndUserText.label: 'Portfolio'
    Portfolio,
    
    _Finance : redirected to composition child ZC_PROJ_FINANCE2,
    
    _Phase : redirected to composition child ZC_PROJ_PHASE2,
    
    _Status : redirected to composition child ZC_PROJ_STATUS2,
    
    _Invoice : redirected to ZC_PROJ_INVOICE2
}
