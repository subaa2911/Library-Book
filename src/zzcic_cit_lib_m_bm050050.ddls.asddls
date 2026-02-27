@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'Zzcicit_Lib_M_BM050050'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_LIB_M_BM050050
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_LIB_M_BM050050
  association [1..1] to ZZCIR_CIT_LIB_M_BM050050 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  Title,
  Author,
  Category,
  Publisher,
  PublishYear,
  Edition,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
