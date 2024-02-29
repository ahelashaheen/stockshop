// ignore_for_file: must_be_immutable

part of 'home_bloc.dart';

enum ScreenStatus {
  init,
  loading,
  brandsSuccess,
  brandsError,
  categoriesSuccess,
  categoriesError,
  offfersSuccess,
  offersError,
}

@immutable
class HomeState {
  ScreenStatus? status;
  List<DataEntity>? brands;
  List<DataEntity>? categories;
  List<DataEntity>? offers;

  Failures? failures;

  HomeState(
      {this.status, this.brands, this.categories, this.offers, this.failures});

  HomeState copWith(
      {ScreenStatus? status,
      List<DataEntity>? brands,
      List<DataEntity>? categories,
      List<DataEntity>? offers,
      Failures? failures}) {
    return HomeState(
      failures: failures ?? this.failures,
      status: status ?? this.status,
      brands: brands ?? this.brands,
      categories: categories ?? this.categories,
      offers: offers ?? this.offers,
    );
  }
}

class HomeInitial extends HomeState {
  HomeInitial() : super(status: ScreenStatus.init);
}
