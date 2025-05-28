class LanguageListModel {
  LanguageListModel({
    this.languages,
  });

  List<LanguageModel>? languages;

  factory LanguageListModel.fromJson(Map<String, dynamic> json) =>
      LanguageListModel(
        languages: List<LanguageModel>.from(
            json['languages'].map((x) => LanguageModel.fromJson(x))),
      );
}

class LanguageModel {
  LanguageModel({
    this.iso,
    this.isoName,
  });

  String? iso;
  String? isoName;

  factory LanguageModel.fromJson(Map<String, dynamic> json) => LanguageModel(
        iso: json['iso'] as String,
        isoName: json['isoName'] as String,
      );
}
