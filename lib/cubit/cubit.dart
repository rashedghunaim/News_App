import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/modules/buisness/buisness_screen.dart';
import 'package:news_app/modules/science/science_screen.dart';
import 'package:news_app/modules/sports/sports_screen.dart';
import 'package:news_app/network/dio_helper.dart';

// get API
/// base url => https://newsapi.org/
/// method(url) => v2/top-headlines?
/// query =>  country=eg&category=business&apiKey=65f7f556ec76449fa7dc7c0069f040ca

// search  API
/// base url => https://newsapi.org/
/// method(url) => v2/everything?
/// query =>  q=tesla&apiKey=65f7f556ec76449fa7dc7c0069f040ca

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(InitialState());

  static NewsCubit getNewsCubit(BuildContext context) =>
      BlocProvider.of<NewsCubit>(context);

  final List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];

  final List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: 'business',
      icon: Icon(Icons.business),
    ),
    BottomNavigationBarItem(
      label: 'Sports',
      icon: Icon(Icons.sports),
    ),
    BottomNavigationBarItem(
      label: 'Science',
      icon: Icon(Icons.science),
    ),
  ];

  int currentIndex = 0;

  void toggleNavigationBar(int selectedIndex) {
    currentIndex = selectedIndex;
    emit(NavigationBarState());
  }

  List<dynamic> businessArticles = [];
  List<dynamic> sportsArticles = [];
  List<dynamic> scienceArticles = [];
  List<dynamic> searchResult = [];

  Future<void> getBusinessNews() async {
    emit(LoadingBusinessDataState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'business',
      'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
    }).then((response) {
      businessArticles = response.data!['articles'];
      emit(NewsFetchBusinessDataState());
    }).catchError((error) {
      print(error);
      emit(NewsFetchBusinessErrorState(error.toString()));
    });
  }

  Future<void> getSportsNews() async {
    emit(LoadingSportsDataState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'sports',
      'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
    }).then((response) {
      sportsArticles = response.data!['articles'];
      emit(NewsFetchSportsDataState());
    }).catchError((error) {
      print(error);
      emit(NewsFetchSportsErrorState(error.toString()));
    });
  }

  Future<void> getScienceNews() async {
    emit(LoadingScienceDataState());
    DioHelper.getData(url: 'v2/top-headlines', query: {
      'country': 'eg',
      'category': 'science',
      'apiKey': '65f7f556ec76449fa7dc7c0069f040ca',
    }).then((response) {
      scienceArticles = response.data!['articles'];
      emit(NewsFetchScienceDataState());
    }).catchError((error) {
      print(error);
      emit(NewsFetchScienceErrorState(error.toString()));
    });
  }

  bool isDark = false;

  void changeAppThemeMode({bool? fromShared}) {
    isDark = !isDark;
    emit(ChangeAppThemeModeState());
  }

  void searching({required String keyWord}) {
    emit(SearchLoadingIndicatorState());
    searchResult = [];
    DioHelper.getData(
      url: 'v2/everything',
      query: {'q': '$keyWord', 'apiKey': '65f7f556ec76449fa7dc7c0069f040ca'},
    ).then((response) {
      searchResult = response.data!['articles'];
      print(response.data.toString());
      emit(FetchSearchResultsState());
    }).catchError((error) {
      emit(FetchSearchResultsErrorState());
    });
  }
}
