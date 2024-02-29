import 'package:dio/dio.dart';
import 'package:stockshop/core/utils/constants.dart';

class ApiManager {
  Dio dio = Dio();

  Future<Response> getData(String endPoint, {Map<String, dynamic>? data}) {
    return dio.get(Constants.basURl + endPoint, queryParameters: data);
  }

  Future<Response> postData(String endPoint, {Map<String, dynamic>? body}) {
    return dio.post(Constants.basURl + endPoint, data: body);
  }
}
