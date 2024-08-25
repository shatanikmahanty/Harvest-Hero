// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CropModelImpl _$$CropModelImplFromJson(Map<String, dynamic> json) =>
    _$CropModelImpl(
      harvestDate: DateTime.parse(json['expected_harvest_date'] as String),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      sowedOn: DateTime.parse(json['sowedOn'] as String),
    );

Map<String, dynamic> _$$CropModelImplToJson(_$CropModelImpl instance) =>
    <String, dynamic>{
      'expected_harvest_date': instance.harvestDate.toIso8601String(),
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'sowedOn': instance.sowedOn.toIso8601String(),
    };
