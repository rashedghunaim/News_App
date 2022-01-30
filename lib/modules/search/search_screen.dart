import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/shared/components.dart';

class SearchScreen extends StatelessWidget {
  static final routeName = './search_screen';
  final _searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          List<dynamic> search = NewsCubit.getNewsCubit(context).searchResult;
          return Column(
            children: [
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: defaultFormField(
                      controller: _searchController,
                      validateFunction: (value) {
                        if (value!.isEmpty) {
                          return 'pls enter value ';
                        } else {
                          return null;
                        }
                      },
                      label: 'search',
                      prefixIcon: Icons.search,
                      inputType: TextInputType.text,
                      onChanged: (String keyWord) {
                        NewsCubit.getNewsCubit(context)
                            .searching(keyWord: keyWord);
                      }),
                ),
              ),
              articleBuilder(articles: search, context: context, state: state),
            ],
          );
        },
      ),
    );
  }
}
