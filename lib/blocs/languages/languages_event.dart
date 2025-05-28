part of 'languages_bloc.dart';

@immutable
sealed class LanguagesEvent {}

class LanguagesFetched extends LanguagesEvent {
  LanguagesFetched();
}