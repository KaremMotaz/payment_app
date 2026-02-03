// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceSettingsModel _$InvoiceSettingsModelFromJson(
  Map<String, dynamic> json,
) => InvoiceSettingsModel(
  customFields: json['custom_fields'],
  defaultPaymentMethod: json['default_payment_method'],
  footer: json['footer'],
  renderingOptions: json['rendering_options'],
);

Map<String, dynamic> _$InvoiceSettingsModelToJson(
  InvoiceSettingsModel instance,
) => <String, dynamic>{
  'custom_fields': instance.customFields,
  'default_payment_method': instance.defaultPaymentMethod,
  'footer': instance.footer,
  'rendering_options': instance.renderingOptions,
};
