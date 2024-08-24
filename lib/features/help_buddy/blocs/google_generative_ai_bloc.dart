import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:harvest_hero/features/help_buddy/help_buddy.dart';
import 'package:uuid/uuid.dart';

part 'google_generative_ai_bloc.freezed.dart';

part 'google_generative_ai_bloc.g.dart';

@freezed
class GoogleGenerativeAiState with _$GoogleGenerativeAiState {
  const factory GoogleGenerativeAiState({
    @Default([]) List<Message> generativeChats,
  }) = _GoogleGenerativeAiState;

  factory GoogleGenerativeAiState.fromJson(Map<String, dynamic> json) =>
      _$GoogleGenerativeAiStateFromJson(json);
}

class GoogleGenerativeAiBloc extends Cubit<GoogleGenerativeAiState> {
  GoogleGenerativeAiBloc({required this.generativeAiRepository})
      : super(
          const GoogleGenerativeAiState(
            generativeChats: [],
          ),
        );

  final GoogleGenerativeAiRepository generativeAiRepository;
  final _user = const User(
    id: "user",
  );
  final _gemini = const User(
    id: "gemini",
    imageUrl: 'https://i.imgur.com/U0l6Ygp.png',
  );

  void submitPrompt(String text) async {
    List<Message> previousChatList =
        List<TextMessage>.from(state.generativeChats);
    previousChatList.insert(
      0,
      TextMessage(
        text: text,
        author: _user,
        id: const Uuid().v1(),
      ),
    );

    emit(
      state.copyWith(
        generativeChats: previousChatList,
      ),
    );
    final response = await generativeAiRepository.generateFromPrompt(
      text: text,
      type: ContentType.text,
    );

    previousChatList = List<Message>.from(state.generativeChats);
    previousChatList.insert(
      0,
      TextMessage(
        id: const Uuid().v1(),
        text: response.text ?? "Couldn't generate",
        author: _gemini,
      ),
    );

    emit(
      state.copyWith(
        generativeChats: List<Message>.from(previousChatList),
      ),
    );
  }
}
