import 'package:json_annotation/json_annotation.dart';

part 'invoice_settings_model.g.dart';

@JsonSerializable()
class InvoiceSettingsModel {
  @JsonKey(name: 'custom_fields')
  final dynamic customFields;

  @JsonKey(name: 'default_payment_method')
  final dynamic defaultPaymentMethod;

  final dynamic footer;

  @JsonKey(name: 'rendering_options')
  final dynamic renderingOptions;

  const InvoiceSettingsModel({
    required this.customFields,
    required this.defaultPaymentMethod,
    required this.footer,
    required this.renderingOptions,
  });

  factory InvoiceSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSettingsModelFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceSettingsModelToJson(this);
}