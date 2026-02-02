import 'package:json_annotation/json_annotation.dart';
part 'automatic_payment_methods_model.g.dart';

@JsonSerializable()
class AutomaticPaymentMethodsModel {
  final bool enabled;

  const AutomaticPaymentMethodsModel({required this.enabled});

  factory AutomaticPaymentMethodsModel.fromJson(Map<String, dynamic> json) =>
      _$AutomaticPaymentMethodsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AutomaticPaymentMethodsModelToJson(this);
}
