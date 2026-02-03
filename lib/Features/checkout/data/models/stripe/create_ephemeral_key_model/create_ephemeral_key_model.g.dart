// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ephemeral_key_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateEphemeralKeyModel _$CreateEphemeralKeyModelFromJson(
  Map<String, dynamic> json,
) => CreateEphemeralKeyModel(
  id: json['id'] as String,
  object: json['object'] as String,
  associatedObjects: (json['associated_objects'] as List<dynamic>)
      .map((e) => AssociatedObjectModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  created: (json['created'] as num).toInt(),
  expires: (json['expires'] as num).toInt(),
  livemode: json['livemode'] as bool,
  secret: json['secret'] as String,
);

Map<String, dynamic> _$CreateEphemeralKeyModelToJson(
  CreateEphemeralKeyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'object': instance.object,
  'associated_objects': instance.associatedObjects
      .map((e) => e.toJson())
      .toList(),
  'created': instance.created,
  'expires': instance.expires,
  'livemode': instance.livemode,
  'secret': instance.secret,
};
