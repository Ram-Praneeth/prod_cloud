@EndUserText.label: 'Product Item Projection view'
@AccessControl.authorizationCheck: #CHECK

@UI.headerInfo: {
                  typeName: 'Service Order Item',
                  typeNamePlural: 'Service Order Items',
                  title: { type: #STANDARD, value: 'ItemID' }
                }

@ObjectModel.semanticKey: ['ItemID']

define view entity ZC_PRDITM
  as projection on ZCO_PRDITM
{

      @UI.facet: [
                  {type: #COLLECTION, position: 10, id: '_itm', label: 'Item details'},
                  {type: #FIELDGROUP_REFERENCE, position: 10, targetQualifier: 'Item1',parentId: '_itm', isSummary: true, isPartOfPreview: true},
                  {type: #FIELDGROUP_REFERENCE, position: 20, targetQualifier: 'Item2',parentId: '_itm', isSummary: true, isPartOfPreview: true}
                 ]

      @UI.lineItem: [{position:10,importance: #HIGH, label:'Product Id' }]
      @UI.fieldGroup: [{qualifier: 'Item1', label:'Product Id', position:10,importance: #HIGH}]
  key itemid as ItemID,

      @UI.lineItem: [{position:20,importance: #HIGH, label: 'Region' }]
      @UI.fieldGroup: [{qualifier: 'Item1', position:20, label: 'Region',importance: #HIGH}]
  key region as Region,

      @UI.lineItem: [{position:30,importance: #MEDIUM , label: 'Manufacturing Date'}]
      @UI.fieldGroup: [{qualifier: 'Item1', position:30, label: 'Manufacturing Date',importance: #HIGH}]
      mfdate as ManufacturingDate,

      @UI.lineItem: [{position:40,importance: #MEDIUM , label: 'Plant'}]
      @UI.fieldGroup: [{qualifier: 'Item1', position:40, label: 'Plant',importance: #HIGH}]
      werks  as Plant,


      @UI.lineItem: [{position:50,importance: #MEDIUM , label: 'Product Price'}]
      @UI.fieldGroup: [{qualifier: 'Item1', position:50, label: 'Product Price Price',importance: #HIGH}]
      @Semantics.amount.currencyCode: 'currency_code'
      dmbtr  as Price,


      @Consumption.valueHelpDefinition:
                              [{
                                 entity:{ name: 'I_Currency',
                                          element: 'Currency' }
                              }]
      currency_code,

      /* Associations */
      _hdr : redirected to parent ZC_PRDHDR
}
