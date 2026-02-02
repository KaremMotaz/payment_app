import 'package:json_annotation/json_annotation.dart';

part 'amount_details_model.g.dart';
@JsonSerializable(explicitToJson: true)
class AmountDetailsModel {
  final Map<String, dynamic> tip;

  const AmountDetailsModel({required this.tip});

  factory AmountDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AmountDetailsModelToJson(this);
}