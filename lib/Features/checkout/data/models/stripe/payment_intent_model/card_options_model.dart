import 'package:json_annotation/json_annotation.dart';

part 'card_options_model.g.dart';
@JsonSerializable()
class CardOptionsModel {
  final dynamic installments;

  @JsonKey(name: 'mandate_options')
  final dynamic mandateOptions;

  final dynamic network;

  @JsonKey(name: 'request_three_d_secure')
  final String requestThreeDSecure;

  const CardOptionsModel({
    required this.installments,
    required this.mandateOptions,
    required this.network,
    required this.requestThreeDSecure,
  });

  factory CardOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$CardOptionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardOptionsModelToJson(this);
}