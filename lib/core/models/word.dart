class Word {
  final String english;
  final String phonetic;
  final String chinese;
  final String partOfSpeech;
  final List<Map<String, String>> examples;

  // 复习数据
  double interval = 1.0;
  int repetitions = 0;
  double easeFactor = 2.5;
  DateTime dueDate = DateTime.now();
  bool isFavorite = false;
  bool isDifficult = false;

  Word({
    required this.english,
    required this.phonetic,
    required this.chinese,
    required this.partOfSpeech,
    this.examples = const [],
  });

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      english: json['english'],
      phonetic: json['phonetic'] ?? '',
      chinese: json['chinese'],
      partOfSpeech: json['partOfSpeech'] ?? '',
      examples: List<Map<String, String>>.from(
        (json['examples'] ?? []).map((e) => Map<String, String>.from(e))
      ),
    );
  }
}
