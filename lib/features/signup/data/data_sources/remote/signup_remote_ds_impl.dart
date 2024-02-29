import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:stockshop/features/signup/data/data_sources/remote/signup_remote_ds.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/endPoints.dart';
import '../../../../../core/errors/failures.dart';
import '../../models/UserModel.dart';
import '../../models/request_paramters.dart';

class SignupRemoteDSImpl implements SignupRemoteDS {
  ApiManager apiManager;

  SignupRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, UserModel>> signup(RequestParam requestParam) async {
    try {
      Response response = await apiManager.postData(EndPoints.signup,
          body: requestParam.toJson());

      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
}
