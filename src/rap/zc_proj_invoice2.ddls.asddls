@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View for Project Invoice'
@Metadata.allowExtensions: true
define view entity ZC_PROJ_INVOICE2 as projection on ZI_PROJ_INVOICE2 {
    
    key Guid,
    
    Financeguid,
    
    Headerguid,
    
    @EndUserText.label: 'Geschäftsjahr'
    Gjahr,
    
    @EndUserText.label: 'Belegnummer'
    Belnr,
    
    @EndUserText.label: 'Buchungskreis'
    Bukrs,
    
    @EndUserText.label: 'Belegart'
    Blart,
    
    @EndUserText.label: 'Belegdatum'
    Bldat,
    
    @EndUserText.label: 'Buchungsdatum'
    Budat,
    Ebeln,
    Ebelp,
    
    @EndUserText.label: 'Buchungstext'
    Sgtxt,
    
    @EndUserText.label: 'Betrag'
    Dmbtr,
    
    @EndUserText.label: 'Währung'
    Waers,
    /* Associations */
    _Finance : redirected to parent ZC_PROJ_FINANCE2,
    _Header  : redirected to ZC_PROJ_HEADER2
}
