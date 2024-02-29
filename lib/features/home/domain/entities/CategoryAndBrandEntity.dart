// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CategoryAndBrandEntity extends Equatable {
  CategoryAndBrandEntity({
    this.results,
    this.data,
  });

  int? results;
  List<DataEntity>? data;

  @override
  // TODO: implement props
  List<Object?> get props => [results, data];
}

class DataEntity extends Equatable {
  DataEntity({
    this.id,
    this.name,
    this.image,
  });

  String? id;
  String? name;
  String? image;

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
