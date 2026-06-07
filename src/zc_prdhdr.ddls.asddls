@EndUserText.label: 'Product Header Projection view'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@ObjectModel.semanticKey: ['ItemID']
@ObjectModel.representativeKey: 'ItemID'

@Search.searchable: true

define root view entity ZC_PRDHDR
  provider contract transactional_query
  as projection on ZI_PRDHDR
{

  key     Itemid,
          Itemname,

          // This Virtual element fields controls the fields and tabs to be displayed while Create
          // Assign the field name to the Annotation @UI.hidden to hide the fields and tabs in the UI
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_HIDE_FIELDS_ONCREATE'
  virtual HideFields : abap_boolean,

          Itemclass,
          Itemsclass,
          Description,
          Mtart,
          IsProduct,
          Manftr,
          Origincountry,
          Mnfaddr,
          CreatedOn,
          ChangedOn,
          CreatedBy,
          CreatedAt,
          LastChangedAt,
          LastChangedBy,
          LocalLastChangedAt,


          /* Compositions */
          _itm       : redirected to composition child ZC_PRDITM,
          _soldcntry : redirected to composition child ZC_PRD_SOLD_CNTRY
}
