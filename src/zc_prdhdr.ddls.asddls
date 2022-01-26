@EndUserText.label: 'Product Header Projection view'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@UI: {
 headerInfo: {
               typeName: 'Product Header',
               typeNamePlural: 'Product Header',
               title: { type: #STANDARD, value: 'ItemID' } }
              }

@Search.searchable: true

@ObjectModel.semanticKey: ['ItemID']
@ObjectModel.representativeKey: 'ItemID'


define root view entity ZC_PRDHDR
  as projection on ZCO_PRDHDR
{
      //ZI_SERV_ORDHRD
      @UI.facet: [
                  {
                  id: 'ProductHeader',
                  type: #COLLECTION,
                  position: 10,
                  label: 'Product Header'
                  },
                  {
                  type: #FIELDGROUP_REFERENCE,
                  position: 10,
                  targetQualifier: 'GeneralData1',
                  parentId: 'ProductHeader',
                  isSummary: true,
                  isPartOfPreview: true
                  },
                  {
                  type: #FIELDGROUP_REFERENCE,
                  position: 20,
                  targetQualifier: 'GeneralData2',
                  parentId: 'ProductHeader',
                  isSummary: true,
                  isPartOfPreview: true
                  },
                  {
                  id: '_itm',
                  purpose: #STANDARD,
                  type: #LINEITEM_REFERENCE,
                  label: 'Product Items',
                  position: 10,
                  targetElement: '_itm'
                  }
              ]

      @UI.lineItem: [{position: 10, importance: #HIGH, label: 'Product Id' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 10,importance: #HIGH, label: 'Product Id' }]
      @UI.selectionField: [{position: 10 }]
      @EndUserText.quickInfo: 'Product Identification'
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      //      @UI.hidden: #(CreateAction)
  key itemid          as ItemID,

      @UI.lineItem: [{position: 20, importance: #HIGH, label: 'Item name' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 20,importance: #HIGH, label: 'Item name' }]
      itemname        as Itemname,

      @UI.lineItem: [{position: 30, importance: #HIGH, label: 'Item Class' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 30,importance: #HIGH, label: 'Item Class' }]
      @UI.selectionField: [{position: 30 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      itemclass       as ItemClass,

      @UI.lineItem: [{position: 40, importance: #HIGH, label: 'Item Subclass' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 40,importance: #HIGH, label: 'Item Subclass' }]
      @UI.selectionField: [{position: 40 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      itemsclass      as ItemSubclass,

      @UI.lineItem: [{position: 50, importance: #HIGH, label: 'Category'  }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 50,importance: #HIGH, label: 'Category' }]
      @UI.selectionField: [{position: 50 }]
      Category        as Category,

      @UI.lineItem: [{position: 60, importance: #HIGH, label: 'Material Type' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 60,importance: #HIGH, label: 'Material Type' }]
      @UI.selectionField: [{position: 50 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.9
      @Consumption.valueHelpDefinition: [{ entity :{name : 'ZC_MTART', element: 'mtart' } }]
      mtart           as MaterialType,

      @UI.lineItem: [{position: 70, importance: #HIGH, label: 'Manufacturer' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 70,importance: #HIGH, label: 'Manufacturer' }]
      manftr          as Manufacturer,

      @UI.lineItem: [{position: 80, importance: #HIGH,  value: 'ManufacturerAddress' , label: 'Manufacturer"s Address' }]
      @UI.fieldGroup: [{qualifier: 'GeneralData1',position: 80,importance: #HIGH, label: 'Manufacturer"s Address' }]
      mnfaddr         as ManufacturerAddress,

      @UI.hidden: true
      last_changed_at as LastChangedAt,

      /* Associations */
      _itm : redirected to composition child ZC_PRDITM
}
