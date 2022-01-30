abstract class NewsStates {}

class InitialState extends NewsStates {}

class NavigationBarState extends NewsStates {}

class LoadingBusinessDataState extends NewsStates {}

class NewsFetchBusinessDataState extends NewsStates {}

class NewsFetchBusinessErrorState extends NewsStates {
  final String error;

  NewsFetchBusinessErrorState(this.error);
}

class LoadingSportsDataState extends NewsStates {}
class NewsFetchSportsDataState extends NewsStates {}
class NewsFetchSportsErrorState extends NewsStates {
  final String error;
  NewsFetchSportsErrorState(this.error);
}

class LoadingScienceDataState extends NewsStates {}
class NewsFetchScienceDataState extends NewsStates {}
class NewsFetchScienceErrorState extends NewsStates {
  final String error;
  NewsFetchScienceErrorState(this.error);
}



class ChangeAppThemeModeState extends NewsStates {}




class SearchLoadingIndicatorState extends NewsStates {}
class FetchSearchResultsState extends NewsStates {}
class FetchSearchResultsErrorState extends NewsStates {}
