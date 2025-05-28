import 'package:justlearn/data/api/language_api.dart';
import 'package:justlearn/data/model/languages/language_list_model.dart';

class LanguageRepository {
  final LanguageApi languageApi = LanguageApi();

  Future<List<LanguageModel>> getLanguages() async {
    final result = await languageApi.getLanguages() as List;
    return result.map((e) {
      return LanguageModel.fromJson(e);
    }).toList();
  }
}