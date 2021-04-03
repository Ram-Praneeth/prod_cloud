@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Header Interface view'
define root view entity ZI_PRDHDR
  as select from zprod_hdr
  composition [0..*] of ZI_PRDITM as _itm
{

  key itemid,
      itemclass,
      itemsclass,
      manftr,
      mnfaddr,

      /*-- Admin data --*/
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at, -- used as etag field

      _itm // Make association public
}
