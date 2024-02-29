import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/CategoryAndBrandEntity.dart';
import '../repositories/home_repo.dart';

class GetOffersUseCase {
  HomeRepo repo;

  GetOffersUseCase(this.repo);

  Future<Either<Failures, CategoryAndBrandEntity>> call() => repo.getOffers();
}
