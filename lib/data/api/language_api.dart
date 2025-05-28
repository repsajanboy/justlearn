import 'dart:convert';

import 'package:flutter/services.dart';

class LanguageApi {
  Future<dynamic> getLanguages() async {
    final languages = await rootBundle.loadString('assets/json/languages.json');
    return json.decode(languages);
  }
}