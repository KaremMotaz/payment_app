import 'package:json_annotation/json_annotation.dart';

part 'payment_intent_input_model.g.dart';

@JsonSerializable()
class PaymentIntentInputModel {
  final String amount;
  final String currency;
  @JsonKey(name: 'customer')
  final String customerId;

  PaymentIntentInputModel({
    required this.amount,
    required this.currency,
    required this.customerId,
  });

  factory PaymentIntentInputModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentInputModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentIntentInputModelToJson(this);
}
