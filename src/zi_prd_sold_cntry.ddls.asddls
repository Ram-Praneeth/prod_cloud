@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Sold to Country View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_PRD_SOLD_CNTRY
  as select from zprod_sold_cntry
  association to parent ZI_PRDHDR as _Header on $projection.Itemid = _Header.Itemid
{
  key itemid                as Itemid,
  key country               as Country,
      countryname           as Countryname,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _Header
}
