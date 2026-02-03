import 'package:json_annotation/json_annotation.dart';

part 'create_customer_input_model.g.dart';

@JsonSerializable()
class CreateCustomerInputModel {
  final String name;
  final String email;

  const CreateCustomerInputModel({required this.name, required this.email});

  factory CreateCustomerInputModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerInputModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCustomerInputModelToJson(this);
}
