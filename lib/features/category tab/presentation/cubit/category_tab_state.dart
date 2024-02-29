part of 'category_tab_cubit.dart';

abstract class CategoryTabState extends Equatable {
  const CategoryTabState();

  @override
  List<Object> get props => [];
}

class CategoryTabInitial extends CategoryTabState {}

class CategoryFavoriteState extends CategoryTabState {}
