// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crops_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CropsStateImpl _$$CropsStateImplFromJson(Map<String, dynamic> json) =>
    _$CropsStateImpl(
      crops: (json['crops'] as List<dynamic>?)
              ?.map((e) => CropModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      quantityUnit: json['quantityUnit'] as String?,
    );

Map<String, dynamic> _$$CropsStateImplToJson(_$CropsStateImpl instance) =>
    <String, dynamic>{
      'crops': instance.crops,
      'isLoading': instance.isLoading,
      'quantityUnit': instance.quantityUnit,
    };
