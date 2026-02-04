// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmountDetailsModel _$AmountDetailsModelFromJson(Map<String, dynamic> json) =>
    AmountDetailsModel(
      subtotal: json['subtotal'] as String,
      shipping: json['shipping'] as String,
      shippingDiscount: json['shipping_discount'] as num,
    );

Map<String, dynamic> _$AmountDetailsModelToJson(AmountDetailsModel instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'shipping': instance.shipping,
      'shipping_discount': instance.shippingDiscount,
    };
