import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_additional_info_model.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel(
      {required int id,
      required String name,
      required String status,
      required String species,
      required CharacterAdditionalInfoModel origin,
      required CharacterAdditionalInfoModel location,
      required List<String> episode,
      @Default("") String type,
      required String gender,
      required String image,
      required String url,
      required String created}) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}
