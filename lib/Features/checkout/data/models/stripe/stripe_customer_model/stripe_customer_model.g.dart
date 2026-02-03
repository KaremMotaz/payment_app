// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripe_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StripeCustomerModel _$StripeCustomerModelFromJson(Map<String, dynamic> json) =>
    StripeCustomerModel(
      id: json['id'] as String,
      object: json['object'] as String,
      address: json['address'],
      balance: (json['balance'] as num).toInt(),
      created: (json['created'] as num).toInt(),
      currency: json['currency'],
      defaultSource: json['default_source'],
      delinquent: json['delinquent'] as bool,
      description: json['description'],
      email: json['email'] as String?,
      invoicePrefix: json['invoice_prefix'] as String,
      invoiceSettings: InvoiceSettingsModel.fromJson(
        json['invoice_settings'] as Map<String, dynamic>,
      ),
      livemode: json['livemode'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>,
      name: json['name'] as String?,
      nextInvoiceSequence: (json['next_invoice_sequence'] as num).toInt(),
      phone: json['phone'],
      preferredLocales: (json['preferred_locales'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      shipping: json['shipping'],
      taxExempt: json['tax_exempt'] as String,
      testClock: json['test_clock'],
    );

Map<String, dynamic> _$StripeCustomerModelToJson(
  StripeCustomerModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'address': instance.address,
  'balance': instance.balance,
  'created': instance.created,
  'currency': instance.currency,
  'default_source': instance.defaultSource,
  'delinquent': instance.delinquent,
  'description': instance.description,
  'email': instance.email,
  'invoice_prefix': instance.invoicePrefix,
  'invoice_settings': instance.invoiceSettings.toJson(),
  'livemode': instance.livemode,
  'metadata': instance.metadata,
  'name': instance.name,
  'next_invoice_sequence': instance.nextInvoiceSequence,
  'phone': instance.phone,
  'preferred_locales': instance.preferredLocales,
  'shipping': instance.shipping,
  'tax_exempt': instance.taxExempt,
  'test_clock': instance.testClock,
};
