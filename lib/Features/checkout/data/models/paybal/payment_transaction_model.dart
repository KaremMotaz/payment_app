import 'package:json_annotation/json_annotation.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/amount_model.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/item_list_model.dart';

part 'payment_transaction_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentTransactionModel {
  final AmountModel amount;
  final String description;

  @JsonKey(name: 'item_list')
  final ItemListModel itemList;

  PaymentTransactionModel({
    required this.amount,
    required this.description,
    required this.itemList,
  });

  factory PaymentTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentTransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentTransactionModelToJson(this);
}
