import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_additional_info_model.freezed.dart';
part 'character_additional_info_model.g.dart';

@freezed
class CharacterAdditionalInfoModel with _$CharacterAdditionalInfoModel {
  const factory CharacterAdditionalInfoModel({
    required String name,
    required String url,
  }) = _CharacterAdditionalInfoModel;

  factory CharacterAdditionalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterAdditionalInfoModelFromJson(json);
}
