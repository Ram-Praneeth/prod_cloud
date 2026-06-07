@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Sold to Country View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_PRD_SOLD_CNTRY
  as projection on ZI_PRD_SOLD_CNTRY
{
  key Itemid,
  key Country,
      Countryname,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,


      _Header : redirected to parent ZC_PRDHDR
}
