// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_generative_ai_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoogleGenerativeAiState _$GoogleGenerativeAiStateFromJson(
    Map<String, dynamic> json) {
  return _GoogleGenerativeAiState.fromJson(json);
}

/// @nodoc
mixin _$GoogleGenerativeAiState {
  List<Message> get generativeChats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoogleGenerativeAiStateCopyWith<GoogleGenerativeAiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleGenerativeAiStateCopyWith<$Res> {
  factory $GoogleGenerativeAiStateCopyWith(GoogleGenerativeAiState value,
          $Res Function(GoogleGenerativeAiState) then) =
      _$GoogleGenerativeAiStateCopyWithImpl<$Res, GoogleGenerativeAiState>;
  @useResult
  $Res call({List<Message> generativeChats});
}

/// @nodoc
class _$GoogleGenerativeAiStateCopyWithImpl<$Res,
        $Val extends GoogleGenerativeAiState>
    implements $GoogleGenerativeAiStateCopyWith<$Res> {
  _$GoogleGenerativeAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generativeChats = null,
  }) {
    return _then(_value.copyWith(
      generativeChats: null == generativeChats
          ? _value.generativeChats
          : generativeChats // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleGenerativeAiStateImplCopyWith<$Res>
    implements $GoogleGenerativeAiStateCopyWith<$Res> {
  factory _$$GoogleGenerativeAiStateImplCopyWith(
          _$GoogleGenerativeAiStateImpl value,
          $Res Function(_$GoogleGenerativeAiStateImpl) then) =
      __$$GoogleGenerativeAiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> generativeChats});
}

/// @nodoc
class __$$GoogleGenerativeAiStateImplCopyWithImpl<$Res>
    extends _$GoogleGenerativeAiStateCopyWithImpl<$Res,
        _$GoogleGenerativeAiStateImpl>
    implements _$$GoogleGenerativeAiStateImplCopyWith<$Res> {
  __$$GoogleGenerativeAiStateImplCopyWithImpl(
      _$GoogleGenerativeAiStateImpl _value,
      $Res Function(_$GoogleGenerativeAiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generativeChats = null,
  }) {
    return _then(_$GoogleGenerativeAiStateImpl(
      generativeChats: null == generativeChats
          ? _value._generativeChats
          : generativeChats // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoogleGenerativeAiStateImpl implements _GoogleGenerativeAiState {
  const _$GoogleGenerativeAiStateImpl(
      {final List<Message> generativeChats = const []})
      : _generativeChats = generativeChats;

  factory _$GoogleGenerativeAiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleGenerativeAiStateImplFromJson(json);

  final List<Message> _generativeChats;
  @override
  @JsonKey()
  List<Message> get generativeChats {
    if (_generativeChats is EqualUnmodifiableListView) return _generativeChats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generativeChats);
  }

  @override
  String toString() {
    return 'GoogleGenerativeAiState(generativeChats: $generativeChats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleGenerativeAiStateImpl &&
            const DeepCollectionEquality()
                .equals(other._generativeChats, _generativeChats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_generativeChats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleGenerativeAiStateImplCopyWith<_$GoogleGenerativeAiStateImpl>
      get copyWith => __$$GoogleGenerativeAiStateImplCopyWithImpl<
          _$GoogleGenerativeAiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleGenerativeAiStateImplToJson(
      this,
    );
  }
}

abstract class _GoogleGenerativeAiState implements GoogleGenerativeAiState {
  const factory _GoogleGenerativeAiState(
      {final List<Message> generativeChats}) = _$GoogleGenerativeAiStateImpl;

  factory _GoogleGenerativeAiState.fromJson(Map<String, dynamic> json) =
      _$GoogleGenerativeAiStateImpl.fromJson;

  @override
  List<Message> get generativeChats;
  @override
  @JsonKey(ignore: true)
  _$$GoogleGenerativeAiStateImplCopyWith<_$GoogleGenerativeAiStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
