import 'dart:io';

enum ContentType {
  text,
  audio,
  image;
}

enum FileType {
  doc,
  audio,
  image;
}

abstract class BaseGenerativeAiRepository<T> {
  Future<T> generateFromPrompt({
    required String text,
    required ContentType type,
  });

  Future<T> generateFromFile({
    required File file,
    required FileType passedFileType,
    required ContentType type,
  });
}
