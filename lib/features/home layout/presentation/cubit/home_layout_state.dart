part of 'home_layout_cubit.dart';

abstract class HomeLayoutState extends Equatable {
  const HomeLayoutState();

  @override
  List<Object> get props => [];
}

class HomeLayoutInitial extends HomeLayoutState {}

class HomeLayoutStartState extends HomeLayoutState {}

class HomeLayoutdisposeState extends HomeLayoutState {}

class HomeLayoutChangeTabState extends HomeLayoutState {}
