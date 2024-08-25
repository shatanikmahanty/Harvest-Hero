import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_model.freezed.dart';
part 'crop_model.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class CropModel with _$CropModel {
  const factory CropModel({
    @JsonKey(name: 'expected_harvest_date') required DateTime harvestDate,
    required String name,
    required double price,
    required int quantity,
    required DateTime sowedOn,
  }) = _CropModel;

  factory CropModel.fromJson(Map<String, dynamic> json) =>
      _$CropModelFromJson(json);
}
