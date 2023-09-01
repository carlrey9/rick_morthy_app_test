// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterModel _$$_CharacterModelFromJson(Map<String, dynamic> json) =>
    _$_CharacterModel(
      id: json['id'] as int,
      name: json['name'] as String,
      status: json['status'] as String,
      species: json['species'] as String,
      origin: CharacterAdditionalInfoModel.fromJson(
          json['origin'] as Map<String, dynamic>),
      location: CharacterAdditionalInfoModel.fromJson(
          json['location'] as Map<String, dynamic>),
      type: json['type'] as String? ?? "",
      gender: json['gender'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
      created: json['created'] as String,
    );

Map<String, dynamic> _$$_CharacterModelToJson(_$_CharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'origin': instance.origin,
      'location': instance.location,
      'type': instance.type,
      'gender': instance.gender,
      'image': instance.image,
      'url': instance.url,
      'created': instance.created,
    };
