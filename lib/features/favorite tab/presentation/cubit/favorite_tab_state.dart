part of 'favorite_tab_cubit.dart';

abstract class FavoriteTabState extends Equatable {
  const FavoriteTabState();

  @override
  List<Object> get props => [];
}

class FavoriteTabInitial extends FavoriteTabState {}

class FavoriteTabMakeFavorite extends FavoriteTabState {}
