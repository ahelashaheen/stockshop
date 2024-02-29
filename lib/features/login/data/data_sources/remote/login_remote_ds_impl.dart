import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/api/api_manager.dart';
import '../../../../../core/api/endPoints.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../signup/data/models/UserModel.dart';
import 'login_remote_ds.dart';

class LoginRemoteDSImpl implements LoginRemoteDS {
  ApiManager apiManager;

  LoginRemoteDSImpl(this.apiManager);

  @override
  Future<Either<Failures, UserModel>> login(
      String email, String password) async {
    try {
      Response response = await apiManager.postData(EndPoints.login,
          body: {"email": email, "password": password});

      UserModel userModel = UserModel.fromJson(response.data);
      return Right(userModel);
    } catch (e) {
      return Left(RemoteFailure(message: e.toString()));
    }
  }
}
