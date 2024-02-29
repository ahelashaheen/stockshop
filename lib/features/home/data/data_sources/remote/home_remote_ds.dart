import 'package:dartz/dartz.dart';
import 'package:stockshop/core/errors/failures.dart';

import '../../models/CategoryAndBrandModel.dart';

abstract class HomeRemoteDS {
  Future<Either<Failures, CategoryAndBrandModel>> getBrands();

  Future<Either<Failures, CategoryAndBrandModel>> getCategories();

  Future<Either<Failures, CategoryAndBrandModel>> getOffers();
}
