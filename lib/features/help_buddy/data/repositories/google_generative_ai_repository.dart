// final model = GenerativeModel(
//   model: 'gemini-1.5-flash-latest',
//   apiKey: apiKey,
// );
//
// final prompt = 'Write a story about a magic backpack.';
// final content = [Content.text(prompt)];
// final response = await model.generateContent(content);
//
// print(response.text);
import 'dart:io';

import 'package:google_generative_ai/google_generative_ai.dart';

import 'base_generative_ai_repository.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class GoogleGenerativeAiRepository
    extends BaseGenerativeAiRepository<GenerateContentResponse> {
  final model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: dotenv.env['GEMINI_KEY'] ?? '',
  );

  @override
  Future<GenerateContentResponse> generateFromFile({
    required File file,
    required FileType passedFileType,
    required ContentType type,
  }) async {
    final content = [Content.data("image/jpeg", file.readAsBytesSync())];
    final response = await model.generateContent(content);
    return response;
  }

  @override
  Future<GenerateContentResponse> generateFromPrompt({
    required String text,
    required ContentType type,
  }) async {
    final content = [Content.text(text)];
    final response = await model.generateContent(content);
    return response;
  }

  Future<GenerateContentResponse> generateFromParts({
    required List<Part> parts,
    required ContentType type,
  }) async {
    final content = [
      Content.multi(parts),
    ];
    final response = await model.generateContent(content);
    return response;
  }
}
