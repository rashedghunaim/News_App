import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/network/dio_helper.dart';
import 'cubit/block_observer.dart';
import 'layout/news_layout.dart';
import 'modules/search/search_screen.dart';
import 'modules/web_view/web_view_screen.dart';

void main() {
  bool isDark = false;
  BlocOverrides.runZoned(
    () {
      DioHelper.init();

      runApp(AppRoot());
    },
    blocObserver: MyBlocObserver(),
  );
}

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NewsCubit()
            ..getBusinessNews()
            ..getSportsNews()
            ..getScienceNews(),
        ),
        // BlocProvider(
        //   create: (context) => NewsCubit()
        //     ..getBusinessNews()
        //     ..getSportsNews()
        //     ..getScienceNews(),
        // ),
      ],
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              titleSpacing: 20.0,
              backgroundColor: Colors.white,
              elevation: 0.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
              ),
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              iconTheme: IconThemeData(
                color: Colors.black45,
              ),
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.deepOrange,
              elevation: 20.0,
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Colors.deepOrange),
            textTheme: TextTheme(
              bodyText1: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          darkTheme: ThemeData(
            primarySwatch: Colors.deepOrange,
            scaffoldBackgroundColor: Color(0xFF333739),
            appBarTheme: AppBarTheme(
              titleSpacing: 20.0,
              backgroundColor: Color(0xFF333739),
              elevation: 0.0,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color(0xFF333739),
                statusBarIconBrightness: Brightness.light,
              ),
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.deepOrange,
              elevation: 20.0,
              backgroundColor: Color(0xFF333739),
            ),
            textTheme: TextTheme(
              bodyText1: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),
          themeMode: NewsCubit.getNewsCubit(context).isDark
              ? ThemeMode.dark
              : ThemeMode.light,
          // ThemeMode.Light is the default for the Theme that we have already initialized up.
          home: NewsLayout(),
          routes: {
            SearchScreen.routeName: (context) => SearchScreen(),
            WebViewScreen.routeName: (context) => WebViewScreen(),
          },
        ),
      ),
    );
  }
}
