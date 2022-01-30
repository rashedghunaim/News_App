import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/modules/search/search_screen.dart';
import 'package:news_app/network/shared_pref.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (BuildContext context, NewsStates state) {},
      builder: (BuildContext context, NewsStates state) {
        final newsCubit = NewsCubit.getNewsCubit(context);
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SearchScreen.routeName);
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  newsCubit.changeAppThemeMode();
                },
                icon: Icon(Icons.brightness_4_outlined),
              ),
            ],
            title: Text('News App'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: newsCubit.currentIndex,
            onTap: (selectedIndex) {
              newsCubit.toggleNavigationBar(selectedIndex);
            },
            items: newsCubit.bottomItems,
          ),
          body: newsCubit.screens[newsCubit.currentIndex],
        );
      },
    );
  }
}
