// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generative_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerativeChatModel _$GenerativeChatModelFromJson(Map<String, dynamic> json) {
  return _GenerativeChatModel.fromJson(json);
}

/// @nodoc
mixin _$GenerativeChatModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String get message => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerativeChatModelCopyWith<GenerativeChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerativeChatModelCopyWith<$Res> {
  factory $GenerativeChatModelCopyWith(
          GenerativeChatModel value, $Res Function(GenerativeChatModel) then) =
      _$GenerativeChatModelCopyWithImpl<$Res, GenerativeChatModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'text') String message,
      String type,
      String user,
      bool isLoading});
}

/// @nodoc
class _$GenerativeChatModelCopyWithImpl<$Res, $Val extends GenerativeChatModel>
    implements $GenerativeChatModelCopyWith<$Res> {
  _$GenerativeChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? type = null,
    Object? user = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerativeChatModelImplCopyWith<$Res>
    implements $GenerativeChatModelCopyWith<$Res> {
  factory _$$GenerativeChatModelImplCopyWith(_$GenerativeChatModelImpl value,
          $Res Function(_$GenerativeChatModelImpl) then) =
      __$$GenerativeChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'text') String message,
      String type,
      String user,
      bool isLoading});
}

/// @nodoc
class __$$GenerativeChatModelImplCopyWithImpl<$Res>
    extends _$GenerativeChatModelCopyWithImpl<$Res, _$GenerativeChatModelImpl>
    implements _$$GenerativeChatModelImplCopyWith<$Res> {
  __$$GenerativeChatModelImplCopyWithImpl(_$GenerativeChatModelImpl _value,
      $Res Function(_$GenerativeChatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? type = null,
    Object? user = null,
    Object? isLoading = null,
  }) {
    return _then(_$GenerativeChatModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerativeChatModelImpl implements _GenerativeChatModel {
  const _$GenerativeChatModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'text') required this.message,
      required this.type,
      required this.user,
      this.isLoading = false});

  factory _$GenerativeChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerativeChatModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'text')
  final String message;
  @override
  final String type;
  @override
  final String user;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'GenerativeChatModel(id: $id, message: $message, type: $type, user: $user, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerativeChatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, message, type, user, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerativeChatModelImplCopyWith<_$GenerativeChatModelImpl> get copyWith =>
      __$$GenerativeChatModelImplCopyWithImpl<_$GenerativeChatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerativeChatModelImplToJson(
      this,
    );
  }
}

abstract class _GenerativeChatModel implements GenerativeChatModel {
  const factory _GenerativeChatModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'text') required final String message,
      required final String type,
      required final String user,
      final bool isLoading}) = _$GenerativeChatModelImpl;

  factory _GenerativeChatModel.fromJson(Map<String, dynamic> json) =
      _$GenerativeChatModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'text')
  String get message;
  @override
  String get type;
  @override
  String get user;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$GenerativeChatModelImplCopyWith<_$GenerativeChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
