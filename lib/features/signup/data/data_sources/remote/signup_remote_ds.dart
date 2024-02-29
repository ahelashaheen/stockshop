import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../models/UserModel.dart';
import '../../models/request_paramters.dart';

abstract class SignupRemoteDS {
  Future<Either<Failures, UserModel>> signup(RequestParam requestParam);
}
