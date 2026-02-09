extension StringExtensions on String {
  String get capitalize =>
      isEmpty ? this : this[0].toUpperCase() + substring(1);

  String get toTitleCase => split(' ').map((word) => word.capitalize).join(' ');

  bool get isNullOrEmpty => trim().isEmpty;

  String get normalizeLanguage {
    const languageMap = {
      'kt': 'kotlin',
      'py': 'python',
      'js': 'javascript',
      'ts': 'typescript',
      'cpp': 'c++',
      'cs': 'csharp',
      'java': 'java',
      'dart': 'dart',
    };

    return languageMap[this] ?? this;
  }
}
