import 'package:json_annotation/json_annotation.dart';

import 'card_options_model.dart';
import 'link_options_model.dart';

part 'payment_method_options_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentMethodOptionsModel {
  final CardOptionsModel card;
  final LinkOptionsModel link;

  const PaymentMethodOptionsModel({required this.card, required this.link});

  factory PaymentMethodOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodOptionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodOptionsModelToJson(this);
}
