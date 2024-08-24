import 'package:freezed_annotation/freezed_annotation.dart';

part 'generative_chat.freezed.dart';
part 'generative_chat.g.dart';

//ignore_for_file: invalid_annotation_target
@freezed
class GenerativeChatModel with _$GenerativeChatModel {
  const factory GenerativeChatModel({
    @JsonKey(name: 'id')
    required String id,
    @JsonKey(name: 'text')
    required String message,
    required String type,
    required String user,
    @Default(false) bool isLoading,
  }) = _GenerativeChatModel;

  factory GenerativeChatModel.fromJson(Map<String, dynamic> json) => _$GenerativeChatModelFromJson(json);
}