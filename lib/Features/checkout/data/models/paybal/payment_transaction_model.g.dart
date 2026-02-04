// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTransactionModel _$PaymentTransactionModelFromJson(
  Map<String, dynamic> json,
) => PaymentTransactionModel(
  amount: AmountModel.fromJson(json['amount'] as Map<String, dynamic>),
  description: json['description'] as String,
  itemList: ItemListModel.fromJson(json['item_list'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentTransactionModelToJson(
  PaymentTransactionModel instance,
) => <String, dynamic>{
  'amount': instance.amount.toJson(),
  'description': instance.description,
  'item_list': instance.itemList.toJson(),
};
