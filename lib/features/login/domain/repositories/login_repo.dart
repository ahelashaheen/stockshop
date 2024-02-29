import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../signup/domain/entities/UserEntity.dart';

abstract class LoginRepo {
  Future<Either<Failures, UserEntity>> login(String email, password);
}
