import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/CategoryAndBrandEntity.dart';

abstract class HomeRepo {
  Future<Either<Failures, CategoryAndBrandEntity>> getCategories();

  Future<Either<Failures, CategoryAndBrandEntity>> getBrands();

  Future<Either<Failures, CategoryAndBrandEntity>> getOffers();
}
