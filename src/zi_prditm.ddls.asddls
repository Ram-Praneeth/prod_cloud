@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Item Interface view'
define view entity ZI_PRDITM
  as select from zprod_item
  association to parent ZI_PRDHDR as _hdr on $projection.itemid = _hdr.itemid
{

  key    itemid,
  key    region,
         mfdate,
         werks,
         @Semantics.amount.currencyCode: 'currency_code'
         dmbtr,
         currency_code,

         _hdr // Make association public
}
