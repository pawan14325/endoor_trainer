import 'package:dio/dio.dart';
import 'package:endo_trainer/core/app_logger.dart';
import 'package:endo_trainer/data/endpoints.dart';
import 'package:endo_trainer/data/models/request_models/login_model.dart';

import '../../domain/network_services/dio_client/dio_client.dart';

class LoginRepository {
  final DioClient _dioClient = DioClient();

  Future<LoginModel> loginUser(Map<String, dynamic> request) async {
    try {
      logMessage(msg: "Login request data => $request", level: LogLevel.info);
      var response = await _dioClient.post(
        AppEndpoints.login,
        data: request,
      );
      logMessage(msg: "Login Call Success ${response}", level: LogLevel.debug);
      return LoginModel.fromJson(response.data);
    } catch (e) {
      logMessage(msg: "Login Call Error", level: LogLevel.error);
      if (e is DioException) {
         if (e.response != null) {
           String errorMessage = e.response?.data['message'] ?? 'Something went wrong';
          throw Exception(errorMessage);
        } else {
           throw Exception('Network error, please try again later.');
        }
      } else {
        throw Exception('Unexpected error');
      }
    }
  }
}
