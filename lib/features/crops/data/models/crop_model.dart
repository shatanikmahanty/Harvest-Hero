import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crop_model.freezed.dart';

part 'crop_model.g.dart';

DateTime _timestampToDateTime(Timestamp timestamp) => timestamp.toDate();

//ignore_for_file: invalid_annotation_target
@freezed
class CropModel with _$CropModel {
  const factory CropModel({
    @JsonKey(
      name: 'expected_harvest_date',
      fromJson: _timestampToDateTime,
    )
    required DateTime harvestDate,
    required String name,
    required double price,
    required int quantity,
    @Default('units') @JsonKey(name: 'quantity_unit') String quantityUnit,
    @JsonKey(
      name: 'sowed_on',
      fromJson: _timestampToDateTime,
    )
    required DateTime sowedOn,
  }) = _CropModel;

  factory CropModel.fromJson(Map<String, dynamic> json) =>
      _$CropModelFromJson(json);
}
