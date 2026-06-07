@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Product Item Interface view'
define view entity ZI_PRDITM
  as select from zprod_item
  association to parent ZI_PRDHDR as _hdr on $projection.Itemid = _hdr.Itemid
{
  key itemid          as Itemid,
  key werks           as Plant,
      mfdate          as Mfdate,
      expirydate      as Expirydate,
      dimension       as Dimension,
      grossweight     as Grossweight,
      netweight       as Netweight,
      uom             as Uom,
      lgort           as Lgort,
      dmbtr           as Dmbtr,
      currency_code   as CurrencyCode,
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,

      _hdr
}
