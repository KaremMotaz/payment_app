import 'package:json_annotation/json_annotation.dart';
import 'package:payment_app/Features/checkout/data/models/stripe/create_ephemeral_key_model/associated_object_model.dart';

part 'create_ephemeral_key_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateEphemeralKeyModel {
  final String id;
  final String object;

  @JsonKey(name: 'associated_objects')
  final List<AssociatedObjectModel> associatedObjects;
  final int created;
  final int expires;
  final bool livemode;
  final String secret;

  const CreateEphemeralKeyModel({
    required this.id,
    required this.object,
    required this.associatedObjects,
    required this.created,
    required this.expires,
    required this.livemode,
    required this.secret,
  });

  factory CreateEphemeralKeyModel.fromJson(Map<String, dynamic> json) =>
      _$CreateEphemeralKeyModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateEphemeralKeyModelToJson(this);
}
