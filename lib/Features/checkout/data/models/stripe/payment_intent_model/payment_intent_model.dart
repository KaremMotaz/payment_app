import 'package:json_annotation/json_annotation.dart';

import 'amount_details_model.dart';
import 'automatic_payment_methods_model.dart';
import 'payment_method_options_model.dart';

part 'payment_intent_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentIntentModel {
  final String id;
  final String object;
  final int amount;

  @JsonKey(name: 'amount_capturable')
  final int amountCapturable;

  @JsonKey(name: 'amount_details')
  final AmountDetailsModel amountDetails;

  @JsonKey(name: 'amount_received')
  final int amountReceived;

  final dynamic application;

  @JsonKey(name: 'application_fee_amount')
  final dynamic applicationFeeAmount;

  @JsonKey(name: 'automatic_payment_methods')
  final AutomaticPaymentMethodsModel automaticPaymentMethods;

  @JsonKey(name: 'canceled_at')
  final dynamic canceledAt;

  @JsonKey(name: 'cancellation_reason')
  final dynamic cancellationReason;

  @JsonKey(name: 'capture_method')
  final String captureMethod;

  @JsonKey(name: 'client_secret')
  final String clientSecret;

  @JsonKey(name: 'confirmation_method')
  final String confirmationMethod;

  final int created;
  final String currency;
  final dynamic customer;
  final dynamic description;

  @JsonKey(name: 'last_payment_error')
  final dynamic lastPaymentError;

  @JsonKey(name: 'latest_charge')
  final dynamic latestCharge;

  final bool livemode;
  final Map<String, dynamic> metadata;

  @JsonKey(name: 'next_action')
  final dynamic nextAction;

  @JsonKey(name: 'on_behalf_of')
  final dynamic onBehalfOf;

  @JsonKey(name: 'payment_method')
  final dynamic paymentMethod;

  @JsonKey(name: 'payment_method_options')
  final PaymentMethodOptionsModel paymentMethodOptions;

  @JsonKey(name: 'payment_method_types')
  final List<String> paymentMethodTypes;

  final dynamic processing;

  @JsonKey(name: 'receipt_email')
  final dynamic receiptEmail;

  final dynamic review;

  @JsonKey(name: 'setup_future_usage')
  final dynamic setupFutureUsage;

  final dynamic shipping;
  final dynamic source;

  @JsonKey(name: 'statement_descriptor')
  final dynamic statementDescriptor;

  @JsonKey(name: 'statement_descriptor_suffix')
  final dynamic statementDescriptorSuffix;

  final String status;

  @JsonKey(name: 'transfer_data')
  final dynamic transferData;

  @JsonKey(name: 'transfer_group')
  final dynamic transferGroup;

  const PaymentIntentModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    required this.amountDetails,
    required this.amountReceived,
    required this.application,
    required this.applicationFeeAmount,
    required this.automaticPaymentMethods,
    required this.canceledAt,
    required this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    required this.customer,
    required this.description,
    required this.lastPaymentError,
    required this.latestCharge,
    required this.livemode,
    required this.metadata,
    required this.nextAction,
    required this.onBehalfOf,
    required this.paymentMethod,
    required this.paymentMethodOptions,
    required this.paymentMethodTypes,
    required this.processing,
    required this.receiptEmail,
    required this.review,
    required this.setupFutureUsage,
    required this.shipping,
    required this.source,
    required this.statementDescriptor,
    required this.statementDescriptorSuffix,
    required this.status,
    required this.transferData,
    required this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentIntentModelToJson(this);
}