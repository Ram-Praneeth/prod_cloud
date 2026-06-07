@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Header Interface view'

@Search.searchable: true
define root view entity ZI_PRDHDR
  as select from zprod_hdr
  composition [0..*] of ZI_PRDITM         as _itm
  composition [0..*] of ZI_PRD_SOLD_CNTRY as _soldcntry

{

  key itemid                as Itemid,
  
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      itemname              as Itemname,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7      
      itemclass             as Itemclass,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7      
      itemsclass            as Itemsclass,
      
      description           as Description,        
      mtart                 as Mtart,
      is_product_ok            as IsProduct,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7      
      manftr                as Manftr,
      
      origincountry         as Origincountry,
      mnfaddr               as Mnfaddr,
      created_on            as CreatedOn,
      changed_on            as ChangedOn,
      
//  ---------------------Audit fields-----------------------
     
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

//  ------------ Child Compositions ----------------------- 
      _itm,
      _soldcntry
}
