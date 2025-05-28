import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justlearn/data/model/languages/language_list_model.dart';
import 'package:justlearn/data/repositories/repositories_barrel.dart';
part 'languages_event.dart';
part 'languages_state.dart';

class LanguagesBloc extends Bloc<LanguagesEvent, LanguagesState> {
  LanguagesBloc() : super(LanguagesState()) {
    on<LanguagesFetched>(_fetchedLanguages);
  }

  final LanguageRepository languageRepository = LanguageRepository();

  Future<void> _fetchedLanguages(
    LanguagesFetched event,
    Emitter<LanguagesState> emit,
  ) async {
    final languages = await languageRepository.getLanguages();
    emit(state.copyWith(languages: languages));
  }
}
