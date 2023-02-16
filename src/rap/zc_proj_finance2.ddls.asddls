@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for Project Finance'
@Metadata.allowExtensions: true
define view entity ZC_PROJ_FINANCE2 as projection on ZI_PROJ_FINANCE2 {
    key Guid,
    Headerguid,
    @EndUserText.label: 'Geschäftsjahr'
    Gjahr,
    @EndUserText.label: 'Kredit'
    Kredit,
    @EndUserText.label: 'Währung'
    KreditW,
    @EndUserText.label: 'Forecast'
    Forecast,
    @EndUserText.label: 'Währung'
    ForecastW,
    @EndUserText.label: 'Obligo'
    Obligo,
    @EndUserText.label: 'Währung'
    ObligoW,
    @EndUserText.label: 'Ist-Kosten'
    Istkosten,
    @EndUserText.label: 'Währung'
    IstkostenW,
    /* Associations */
    _Header : redirected to parent ZC_PROJ_HEADER2,
    _Invoice : redirected to composition child ZC_PROJ_INVOICE2
}
