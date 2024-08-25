// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crops_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CropsState _$CropsStateFromJson(Map<String, dynamic> json) {
  return _CropsState.fromJson(json);
}

/// @nodoc
mixin _$CropsState {
  List<CropModel> get crops => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get quantityUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CropsStateCopyWith<CropsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CropsStateCopyWith<$Res> {
  factory $CropsStateCopyWith(
          CropsState value, $Res Function(CropsState) then) =
      _$CropsStateCopyWithImpl<$Res, CropsState>;
  @useResult
  $Res call({List<CropModel> crops, bool isLoading, String? quantityUnit});
}

/// @nodoc
class _$CropsStateCopyWithImpl<$Res, $Val extends CropsState>
    implements $CropsStateCopyWith<$Res> {
  _$CropsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crops = null,
    Object? isLoading = null,
    Object? quantityUnit = freezed,
  }) {
    return _then(_value.copyWith(
      crops: null == crops
          ? _value.crops
          : crops // ignore: cast_nullable_to_non_nullable
              as List<CropModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quantityUnit: freezed == quantityUnit
          ? _value.quantityUnit
          : quantityUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CropsStateImplCopyWith<$Res>
    implements $CropsStateCopyWith<$Res> {
  factory _$$CropsStateImplCopyWith(
          _$CropsStateImpl value, $Res Function(_$CropsStateImpl) then) =
      __$$CropsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CropModel> crops, bool isLoading, String? quantityUnit});
}

/// @nodoc
class __$$CropsStateImplCopyWithImpl<$Res>
    extends _$CropsStateCopyWithImpl<$Res, _$CropsStateImpl>
    implements _$$CropsStateImplCopyWith<$Res> {
  __$$CropsStateImplCopyWithImpl(
      _$CropsStateImpl _value, $Res Function(_$CropsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crops = null,
    Object? isLoading = null,
    Object? quantityUnit = freezed,
  }) {
    return _then(_$CropsStateImpl(
      crops: null == crops
          ? _value._crops
          : crops // ignore: cast_nullable_to_non_nullable
              as List<CropModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quantityUnit: freezed == quantityUnit
          ? _value.quantityUnit
          : quantityUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CropsStateImpl implements _CropsState {
  const _$CropsStateImpl(
      {final List<CropModel> crops = const [],
      this.isLoading = false,
      this.quantityUnit})
      : _crops = crops;

  factory _$CropsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropsStateImplFromJson(json);

  final List<CropModel> _crops;
  @override
  @JsonKey()
  List<CropModel> get crops {
    if (_crops is EqualUnmodifiableListView) return _crops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crops);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? quantityUnit;

  @override
  String toString() {
    return 'CropsState(crops: $crops, isLoading: $isLoading, quantityUnit: $quantityUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropsStateImpl &&
            const DeepCollectionEquality().equals(other._crops, _crops) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.quantityUnit, quantityUnit) ||
                other.quantityUnit == quantityUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_crops), isLoading, quantityUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CropsStateImplCopyWith<_$CropsStateImpl> get copyWith =>
      __$$CropsStateImplCopyWithImpl<_$CropsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CropsStateImplToJson(
      this,
    );
  }
}

abstract class _CropsState implements CropsState {
  const factory _CropsState(
      {final List<CropModel> crops,
      final bool isLoading,
      final String? quantityUnit}) = _$CropsStateImpl;

  factory _CropsState.fromJson(Map<String, dynamic> json) =
      _$CropsStateImpl.fromJson;

  @override
  List<CropModel> get crops;
  @override
  bool get isLoading;
  @override
  String? get quantityUnit;
  @override
  @JsonKey(ignore: true)
  _$$CropsStateImplCopyWith<_$CropsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
