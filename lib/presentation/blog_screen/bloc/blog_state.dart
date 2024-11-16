// ignore_for_file: must_be_immutable

part of 'blog_bloc.dart';

class BlogState extends Equatable {
  BlogState({this.blogModelObj});

  BlogModel? blogModelObj;

  @override
  List<Object?> get props => [
        blogModelObj,
      ];
  BlogState copyWith({BlogModel? blogModelObj}) {
    return BlogState(
      blogModelObj: blogModelObj ?? this.blogModelObj,
    );
  }
}
