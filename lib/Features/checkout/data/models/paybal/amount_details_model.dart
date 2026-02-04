import 'package:json_annotation/json_annotation.dart';

part 'amount_details_model.g.dart';

@JsonSerializable()
class AmountDetailsModel {
  final String subtotal;
  final String shipping;

  @JsonKey(name: 'shipping_discount')
  final num shippingDiscount;

  AmountDetailsModel({
    required this.subtotal,
    required this.shipping,
    required this.shippingDiscount,
  });

  factory AmountDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AmountDetailsModelToJson(this);
}
