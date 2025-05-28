part of 'languages_bloc.dart';

class LanguagesState extends Equatable {
  final List<LanguageModel>? languages;

  const LanguagesState({
    this.languages,
  });

  LanguagesState copyWith({
    List<LanguageModel>? languages,
  }) {
    return LanguagesState(languages: languages ?? this.languages);
  }

  @override
  List<Object?> get props => [
        languages,
      ];
}
