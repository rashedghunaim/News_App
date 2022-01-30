import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/shared/components.dart';

class SportsScreen extends StatelessWidget {

  // @override
  // void initState() {
  //   NewsCubit.getNewsCubit(context).getSportsNews();
  //   super.initState();
  // }
  /// we can fetch data here in initState() so when the screen is built everyTime  . or at the begging when the app starts  .

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        List<dynamic> sportsArticles =
            NewsCubit.getNewsCubit(context).sportsArticles;
        return articleBuilder(
          context: context,
          articles: sportsArticles,
          state: state,
        );
      },
    );
  }
}
