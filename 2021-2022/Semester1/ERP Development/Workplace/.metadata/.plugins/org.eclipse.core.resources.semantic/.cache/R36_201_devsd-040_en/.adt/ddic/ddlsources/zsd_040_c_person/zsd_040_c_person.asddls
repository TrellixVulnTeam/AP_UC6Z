@AbapCatalog.sqlViewName: 'ZSD040C_PERSON'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'fiori personnel view fiori app'

@OData.publish: true
@Search.searchable: true
@UI.headerInfo: {
  typeName: 'Personnel info',
  title: {
    value: 'Personel_Number',
    type: #STANDARD
  },
description: {
    value: 'Fullname',
    type: #STANDARD
  }
}

define view ZSD_040_C_PERSON as select from ZSD_040_PERSONNEL_OVERVIEW {
 

    @UI.lineItem: [{position: 10, label: 'Personel Number'}]
    key Personel_Number,
    
    @UI.lineItem: [{position: 20, label: 'Lastname'}]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    
    Lastname,
    
    @UI.lineItem: [{position: 30, label: 'Firstname'}]
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7  
    
    
    Firstname,
    
    @UI.lineItem: [{position: 40, label: 'birthday'}]
    @UI.selectionField.position : 10
    @UI.dataPoint.title : 'birthday'
 
    cast(Birthday as abap.dats(8)) as Birthday,
    
    @UI.lineItem: [{position: 50, label: 'Company Code'}]
    @UI.selectionField.position : 20
    @UI.dataPoint.title : 'company Code'
    
    Company_Code,
    
    
    concat_with_space(Lastname, Firstname, 1) as Fullname
    
    
    
    
}
