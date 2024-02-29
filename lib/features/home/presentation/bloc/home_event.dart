part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class GetBrandsEvent extends HomeEvent {}

class GetCategoriesEvent extends HomeEvent {}

class GetOffersEvent extends HomeEvent {}
