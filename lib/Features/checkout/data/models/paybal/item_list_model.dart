import 'package:json_annotation/json_annotation.dart';
import 'package:payment_app/Features/checkout/data/models/paybal/item_model.dart';

part 'item_list_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ItemListModel {
  final List<ItemModel> items;

  ItemListModel({required this.items});

  factory ItemListModel.fromJson(Map<String, dynamic> json) =>
      _$ItemListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ItemListModelToJson(this);
}
