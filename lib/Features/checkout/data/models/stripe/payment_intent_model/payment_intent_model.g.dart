// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntentModel _$PaymentIntentModelFromJson(Map<String, dynamic> json) =>
    PaymentIntentModel(
      id: json['id'] as String,
      object: json['object'] as String,
      amount: (json['amount'] as num).toInt(),
      amountCapturable: (json['amount_capturable'] as num).toInt(),
      amountDetails: AmountDetailsModel.fromJson(
        json['amount_details'] as Map<String, dynamic>,
      ),
      amountReceived: (json['amount_received'] as num).toInt(),
      application: json['application'],
      applicationFeeAmount: json['application_fee_amount'],
      automaticPaymentMethods: AutomaticPaymentMethodsModel.fromJson(
        json['automatic_payment_methods'] as Map<String, dynamic>,
      ),
      canceledAt: json['canceled_at'],
      cancellationReason: json['cancellation_reason'],
      captureMethod: json['capture_method'] as String,
      clientSecret: json['client_secret'] as String,
      confirmationMethod: json['confirmation_method'] as String,
      created: (json['created'] as num).toInt(),
      currency: json['currency'] as String,
      customer: json['customer'],
      description: json['description'],
      lastPaymentError: json['last_payment_error'],
      latestCharge: json['latest_charge'],
      livemode: json['livemode'] as bool,
      metadata: json['metadata'] as Map<String, dynamic>,
      nextAction: json['next_action'],
      onBehalfOf: json['on_behalf_of'],
      paymentMethod: json['payment_method'],
      paymentMethodOptions: PaymentMethodOptionsModel.fromJson(
        json['payment_method_options'] as Map<String, dynamic>,
      ),
      paymentMethodTypes: (json['payment_method_types'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      processing: json['processing'],
      receiptEmail: json['receipt_email'],
      review: json['review'],
      setupFutureUsage: json['setup_future_usage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statement_descriptor'],
      statementDescriptorSuffix: json['statement_descriptor_suffix'],
      status: json['status'] as String,
      transferData: json['transfer_data'],
      transferGroup: json['transfer_group'],
    );

Map<String, dynamic> _$PaymentIntentModelToJson(PaymentIntentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'amount': instance.amount,
      'amount_capturable': instance.amountCapturable,
      'amount_details': instance.amountDetails.toJson(),
      'amount_received': instance.amountReceived,
      'application': instance.application,
      'application_fee_amount': instance.applicationFeeAmount,
      'automatic_payment_methods': instance.automaticPaymentMethods.toJson(),
      'canceled_at': instance.canceledAt,
      'cancellation_reason': instance.cancellationReason,
      'capture_method': instance.captureMethod,
      'client_secret': instance.clientSecret,
      'confirmation_method': instance.confirmationMethod,
      'created': instance.created,
      'currency': instance.currency,
      'customer': instance.customer,
      'description': instance.description,
      'last_payment_error': instance.lastPaymentError,
      'latest_charge': instance.latestCharge,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'next_action': instance.nextAction,
      'on_behalf_of': instance.onBehalfOf,
      'payment_method': instance.paymentMethod,
      'payment_method_options': instance.paymentMethodOptions.toJson(),
      'payment_method_types': instance.paymentMethodTypes,
      'processing': instance.processing,
      'receipt_email': instance.receiptEmail,
      'review': instance.review,
      'setup_future_usage': instance.setupFutureUsage,
      'shipping': instance.shipping,
      'source': instance.source,
      'statement_descriptor': instance.statementDescriptor,
      'statement_descriptor_suffix': instance.statementDescriptorSuffix,
      'status': instance.status,
      'transfer_data': instance.transferData,
      'transfer_group': instance.transferGroup,
    };
