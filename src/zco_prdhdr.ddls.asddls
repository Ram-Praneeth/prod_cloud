@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Header Composite view'
define root view entity ZCO_PRDHDR
  as select from ZI_PRDHDR
  composition [0..*] of ZCO_PRDITM as _itm
{
  key itemid,
      itemname,
      itemclass,
      itemsclass,
      case itemclass
      when 'ELECTRONICS' then 'ELE'
      else ''
      end as Category,
      manftr,
      mnfaddr,
      created_by,
      created_at,
      last_changed_by,
      last_changed_at,

      /* Associations */
      _itm
}
