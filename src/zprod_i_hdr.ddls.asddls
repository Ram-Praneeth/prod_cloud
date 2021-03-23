@AbapCatalog.sqlViewName: 'ZPROD_I_HDRS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Header Basic View'
define view ZPROD_I_HDR
  as select from zprod_hdr
{
  key itemid     as Itemid,
      itemclass  as Itemclass,
      itemsclass as Itemsclass,
      manftr     as Manftr,
      mnfaddr    as Mnfaddr,
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at
}
