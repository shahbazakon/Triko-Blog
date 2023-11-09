// ignore_for_file: must_be_immutable

part of 'blog_bloc.dart';

@immutable
abstract class BlogEvent extends Equatable {}

class BlogInitialEvent extends BlogEvent {
  @override
  List<Object?> get props => [];
}
