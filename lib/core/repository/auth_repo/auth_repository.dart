import 'package:aurora/core/client/api_client.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/model/login_resposnse_model.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/verification_state_model.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/models/work_state_response_model.dart';
import 'package:retrofit/dio.dart';

class AuthRepository {
  AuthRepository({required this.apiClient});
  final ApiClient apiClient;

  Future<HttpResponse<WorkStateResponseModel?>> checkAvilability(
    String dbName,
  ) => apiClient.checkDataBase(dbName: dbName);
  Future<HttpResponse<VerificationStateModel?>> checkuserAvilability(
    String iduser,
  ) => apiClient.userAvailability(userid: iduser);
  Future<HttpResponse<LoginResponseModel?>> login(
    String dbName,
    String userName,
    String password,
  ) => apiClient.login(dbName: dbName, password: password, username: userName);

  Future<dynamic> updateUsers(Map<String, dynamic> data) =>
      apiClient.updateUser(data: data);
}
