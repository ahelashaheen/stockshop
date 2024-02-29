import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/request_paramters.dart';
import '../entities/UserEntity.dart';

abstract class SignupRepo {
  Future<Either<Failures, UserEntity>> signUp(RequestParam requestParam);
}
