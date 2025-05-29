import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justlearn/blocs/bloc_barrel.dart';
import 'package:justlearn/data/model/languages/language_list_model.dart';
import 'package:justlearn/routing/app_router_names.dart';

class SelectLanguageScreen extends StatelessWidget {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/images/logo/justlearn.png'),
                    width: MediaQuery.of(context).size.width * .5,
                  ),
                ),
              ),
              Text(
                'I want to learn...',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              BlocBuilder<LanguagesBloc, LanguagesState>(
                builder: (context, state) {
                  return Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 30.0),
                      shrinkWrap: true,
                      itemCount: state.languages?.length,
                      itemBuilder: (context, index) {
                        LanguageModel? language = state.languages?[index];
                        return GestureDetector(
                          onTap: () {
                            //add bloc event for filtering tutors per language
                            Navigator.pushNamed(context, RouteNames.menu);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                child: ListTile(
                                  title: Text('${language?.isoName}'),
                                  trailing: Icon(Icons.keyboard_arrow_right),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
