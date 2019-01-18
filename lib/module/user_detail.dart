import 'package:json_annotation/json_annotation.dart'; 
  
part 'user_detail.g.dart';


@JsonSerializable()
  class UserDetail extends Object {

  @JsonKey(name: 'chapterTops')
  List<dynamic> chapterTops;

  @JsonKey(name: 'collectIds')
  List<dynamic> collectIds;

  @JsonKey(name: 'email')
  String email;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'password')
  String password;

  @JsonKey(name: 'token')
  String token;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'username')
  String username;

  UserDetail(this.chapterTops,this.collectIds,this.email,this.icon,this.id,this.password,this.token,this.type,this.username,);

  factory UserDetail.fromJson(Map<String, dynamic> srcJson) => _$UserDetailFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserDetailToJson(this);

}

  
