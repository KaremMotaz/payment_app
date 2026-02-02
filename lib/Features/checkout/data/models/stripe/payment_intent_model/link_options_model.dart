import 'package:json_annotation/json_annotation.dart';

part 'link_options_model.g.dart';

@JsonSerializable()
class LinkOptionsModel {
  @JsonKey(name: 'persistent_token')
  final dynamic persistentToken;

  const LinkOptionsModel({required this.persistentToken});

  factory LinkOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$LinkOptionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$LinkOptionsModelToJson(this);
}
