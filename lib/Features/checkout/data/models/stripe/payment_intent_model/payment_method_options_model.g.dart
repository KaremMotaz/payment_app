// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodOptionsModel _$PaymentMethodOptionsModelFromJson(
  Map<String, dynamic> json,
) => PaymentMethodOptionsModel(
  card: CardOptionsModel.fromJson(json['card'] as Map<String, dynamic>),
  link: LinkOptionsModel.fromJson(json['link'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentMethodOptionsModelToJson(
  PaymentMethodOptionsModel instance,
) => <String, dynamic>{
  'card': instance.card.toJson(),
  'link': instance.link.toJson(),
};
