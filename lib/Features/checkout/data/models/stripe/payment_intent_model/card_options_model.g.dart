// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardOptionsModel _$CardOptionsModelFromJson(Map<String, dynamic> json) =>
    CardOptionsModel(
      installments: json['installments'],
      mandateOptions: json['mandate_options'],
      network: json['network'],
      requestThreeDSecure: json['request_three_d_secure'] as String,
    );

Map<String, dynamic> _$CardOptionsModelToJson(CardOptionsModel instance) =>
    <String, dynamic>{
      'installments': instance.installments,
      'mandate_options': instance.mandateOptions,
      'network': instance.network,
      'request_three_d_secure': instance.requestThreeDSecure,
    };
