// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_generative_ai_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoogleGenerativeAiStateImpl _$$GoogleGenerativeAiStateImplFromJson(
        Map<String, dynamic> json) =>
    _$GoogleGenerativeAiStateImpl(
      generativeChats: (json['generativeChats'] as List<dynamic>?)
              ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GoogleGenerativeAiStateImplToJson(
        _$GoogleGenerativeAiStateImpl instance) =>
    <String, dynamic>{
      'generativeChats': instance.generativeChats,
    };
