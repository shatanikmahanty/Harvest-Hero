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
// @JsonKey(
//   includeFromJson: false,
//   includeToJson: false,
// )
// @Default([]) List<Crops> Crops,
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
  $Res call({bool isLoading, String? quantityUnit});
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
    Object? isLoading = null,
    Object? quantityUnit = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({bool isLoading, String? quantityUnit});
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
    Object? isLoading = null,
    Object? quantityUnit = freezed,
  }) {
    return _then(_$CropsStateImpl(
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
  const _$CropsStateImpl({this.isLoading = false, this.quantityUnit});

  factory _$CropsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CropsStateImplFromJson(json);

// @JsonKey(
//   includeFromJson: false,
//   includeToJson: false,
// )
// @Default([]) List<Crops> Crops,
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? quantityUnit;

  @override
  String toString() {
    return 'CropsState(isLoading: $isLoading, quantityUnit: $quantityUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CropsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.quantityUnit, quantityUnit) ||
                other.quantityUnit == quantityUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isLoading, quantityUnit);

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
      {final bool isLoading, final String? quantityUnit}) = _$CropsStateImpl;

  factory _CropsState.fromJson(Map<String, dynamic> json) =
      _$CropsStateImpl.fromJson;

  @override // @JsonKey(
//   includeFromJson: false,
//   includeToJson: false,
// )
// @Default([]) List<Crops> Crops,
  bool get isLoading;
  @override
  String? get quantityUnit;
  @override
  @JsonKey(ignore: true)
  _$$CropsStateImplCopyWith<_$CropsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
