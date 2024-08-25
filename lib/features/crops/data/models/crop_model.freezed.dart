// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CropModel _$CropModelFromJson(Map<String, dynamic> json) {
  return _CropModel.fromJson(json);
}

/// @nodoc
mixin _$CropModel {
  @JsonKey(name: 'expected_harvest_date')
  DateTime get harvestDate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  DateTime get sowedOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CropModelCopyWith<CropModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropModelCopyWith<$Res> {
  factory $CropModelCopyWith(CropModel value, $Res Function(CropModel) then) =
      _$CropModelCopyWithImpl<$Res, CropModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'expected_harvest_date') DateTime harvestDate,
      String name,
      double price,
      int quantity,
      DateTime sowedOn});
}

/// @nodoc
class _$CropModelCopyWithImpl<$Res, $Val extends CropModel>
    implements $CropModelCopyWith<$Res> {
  _$CropModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? harvestDate = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? sowedOn = null,
  }) {
    return _then(_value.copyWith(
      harvestDate: null == harvestDate
          ? _value.harvestDate
          : harvestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      sowedOn: null == sowedOn
          ? _value.sowedOn
          : sowedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CropModelImplCopyWith<$Res>
    implements $CropModelCopyWith<$Res> {
  factory _$$CropModelImplCopyWith(
          _$CropModelImpl value, $Res Function(_$CropModelImpl) then) =
      __$$CropModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'expected_harvest_date') DateTime harvestDate,
      String name,
      double price,
      int quantity,
      DateTime sowedOn});
}

/// @nodoc
class __$$CropModelImplCopyWithImpl<$Res>
    extends _$CropModelCopyWithImpl<$Res, _$CropModelImpl>
    implements _$$CropModelImplCopyWith<$Res> {
  __$$CropModelImplCopyWithImpl(
      _$CropModelImpl _value, $Res Function(_$CropModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? harvestDate = null,
    Object? name = null,
    Object? price = null,
    Object? quantity = null,
    Object? sowedOn = null,
  }) {
    return _then(_$CropModelImpl(
      harvestDate: null == harvestDate
          ? _value.harvestDate
          : harvestDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      sowedOn: null == sowedOn
          ? _value.sowedOn
          : sowedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CropModelImpl implements _CropModel {
  const _$CropModelImpl(
      {@JsonKey(name: 'expected_harvest_date') required this.harvestDate,
      required this.name,
      required this.price,
      required this.quantity,
      required this.sowedOn});

  factory _$CropModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropModelImplFromJson(json);

  @override
  @JsonKey(name: 'expected_harvest_date')
  final DateTime harvestDate;
  @override
  final String name;
  @override
  final double price;
  @override
  final int quantity;
  @override
  final DateTime sowedOn;

  @override
  String toString() {
    return 'CropModel(harvestDate: $harvestDate, name: $name, price: $price, quantity: $quantity, sowedOn: $sowedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropModelImpl &&
            (identical(other.harvestDate, harvestDate) ||
                other.harvestDate == harvestDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sowedOn, sowedOn) || other.sowedOn == sowedOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, harvestDate, name, price, quantity, sowedOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CropModelImplCopyWith<_$CropModelImpl> get copyWith =>
      __$$CropModelImplCopyWithImpl<_$CropModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CropModelImplToJson(
      this,
    );
  }
}

abstract class _CropModel implements CropModel {
  const factory _CropModel(
      {@JsonKey(name: 'expected_harvest_date')
      required final DateTime harvestDate,
      required final String name,
      required final double price,
      required final int quantity,
      required final DateTime sowedOn}) = _$CropModelImpl;

  factory _CropModel.fromJson(Map<String, dynamic> json) =
      _$CropModelImpl.fromJson;

  @override
  @JsonKey(name: 'expected_harvest_date')
  DateTime get harvestDate;
  @override
  String get name;
  @override
  double get price;
  @override
  int get quantity;
  @override
  DateTime get sowedOn;
  @override
  @JsonKey(ignore: true)
  _$$CropModelImplCopyWith<_$CropModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
