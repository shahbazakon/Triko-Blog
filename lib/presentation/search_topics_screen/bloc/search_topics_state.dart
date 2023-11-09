// ignore_for_file: must_be_immutable

part of 'search_topics_bloc.dart';

class SearchTopicsState extends Equatable {
  SearchTopicsState({
    this.searchBarController,
    this.searchTopicsModelObj,
  });

  TextEditingController? searchBarController;

  SearchTopicsModel? searchTopicsModelObj;

  @override
  List<Object?> get props => [
        searchBarController,
        searchTopicsModelObj,
      ];
  SearchTopicsState copyWith({
    TextEditingController? searchBarController,
    SearchTopicsModel? searchTopicsModelObj,
  }) {
    return SearchTopicsState(
      searchBarController: searchBarController ?? this.searchBarController,
      searchTopicsModelObj: searchTopicsModelObj ?? this.searchTopicsModelObj,
    );
  }
}
