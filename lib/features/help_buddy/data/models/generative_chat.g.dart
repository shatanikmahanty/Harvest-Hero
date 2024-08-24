// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generative_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerativeChatModelImpl _$$GenerativeChatModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerativeChatModelImpl(
      id: json['id'] as String,
      message: json['text'] as String,
      type: json['type'] as String,
      user: json['user'] as String,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$GenerativeChatModelImplToJson(
        _$GenerativeChatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.message,
      'type': instance.type,
      'user': instance.user,
      'isLoading': instance.isLoading,
    };
