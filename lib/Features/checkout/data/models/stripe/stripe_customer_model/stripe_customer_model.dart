import 'package:json_annotation/json_annotation.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/stripe_customer_model/invoice_settings_model.dart';

part 'stripe_customer_model.g.dart';

@JsonSerializable(explicitToJson: true)
class StripeCustomerModel {
  final String id;
  final String object;
  final dynamic address;
  final int balance;
  final int created;
  final dynamic currency;

  @JsonKey(name: 'default_source')
  final dynamic defaultSource;

  final bool delinquent;
  final dynamic description;
  final String? email;

  @JsonKey(name: 'invoice_prefix')
  final String invoicePrefix;

  @JsonKey(name: 'invoice_settings')
  final InvoiceSettingsModel invoiceSettings;

  final bool livemode;
  final Map<String, dynamic> metadata;
  final String? name;

  @JsonKey(name: 'next_invoice_sequence')
  final int nextInvoiceSequence;

  final dynamic phone;

  @JsonKey(name: 'preferred_locales')
  final List<String> preferredLocales;

  final dynamic shipping;

  @JsonKey(name: 'tax_exempt')
  final String taxExempt;

  @JsonKey(name: 'test_clock')
  final dynamic testClock;

  const StripeCustomerModel({
    required this.id,
    required this.object,
    required this.address,
    required this.balance,
    required this.created,
    required this.currency,
    required this.defaultSource,
    required this.delinquent,
    required this.description,
    required this.email,
    required this.invoicePrefix,
    required this.invoiceSettings,
    required this.livemode,
    required this.metadata,
    required this.name,
    required this.nextInvoiceSequence,
    required this.phone,
    required this.preferredLocales,
    required this.shipping,
    required this.taxExempt,
    required this.testClock,
  });

  factory StripeCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$StripeCustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$StripeCustomerModelToJson(this);
}


