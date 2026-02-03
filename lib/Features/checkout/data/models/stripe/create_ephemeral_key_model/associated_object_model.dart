import 'package:json_annotation/json_annotation.dart';

part 'associated_object_model.g.dart';

@JsonSerializable()
class AssociatedObjectModel {
  final String id;
  final String type;

  const AssociatedObjectModel({required this.id, required this.type});

  factory AssociatedObjectModel.fromJson(Map<String, dynamic> json) =>
      _$AssociatedObjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$AssociatedObjectModelToJson(this);
}
