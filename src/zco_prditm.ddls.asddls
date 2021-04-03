@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Product Item Composite view'
define view entity ZCO_PRDITM
  as select from ZI_PRDITM
  association to parent ZCO_PRDHDR as _hdr on $projection.itemid = _hdr.itemid
{

  key   itemid,
  key   region,
        mfdate,
        werks,
        dmbtr,
        currency_code,

        _hdr // Make association public
}
