import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justlearn/blocs/bloc_barrel.dart';
import 'package:justlearn/data/repositories/repositories_barrel.dart';
import 'package:justlearn/routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.router});

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LanguageRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LanguagesBloc()..add(LanguagesFetched()),
          ),
        ],
        child: MaterialApp(
          title: 'Online Tutor App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: router.onGenerateRoute,
        ),
      ),
    );
  }
}
